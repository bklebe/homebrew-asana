require "formula"

ASANA_VERSION = '0.2.1'
class Asana < Formula
  homepage 'https://github.com/thash/asana'
  url 'https://github.com/thash/asana.git', tag: "v#{ASANA_VERSION}"
  version ASANA_VERSION

  depends_on 'go' => :build

  def install
    system "go", "build", *std_go_args
  end
end
