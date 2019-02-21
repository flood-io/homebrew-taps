require "language/node"

class Aqueduct < Formula
  desc "Flood Aqueduct Client"
  homepage "https://aqueduct.flood.io"
  url "https://s3.amazonaws.com/flood-aqueduct/aqueduct/stable/aqueduct-stable-darwin-amd64"
  version "stable"
  sha256 "6c823ebaa05294654c589fea79992a2c68832e6a2de8949f8aaae48de465f056"

  def install
    system "cp", "aqueduct-stable-darwin-amd64", "aqueduct"
    bin.install "aqueduct"
  end

  test do
    system bin/"aqueduct", "version"
  end
end
