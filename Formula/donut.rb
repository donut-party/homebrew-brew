class Donut < Formula
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/v0.0.6.zip"
  sha256 "0e5eb9f8cb7b5fa619626ad72b39e6147c0f5046e3b2823288079f364fb4cc23"

  version "0.0.6"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "donut"
  end

  test do
    %x[donut]
  end
end
