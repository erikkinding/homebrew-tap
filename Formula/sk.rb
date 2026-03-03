class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.2/sk_darwin_arm64.tar.gz"
      sha256 "5fdd6c71805af7e350e5c477ac45d74f650d3b4d5f0e02e92bc2135edc71b571"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.2/sk_darwin_amd64.tar.gz"
      sha256 "1535db579b25dd7accda518789c66e26e5cd58f488d77ad75379fc42776b652d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.2/sk_linux_amd64.tar.gz"
      sha256 "46b1a4d8cdeea19befee35d8f7aa2e52fc6462d4991be33b1abf100d2d8420f8"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
