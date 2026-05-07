class Donut < Formula
  v = "0.0.8";
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/v#{v}.zip"
  sha256 "dcee5c58c3cc7d860d65dc35b9e1eb78289ed75f0a7a584ad1e23299a359aef6"

  version v

  depends_on "borkdude/brew/babashka"

  def install
    libexec.install Dir["donut-cli"]
    bin.write_exec_script libexec/"donut-cli/bin/donut"
  end

  test do
    %x[donut]
  end
end
