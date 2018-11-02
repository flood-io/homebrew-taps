
require "language/node"

class ElementAT102Beta < Formula
  desc "Flood Element CLI"
  homepage "https://github.com/flood-io/element"
  url "https://registry.npmjs.org/@flood/element-cli/-/element-cli-1.0.2-beta.1.tgz"
  sha256 "c97c1bbcd9b8e9f2c35291e6cd55dec7f5bb558e3d02304fb772e27111c933e8"

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
