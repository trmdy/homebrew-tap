class Sv < Formula
  desc "Simultaneous Versioning for multi-agent Git workflows"
  homepage "https://github.com/trmdy/sv"
  version "0.2.2"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/sv/releases/download/v#{version}/sv-aarch64-apple-darwin.tar.gz"
      sha256 "124c01bdd0b459cda3d744c7007aa058a1dd669f769bf148fe9eddf64246d6be"
    else
      url "https://github.com/trmdy/sv/releases/download/v#{version}/sv-x86_64-apple-darwin.tar.gz"
      sha256 "d5c9200b8ce6c4b34cb1eefeb1153953653e0daebcdd063973610c43d2110b10"
    end
  end

  def install
    bin.install "sv"
  end

  test do
    system "#{bin}/sv", "--version"
  end
end
