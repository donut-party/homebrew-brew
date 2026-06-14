class Donut < Formula
  v = "0.0.19"
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/v#{v}.zip"
  sha256 "5db20a651392876adcf3ff516f29e72fd81a3c2ed40ce03e0e1f29486bc8de15"

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
