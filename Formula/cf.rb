# typed: false
# frozen_string_literal: true

class Cf < Formula
  desc "Open-source Cloudflare CLI: 38 porcelain products plus every API endpoint"
  homepage "https://github.com/trmdy/cf-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/cf-cli/releases/download/v0.1.0/cf_0.1.0_darwin_arm64.tar.gz"
      sha256 "417a4a4d4713c587ae31b4e0d13185e57cdcdd5d974640e46116446ca2ec58f8"
    else
      url "https://github.com/trmdy/cf-cli/releases/download/v0.1.0/cf_0.1.0_darwin_amd64.tar.gz"
      sha256 "effa393074fa1b3caec69c96098052252e1ac57523e4087c7336f9cf520c9b6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/trmdy/cf-cli/releases/download/v0.1.0/cf_0.1.0_linux_arm64.tar.gz"
      sha256 "983000cec53eaefe39fb32d9d7946661153f11731b9209896dd762eae46fadf2"
    else
      url "https://github.com/trmdy/cf-cli/releases/download/v0.1.0/cf_0.1.0_linux_amd64.tar.gz"
      sha256 "5b520725798be800f35669894c03b53eb2487355838095fefb0f6dbcf778a9a9"
    end
  end

  def install
    bin.install "cf"
    generate_completions_from_executable(bin/"cf", "completion")
  end

  test do
    assert_match "cf 0.1.0", shell_output("#{bin}/cf version")
  end
end
