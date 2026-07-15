class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.5/sk_darwin_arm64.tar.gz"
      sha256 "ebc050f1426bd1fe840eeb261037a41c435bd73dbeb4e5ce15f83cda4886bf61"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.5/sk_darwin_amd64.tar.gz"
      sha256 "e6f74ffd2ae02b8aa5d27af25b7b2519148646cb6754d820f10936ff4f50ff5f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.5/sk_linux_amd64.tar.gz"
      sha256 "3ca03c56fd446c469ed5d744dc535648e5233b0ca4ea3871ed7be5b2cb824fc7"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
