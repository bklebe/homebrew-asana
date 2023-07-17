require "formula"

class AsanaCli < Formula
  homepage 'https://github.com/bklebe/asana'
  url 'https://github.com/bklebe/asana/archive/v0.2.2.tar.gz'

  depends_on 'go' => :build

  def install
    system "go", "build", *std_go_args
  end
end
