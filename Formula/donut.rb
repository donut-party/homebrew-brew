class Donut < Formula
  v = "0.0.18"
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/v#{v}.zip"
  sha256 "d7abc0e3d0546e2502835d6c305670fdf0de216697306a47ea4eed1a7326f861"

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
