class AsanaCli < Formula
  desc ""
  homepage ""
  url "https://github.com/bklebe/asana/archive/refs/tags/v0.2.2.tar.gz"
  license ""

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
    bin.install "asana-cli" => "asana"
  end

  test do
    system "false"
  end
end
