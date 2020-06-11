require "language/node"

class Aqueduct < Formula
  desc "Flood Aqueduct Client"
  homepage "https://aqueduct.flood.io"
  url "https://s3.amazonaws.com/flood-aqueduct/aqueduct/stable/aqueduct-stable-darwin-amd64"
  version "stable"
  sha256 "e4dc9c7e4cb31e1523c40044ab1cf7dcfe7aa5028d5f2b3da84ab1f8024dc03f"

  def install
    system "cp", "aqueduct-stable-darwin-amd64", "aqueduct"
    bin.install "aqueduct"
  end

  test do
    system bin/"aqueduct", "version"
  end
end
