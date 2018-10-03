
require "language/node"

class ElementAT005Beta < Formula
  desc "Flood Element CLI"
  homepage "https://github.com/flood-io/element"
  url "https://registry.npmjs.org/@flood/element-cli/-/element-cli-0.0.5-beta.1.tgz"
  sha256 "44ee1324049d1433bf02ad6c4cbe0ddb0d49a45e0ec83afb4ba9f7a7199fc122"

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
