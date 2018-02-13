class Flood < Formula
  desc "Flood IO Command Line Interface"
  homepage "https://github.com/flood-io/cli"
  url "https://github.com/flood-io/cli/releases/download/v0.9.1/flood-0.9.1-darwin-amd64.zip"
  version "0.9.1"
  sha256 "8fde75320730cb879cfaa374ff1f744648bab3a6d76a15d9e4080f9f2a23163f"

  def install
    bin.install "flood"
  end

  test do
    system bin/"flood", "version"
  end
end
