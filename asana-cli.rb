class AsanaCli < Formula
  url "https://github.com/bklebe/asana/archive/refs/tags/v0.2.2.tar.gz"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: "bin/asana", ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
