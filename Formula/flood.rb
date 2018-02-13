class Flood < Formula
  desc "Flood IO Command Line Interface"
  homepage "https://github.com/flood-io/cli"
  url "https://github.com/flood-io/cli/releases/download/v0.9.0/flood-0.9.0-darwin-amd64.zip"
  version "0.9.0"
  sha256 "83d283559de945cf0960a5a4e25f17e5bfb2b28cacf60f42561a29c325b24d07"

  def install
    bin.install "flood"
  end

  test do
    system bin/"flood", "version"
  end
end
