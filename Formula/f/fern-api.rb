class FernApi < Formula
  desc "Stripe-level SDKs and Docs for your API"
  homepage "https://buildwithfern.com/"
  url "https://registry.npmjs.org/fern-api/-/fern-api-0.56.15.tgz"
  sha256 "933da0fae9261ff04d164af8efd04b5031ad7dea2eaefa9de4a8ce8469a2fa69"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, all: "e697c0339380e119b68870a7550430b84b7268bff1832203e16dd49a42682097"
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"fern", "init", "--docs", "--org", "brewtest"
    assert_path_exists testpath/"fern/docs.yml"
    assert_match "\"organization\": \"brewtest\"", (testpath/"fern/fern.config.json").read

    system bin/"fern", "--version"
  end
end
