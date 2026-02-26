class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.0/sk_darwin_arm64.tar.gz"
      sha256 "e48eaaaf6e1aab982d7c6fd42be21c145464ab0b3c0af30d6a543fd266f97334"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.0/sk_darwin_amd64.tar.gz"
      sha256 "f84545f711a569c370faa808245ce865edc3f8d64a8908e4d22a070ab1bcade8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.0/sk_linux_amd64.tar.gz"
      sha256 "89ec8fd02c3c990d7ffe0cd2be2b97593e2f4b96f0863434768adf309dc39c67"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
