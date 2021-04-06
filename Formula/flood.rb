class Flood < Formula
  desc "Flood IO Command Line Interface"
  homepage "https://github.com/flood-io/cli"
  url "https://github.com/flood-io/cli/releases/download/v1.0.3/flood-1.0.3-darwin-amd64.zip"
  version "1.0.3"
  sha256 "ac75d196f8868bb750be9e16a483eec01189e59a44397795452ef19bed8661eb"

  def install
    bin.install "flood"
  end

  test do
    system bin/"flood", "version"
  end

  disable! date: "2021-04-06", because: :unmaintained
end
