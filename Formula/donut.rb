class Donut < Formula
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/v0.0.4.zip"
  sha256 "73a011b4240180de6b216179919e00deedcd97d6337ed1b268aac2af66328848"

  version "0.0.4"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "donut"
  end

  test do
    %x[donut]
  end
end
