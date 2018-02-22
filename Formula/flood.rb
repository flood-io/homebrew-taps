class Flood < Formula
  desc "Flood IO Command Line Interface"
  homepage "https://github.com/flood-io/cli"
  url "https://github.com/flood-io/cli/releases/download/v1.0.1/flood-1.0.1-darwin-amd64.zip"
  version "1.0.1"
  sha256 "8e9bb3f6287e87c7e0c3b5a04a57d037aab32217ac42378276293d6514170feb"

  def install
    bin.install "flood"
  end

  test do
    system bin/"flood", "version"
  end
end
