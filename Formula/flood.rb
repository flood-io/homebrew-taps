class Flood < Formula
  desc "Flood IO Command Line Interface"
  homepage "https://github.com/flood-io/cli"
  url "https://github.com/flood-io/cli/releases/download/v0.2.3/flood-0.2.3-darwin-amd64.zip"
  version "0.2.3"
  sha256 "263f6eb28eb736e0f297bf012aaa7a170fd780b84625fea8f46fe2427ee3ebf8"

  def install
    bin.install "flood"
  end

  test do
    system bin/"flood", "version"
  end
end
