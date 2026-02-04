class Sv < Formula
  desc "Simultaneous Versioning for multi-agent Git workflows"
  homepage "https://github.com/trmdy/sv"
  version "0.1.6"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/sv/releases/download/v#{version}/sv-aarch64-apple-darwin.tar.gz"
      sha256 "218aa6f1866b3789b6ac4816457acc755dee4221e9cdea4e7e5901b815378e6f"
    else
      url "https://github.com/trmdy/sv/releases/download/v#{version}/sv-x86_64-apple-darwin.tar.gz"
      sha256 "bcfc9c022fb2b212681826ff689e2077ee983f1e877e049a140d423f458fc1a2"
    end
  end

  def install
    bin.install "sv"
  end

  test do
    system "#{bin}/sv", "--version"
  end
end
