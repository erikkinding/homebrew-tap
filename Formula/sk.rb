class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.5.0/sk_darwin_arm64.tar.gz"
      sha256 "8855de58696bfc41446b1c6ef2270a4f496677154d23264ef4c8f5025b93213a"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.5.0/sk_darwin_amd64.tar.gz"
      sha256 "1b2206262e3ecd11851ff83f6d82b129f4650d7a932246c165fc10f9a88a0da0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.5.0/sk_linux_amd64.tar.gz"
      sha256 "b0daed209b4f53d7c49d21b3c3ba83dfad67fb5ff12669004e9fe7e2fce6eca1"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
