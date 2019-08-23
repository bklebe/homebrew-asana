require "formula"

ASANA_VERSION = '0.2.1'
class Asana < Formula
  homepage 'https://github.com/thash/asana'
  url 'https://github.com/thash/asana.git', tag: "v#{ASANA_VERSION}"
  version ASANA_VERSION

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', 'github.com/codegangsta/cli'
    system 'go', 'get', 'github.com/thash/asana'
    system 'go', 'build', '-o', 'asana'
    bin.install 'asana'
  end
end
