class Donut < Formula
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/v0.0.3.zip"
  sha256 "57d3ec69aa72eae97296cc8865a5c3503e076c374d796bb1354c89cbd1814666"

  version "0.0.3"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "donut"
  end

  test do
    %x[donut]
  end
end
