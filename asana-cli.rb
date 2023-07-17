class AsanaCli < Formula
  url "https://github.com/bklebe/asana/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "94fbc64ef7e47aea49b22adf0309abf31babd73e50316c1f74a38e9ff53bfa75"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: "asana", ldflags: "-s -w")
    bin.install "asana"
  end

  test do
    system "false"
  end
end
