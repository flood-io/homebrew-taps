class Flood < Formula
  desc "Flood IO Command Line Interface"
  homepage "https://github.com/flood-io/cli"
  url "https://github.com/flood-io/cli/releases/download/v0.2.3/flood-0.2.3-darwin-amd64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.2.3"
  sha256 "cd2e83464e514935aa497262a8adab191d69f14f7058767dbbfc90692098a6cb"

  def install
    bin.install "flood"
  end

  test do
    system bin/"flood", "version"
  end
end
