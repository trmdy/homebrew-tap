class Forge < Formula
  desc "Control plane for running and supervising AI coding agents"
  homepage "https://github.com/trmdy/forge"

  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "REPLACE_ME_ARM_SHA256"
    else
      url "https://github.com/trmdy/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "REPLACE_ME_AMD_SHA256"
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

