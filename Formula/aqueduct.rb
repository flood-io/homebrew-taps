require "language/node"

class Aqueduct < Formula
  desc "Flood Aqueduct Client"
  homepage "https://aqueduct.flood.io"
  url "https://s3.amazonaws.com/flood-aqueduct/aqueduct/stable/aqueduct-stable-darwin-amd64"
  version "stable"
  sha256 "1d101f78d7001f82d17625669a2392e8517f820f70c3e59f990ab59f1d419c26"

  def install
    bin.install "aqueduct-stable-darwin-amd64"
  end

  test do
    system bin/"aqueduct", "version"
  end
end
