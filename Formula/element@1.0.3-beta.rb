
require "language/node"

class ElementAT103Beta < Formula
  desc "Flood Element CLI"
  homepage "https://github.com/flood-io/element"
  url "https://registry.npmjs.org/@flood/element-cli/-/element-cli-1.0.3-beta.1.tgz"
  sha256 "a0a1a0d43f0dd93bcfaa4a5a14a1f50d61ec5d82bd4cd483a5f9511b9992c550"

  depends_on "node"
  # uncomment if there is a native addon inside the dependency tree
  # depends_on "python" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here
  end
end
