class Forge < Formula
  desc "Control plane for running and supervising AI coding agents"
  homepage "https://github.com/trmdy/forge"

  version "0.3.0-alpha.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "f53f80cf60d4e63a14b8a1cbe646255812deb6c8093047a0eaebe1e3216f957b"
    else
      url "https://github.com/trmdy/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "52e8c239ab51a241ac0bb1b0ab87ad7a5d4108665d9402fb11d7afe300c2383a"
    end
  end

  def install
    bin.install "forge"
    bin.install "forged"
    bin.install "forge-agent-runner"
    bin.install "fmail"
  end

  test do
    system "#{bin}/forge", "--version"
  end
end
