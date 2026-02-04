class Sv < Formula
  desc "Simultaneous Versioning for multi-agent Git workflows"
  homepage "https://github.com/trmdy/sv"
  version "0.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/sv/releases/download/v#{version}/sv-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/trmdy/sv/releases/download/v#{version}/sv-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "sv"
  end

  test do
    system "#{bin}/sv", "--version"
  end
end
