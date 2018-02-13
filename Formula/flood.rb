class Flood < Formula
  desc "Flood IO Command Line Interface"
  homepage "https://github.com/flood-io/cli"
  url "https://github.com/flood-io/cli/releases/download/v1.0.0/flood-1.0.0-darwin-amd64.zip"
  version "1.0.0"
  sha256 "8b46ba6208eaa594307bee9d55cb738e145709dfc0285a672153c2e2fce6ec34"

  def install
    bin.install "flood"
  end

  test do
    system bin/"flood", "version"
  end
end
