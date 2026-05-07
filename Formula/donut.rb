class Donut < Formula
  desc "donut is a single-page app framework for Clojure"
  homepage "https://donut.party/"
  license "MIT"
  url "https://github.com/donut-party/donut-cli/archive/refs/tags/vSNAPSHOT-REORGANIZE.zip"
  sha256 "afd2b020a25812f158b611fd444b5c11f0ff8a92bc4a7cd7fe6a5476bc8f8f1b"

  version "SNAPSHOT-REORGNIZE-1"

  depends_on "borkdude/brew/babashka"

  def install
    libexec.install Dir["donut-cli"]
    bin.write_exec_script libexec/"donut-cli/bin/donut"
  end

  test do
    %x[donut]
  end
end
