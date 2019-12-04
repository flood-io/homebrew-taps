require "language/node"

class Aqueduct < Formula
  desc "Flood Aqueduct Client"
  homepage "https://aqueduct.flood.io"
  url "https://s3.amazonaws.com/flood-aqueduct/aqueduct/stable/aqueduct-stable-darwin-amd64"
  version "stable"
  sha256 "7ab9e1f277ae6f796f16d82d7c7e5ef1a33fb9ca30b0c87006573442e6e87105"

  def install
    system "cp", "aqueduct-stable-darwin-amd64", "aqueduct"
    bin.install "aqueduct"
  end

  test do
    system bin/"aqueduct", "version"
  end
end
