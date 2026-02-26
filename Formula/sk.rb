class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.1/sk_darwin_arm64.tar.gz"
      sha256 "6a3da167ed409a8f2f75641b90b61e9acec2fdd77003dd06cbcda2dfa6fc14dd"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.1/sk_darwin_amd64.tar.gz"
      sha256 "165e71c3b09d13230cf30594acc3107589d1a0f72f808cf8b1da26f089ea7930"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.1/sk_linux_amd64.tar.gz"
      sha256 "767636e7a35724bc0fa144d7eac2ab87f4c3e0411f0d5ec406d67eb9083d272c"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
