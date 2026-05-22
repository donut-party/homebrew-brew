class Donut < Formula
  v = "0.0.14"
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/v#{v}.zip"
  sha256 "1449c38ca94fc680dac3ee9b442a1b97a08bbb9e4ce131f250799fbb9b924a81"

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
