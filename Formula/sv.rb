class Sv < Formula
  desc "Simultaneous Versioning for multi-agent Git workflows"
  homepage "https://github.com/trmdy/sv"
  version "0.2.3"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/sv/releases/download/v#{version}/sv-aarch64-apple-darwin.tar.gz"
      sha256 "dbdbe9eafd45a631b87e95635871a666b6a2bdb33a103387ce7abf19271a6c51"
    else
      url "https://github.com/trmdy/sv/releases/download/v#{version}/sv-x86_64-apple-darwin.tar.gz"
      sha256 "a27bb9c8deedbeb7719296985ab16e0bce08794e6ca47f0f207f044751baea15"
    end
  end

  def install
    bin.install "sv"
  end

  test do
    system "#{bin}/sv", "--version"
  end
end
