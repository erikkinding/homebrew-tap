class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.3.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.3.17/sk_darwin_arm64.tar.gz"
      sha256 "3d9ccd6c4eed52dffc8f1e20fb2b8fb3d2813f723e550033a6ddc72773a915f5"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.3.17/sk_darwin_amd64.tar.gz"
      sha256 "2f801aee57a9789553607dcae2080f94f1d7d63e07230bcf82c751f47cf3f8f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.3.17/sk_linux_amd64.tar.gz"
      sha256 "dd312656b80fcd2f8ceb82be02c5979522209ccbe61c138d39e0c3c045b21dd2"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
