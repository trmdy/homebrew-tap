class Sv < Formula
  desc "Simultaneous Versioning for multi-agent Git workflows"
  homepage "https://github.com/trmdy/sv"
  version "0.2.4"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/sv/releases/download/v#{version}/sv-aarch64-apple-darwin.tar.gz"
      sha256 "f4b46381b9bfb154fb44e8aac268e18ea839e9b60562881eeb851baf157e90e8"
    else
      url "https://github.com/trmdy/sv/releases/download/v#{version}/sv-x86_64-apple-darwin.tar.gz"
      sha256 "a4c094e27349291f9794fdefc4931995e46949862bcecfcfcc1b5bf71db8864f"
    end
  end

  def install
    bin.install "sv"
  end

  test do
    system "#{bin}/sv", "--version"
  end
end
