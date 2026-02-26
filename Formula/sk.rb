class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  url "https://github.com/erikkinding/sk/archive/refs/tags/v0.3.14.tar.gz"
  sha256 "087e9a8d5c552cf7a459a3a626fa874cd20e60112e39f30e66c808b21602e5cb"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
