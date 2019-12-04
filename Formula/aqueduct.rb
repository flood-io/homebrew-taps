require "language/node"

class Aqueduct < Formula
  desc "Flood Aqueduct Client"
  homepage "https://aqueduct.flood.io"
  url "https://s3.amazonaws.com/flood-aqueduct/aqueduct/stable/aqueduct-stable-darwin-amd64"
  version "stable"
  sha256 "08febeb5fefa5dd6b1a1400cb2c0ab58ac91457bda5d32f6152e6c38a7fd7f0c"

  def install
    system "cp", "aqueduct-stable-darwin-amd64", "aqueduct"
    bin.install "aqueduct"
  end

  test do
    system bin/"aqueduct", "version"
  end
end
