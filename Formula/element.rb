
require "language/node"

class Element < Formula
  desc "Flood Element CLI"
  homepage "https://github.com/flood-io/element"
  url "https://registry.npmjs.org/@flood/element-cli/-/element-cli-1.0.4.tgz"
  sha256 "d72595a32b2c3db37f9783ad51bd584765e31f18e4216458233ea12f8b181e30"

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
