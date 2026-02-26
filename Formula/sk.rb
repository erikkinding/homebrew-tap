class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.3.16/sk_darwin_arm64.tar.gz"
      sha256 "e1e9999c512c5c8d3d3adff027c6c93ed161cf49c3b097b9300d37f3364e0730"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.3.16/sk_darwin_amd64.tar.gz"
      sha256 "bce94e4496ac0e73cd209196e97a3b56d77797012e50afdaef7ba476e5608dc0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.3.16/sk_linux_amd64.tar.gz"
      sha256 "18583d5149c205818963cbe2fa3ddcad78d5f2e3ce94410b22b622813a84db63"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
