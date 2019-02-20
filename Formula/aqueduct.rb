require "language/node"

class Aqueduct < Formula
  desc "Flood Aqueduct Client"
  homepage "https://aqueduct.flood.io"
  url "https://s3.amazonaws.com/flood-aqueduct/aqueduct/stable/aqueduct-stable-darwin-amd64"
  version "stable"
  sha256 "7bfcbd53513c8ad57cc25381cc746c7adcb913fc6d5c2cd2d127e201c4a0e9c9"

  def install
    bin.install "aqueduct"
  end

  test do
    system bin/"aqueduct", "version"
  end
end
