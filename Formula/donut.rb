class Donut < Formula
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/v0.0.7.zip"
  sha256 "790805c0a8cd5317ad8d5c874fd48934e34cc96132f3334ed6399aaf2f2ed04a"

  version "0.0.7"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "donut"
  end

  test do
    %x[donut]
  end
end
