class Donut < Formula
  v = "0.0.12"
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/v#{v}.zip"
  sha256 "4be5a36339b9859ca69c04d6f993b595e9a23bb6e9cea4ef560c4f16446b5a7e"

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
