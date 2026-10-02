class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.6/sk_darwin_arm64.tar.gz"
      sha256 "99d746c65018a680278db5f96e27966a2ad559da95e00a37c6c57319346dc416"
    end

    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.6/sk_darwin_amd64.tar.gz"
      sha256 "412318e0385caf8ad315954f8bb40a4835241d032b7a699a4162504a4c11220d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/erikkinding/sk/releases/download/v0.4.6/sk_linux_amd64.tar.gz"
      sha256 "cbfae6175ac057456e127d84310dfeafe5b678cc0fc0d6186b2829394bc5a7ca"
    end
  end

  def install
    bin.install "sk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
