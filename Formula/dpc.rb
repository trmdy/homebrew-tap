class Dpc < Formula
  desc "Design Parity Checker - Compare implementations against design references"
  homepage "https://github.com/trmdy/design-parity-checker"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/design-parity-checker/releases/download/v#{version}/dpc-aarch64-apple-darwin.tar.gz"
      sha256 "c3b311546a0601bbfc1a404fe69b51a7a07e4b5af04ef88ed32f06e8a4dd7913"
    else
      url "https://github.com/trmdy/design-parity-checker/releases/download/v#{version}/dpc-x86_64-apple-darwin.tar.gz"
      sha256 "45ff0a098a08c07e011abb7a5df4c2a610031d35f3738f7feb05fda94587b624"
    end
  end

  def install
    bin.install "dpc"
  end

  test do
    system "#{bin}/dpc", "--help"
  end
end
