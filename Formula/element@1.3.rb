
  require "language/node"

  class ElementAT13 < Formula
    desc "Flood Element CLI"
    homepage "https://github.com/flood-io/element"
    url "https://registry.npmjs.org/@flood/element-cli/-/element-cli-1.3.7.tgz"
    sha256 "189b0d915811b59c8f4278b39f8eff4fe5d992cd708b2cdb403d18274895b314"

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

    disable! date: "2021-01-22", because: :unmaintained
  end
