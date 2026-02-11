class Forge < Formula
  desc "Control plane for running and supervising AI coding agents"
  homepage "https://github.com/trmdy/forge"

  version "0.3.0-alpha.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "578c2abfff59032c1e29382229295a789b967e19af5353de040b3953bcb8a9c9"
    else
      url "https://github.com/trmdy/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "02b592466cd3f20c82ccc8a8bf5198fd2040e9fe2ecffa10d872c0dcd0d951f1"
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
