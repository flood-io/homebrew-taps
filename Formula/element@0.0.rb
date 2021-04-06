
require "language/node"

class ElementAT00 < Formula
  desc "Flood Element CLI"
  homepage "https://github.com/flood-io/element"
  url "https://registry.npmjs.org/@flood/element-cli/-/element-cli-0.0.4.tgz"
  sha256 "6c6c38e4bdd6a9cdea880e1826e25b3402d260f096f0a69ac9e3d7cafb0ea9ca"

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

  disable! date: "2018-03-10", because: :unmaintained
end
