class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  url "https://github.com/erikkinding/sk/archive/refs/tags/v0.3.13.tar.gz"
  sha256 "d925822eefabda3492151165a45bdb57b9223789414f1bcf5fbb01d68a494b21"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
