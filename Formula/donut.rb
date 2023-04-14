class Donut < Formula
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/v0.0.5.zip"
  sha256 "07cd420606c75d9f01d10ffebe5456df3f870165d41d6ea4674292055d93c8fd"

  version "0.0.5"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "donut"
  end

  test do
    %x[donut]
  end
end
