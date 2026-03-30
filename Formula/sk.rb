class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.4/sk_darwin_arm64.tar.gz"
      sha256 "d95065bdcb92d21b54f50d26038f5bd15fd43571a963e4fa5ab50741f7c35147"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.4/sk_darwin_amd64.tar.gz"
      sha256 "8e8535c7f9ab20d1b03f84d50a5dd05bd0339a3bfbbaed1df6e67b14ce650eea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.4/sk_linux_amd64.tar.gz"
      sha256 "fd9105022ec26ee3b3624256ea20e4fbfecbbf9d2fcea4456333128b916aebad"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
