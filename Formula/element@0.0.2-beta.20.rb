
require "language/node"

class ElementAT002Beta20 < Formula
  desc "Flood Element CLI"
  homepage "https://github.com/flood-io/element"
  url "https://registry.npmjs.org/@flood/element-cli/-/element-cli-0.0.2-beta.20.tgz"
  sha256 "4c439ca7ed7a3094e780cf5797e6b4bd732cafa123c9099d97957ab650df1565"

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
