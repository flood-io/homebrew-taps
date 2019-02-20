require "language/node"

class Aqueduct < Formula
  desc "Flood Aqueduct Client"
  homepage "https://aqueduct.flood.io"
  url "https://s3.amazonaws.com/flood-aqueduct/aqueduct/stable/aqueduct-stable-darwin-amd64"
  version "stable"
  sha256 "35bfa613fd5a69bab5ba849ffc295de67e46aa63589a11e22ce0eee9b0d96b0b"

  def install
    bin.install "aqueduct"
  end

  test do
    system bin/"aqueduct", "version"
  end
end
