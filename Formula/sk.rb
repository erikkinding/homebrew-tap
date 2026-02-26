class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.3.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.3.18/sk_darwin_arm64.tar.gz"
      sha256 "e6ab58005fb021e9020ffe94af3e9f749712bb5b558ad6db518c7fc891836fff"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.3.18/sk_darwin_amd64.tar.gz"
      sha256 "5608bbf5aab2a945c60a4ede3e7cd669f94e43bd36753d47c00ec7f5fb726c36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.3.18/sk_linux_amd64.tar.gz"
      sha256 "0db9dfa4cd8c16d17d6c3f16fec070f5276b123311302eb1953375eec73392a1"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
