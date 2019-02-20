require "language/node"

class Aqueduct < Formula
  desc "Flood Aqueduct Client"
  homepage "https://aqueduct.flood.io"
  url "https://s3.amazonaws.com/flood-aqueduct/aqueduct/stable/aqueduct-stable-darwin-amd64"
  version "stable"
  sha256 "431bb84009b7759d61b77634d88824f5bdb329de8d8439d72b19b2db24ee9252"

  def install
    system "cp", "aqueduct-stable-darwin-amd64", "aqueduct"
    bin.install "aqueduct"
  end

  test do
    system bin/"aqueduct", "version"
  end
end
