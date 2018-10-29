
require "language/node"

class ElementAT102Beta < Formula
  desc "Flood Element CLI"
  homepage "https://github.com/flood-io/element"
  url "https://registry.npmjs.org/@flood/element-cli/-/element-cli-1.0.2-beta.0.tgz"
  sha256 "c9b0d66d5c39bcbcb82d35fd46f3c388090a91cba2e6e3318d3b021b2f1b16a9"

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
