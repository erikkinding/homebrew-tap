class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.3/sk_darwin_arm64.tar.gz"
      sha256 "8ac8458d7ebd197839764420e414c5057dc97ce7f158052ead2dd492517a39fe"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.3/sk_darwin_amd64.tar.gz"
      sha256 "628cacbe34507cccec14158070cea3297b45b37d2a288ddc08a8736c728feb05"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.3/sk_linux_amd64.tar.gz"
      sha256 "e9d72fc4618e1184d92a2ffa50acf4e8043c264005ffccd840cc88dbf15096f8"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
