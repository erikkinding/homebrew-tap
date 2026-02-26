class Sk < Formula
  desc "Switch Kontext - quickly move between Kubernetes contexts and namespaces"
  homepage "https://github.com/erikkinding/sk"
  url "https://github.com/erikkinding/sk/archive/refs/tags/v0.3.15.tar.gz"
  sha256 "34ed05856134c36dd5eb95e89040b834abb2a04874d3763b01d6479193233763"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk -v 2>&1", 1)
  end
end
