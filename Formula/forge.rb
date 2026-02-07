class Forge < Formula
  desc "Control plane for running and supervising AI coding agents"
  homepage "https://github.com/trmdy/forge"

  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/forge/releases/download/v#{version}/forge_#{version}_darwin_arm64.tar.gz"
      sha256 "4f3c360566a36c96f5cc5773aed2f680c9e7fd85e259d02476ce29f17db7ef1c"
    else
      url "https://github.com/trmdy/forge/releases/download/v#{version}/forge_#{version}_darwin_amd64.tar.gz"
      sha256 "f03cc63727ebebb210db35d6a1cf0eede2ef7312b1e539e5f4e6d0aad4b027c1"
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
