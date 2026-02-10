class Dpc < Formula
  desc "Design Parity Checker - Compare implementations against design references"
  homepage "https://github.com/trmdy/design-parity-checker"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/design-parity-checker/releases/download/v#{version}/dpc-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_UPDATE_AFTER_RELEASE"
    else
      url "https://github.com/trmdy/design-parity-checker/releases/download/v#{version}/dpc-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_UPDATE_AFTER_RELEASE"
    end
  end

  def install
    bin.install "dpc"
  end

  test do
    system "#{bin}/dpc", "--help"
  end
end

