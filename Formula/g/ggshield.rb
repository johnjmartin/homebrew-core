class Ggshield < Formula
  include Language::Python::Virtualenv

  desc "Scanner for secrets and sensitive data in code"
  homepage "https://www.gitguardian.com"
  url "https://files.pythonhosted.org/packages/b0/c9/6c3ef574f321ff6deef3d124d6fa68071d7b99c774189b4145261f1fc7ca/ggshield-1.38.1.tar.gz"
  sha256 "7cc1b268555005f487156f4cd6b3f68e6ca54a86061aedf59d8952a00021830e"
  license "MIT"
  head "https://github.com/GitGuardian/ggshield.git", branch: "main"

  bottle do
    sha256 cellar: :any,                 arm64_sequoia: "770fe583bbad18eafc1cde8d5d1bde57f4bb29343fc5a9910f8035522b822310"
    sha256 cellar: :any,                 arm64_sonoma:  "75868a2021499b3df1f0f8fc47156699b48b444e729f3bcfb56bfc6651a1538c"
    sha256 cellar: :any,                 arm64_ventura: "98d78ccd749eb5e7cde122eaf6400ad85e26824a1932dbd6a76bf81ed3d8be17"
    sha256 cellar: :any,                 sonoma:        "afdba6f6ac31a9721a04c83742afed00a784714e9724a84b173b1c81287c467f"
    sha256 cellar: :any,                 ventura:       "e32a828359c6c07ce4910914fc8df77b65da07befb65e0a3589fab02082f8550"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "7e67b0fee3e2a5db86f2ec320558f8da84f7f65538ed57180781043992fa6b76"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "13ec0aee6f44a4afee049345f09ff5b48ac7a3d96ec59dfb5d209bd27f376a08"
  end

  depends_on "certifi"
  depends_on "cryptography"
  depends_on "libyaml"
  depends_on "python@3.13"

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/ff/d7/8d757f8bd45be079d76309248845a04f09619a7b17d6dfc8c9ff6433cac2/charset-normalizer-3.1.0.tar.gz"
    sha256 "34e0a2f9c370eb95597aae63bf85eb5e96826d81e3dcf88b8886012906f509b5"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/b9/2e/0090cbf739cee7d23781ad4b89a9894a41538e4fcf4c31dcdd705b78eb8b/click-8.1.8.tar.gz"
    sha256 "ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a"
  end

  resource "commonmark" do
    url "https://files.pythonhosted.org/packages/60/48/a60f593447e8f0894ebb7f6e6c1f25dafc5e89c5879fdc9360ae93ff83f0/commonmark-0.9.1.tar.gz"
    sha256 "452f9dc859be7f06631ddcb328b6919c67984aca654e5fefb3914d54691aed60"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "marshmallow" do
    url "https://files.pythonhosted.org/packages/b8/b9/b1da16dac90ed19806ea466636ae387957eec8cd429ac3b763e21b99a77d/marshmallow-3.18.0.tar.gz"
    sha256 "6804c16114f7fce1f5b4dadc31f4674af23317fcc7f075da21e35c1a35d781f7"
  end

  resource "marshmallow-dataclass" do
    url "https://files.pythonhosted.org/packages/20/f2/1af94d8e8432ddd80e30983b3c7fdeb4cf7c9b0790d6d4855c4343dbecde/marshmallow_dataclass-8.5.14.tar.gz"
    sha256 "233c414dd24a6d512bcdb6fb840076bf7a29b7daaaea40634f155a5933377d2e"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/98/a4/1ab47638b92648243faf97a5aeb6ea83059cc3624972ab6b8d2316078d3f/mypy_extensions-1.0.0.tar.gz"
    sha256 "75dbf8955dc00442a438fc4d0666508a9a97b6bd41aa2f0ffe9d2f2725af0782"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/6d/fa/fbf4001037904031639e6bfbfc02badfc7e12f137a8afa254df6c4c8a670/oauthlib-3.2.2.tar.gz"
    sha256 "9859c40929662bec5d64f34d01c99e093149682a3f38915dc0655d5a633dd918"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-24.2.tar.gz"
    sha256 "c228a6dc5e932d346bc5739379109d49e8853dd8223571c7c5b55260edc0b97f"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/11/39/702094fc1434a4408783b071665d9f5d8a1d0ba4dddf9dadf3d50e6eb762/platformdirs-3.0.0.tar.gz"
    sha256 "8a1228abb1ef82d788f74139988b137e78692984ec7b08eaa6c65f1723af28f9"
  end

  resource "pygitguardian" do
    url "https://files.pythonhosted.org/packages/62/b9/95c8e25686d8cd53d68d50f307bbce96adcaae9f8c465ca0d1fea6a7ecfd/pygitguardian-1.20.0.tar.gz"
    sha256 "483a250c2fea3c26d2972630052f59574964ee1fef5297fae3a8e6bd5e24a04c"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/75/65/db64904a7f23e12dbf0565b53de01db04d848a497c6c9b87e102f74c9304/PyJWT-2.6.0.tar.gz"
    sha256 "69285c7e31fc44f68a1feb309e948e0df53259d579295e6cfe2b1792329f05fd"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/f5/d7/d548e0d5a68b328a8d69af833a861be415a17cb15ce3d8f0cd850073d2e1/python-dotenv-0.21.1.tar.gz"
    sha256 "1c93de8f636cde3ce377292818d0e440b6e45a82f215c3744979151fa8151c49"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/bb/2d/c902484141330ded63c6c40d66a9725f8da5e818770f67241cf429eef825/rich-12.5.1.tar.gz"
    sha256 "63a5c5ce3673d3d5fbbf23cd87e11ab84b6b451436f1b7f19ec54b6bc36ed7ca"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/a9/5a/0db4da3bc908df06e5efae42b44e75c81dd52716e10192ff36d0c1c8e379/setuptools-78.1.0.tar.gz"
    sha256 "18fd474d4a82a5f83dac888df697af65afa82dec7323d09c3e37d1f14288da54"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/0f/a7/b7a43228762966a13598a404f3dfb4803ea29a906f449d8b0e73ed0bcd30/truststore-0.10.1.tar.gz"
    sha256 "eda021616b59021812e800fa0a071e51b266721bef3ce092db8a699e21c63539"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  resource "typing-inspect" do
    url "https://files.pythonhosted.org/packages/dc/74/1789779d91f1961fa9438e9a8710cdae6bd138c80d7303996933d117264a/typing_inspect-0.9.0.tar.gz"
    sha256 "b23fc42ff6f6ef6954e4852c1fb512cdd18dbea03134f91f856a95ccc9461f78"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/ed/63/22ba4ebfe7430b76388e7cd448d5478814d3032121827c12a2cc287e2260/urllib3-2.2.3.tar.gz"
    sha256 "e7d814a81dad81e6caf2ec9fdedb284ecc9c73076b62654547cc64ccdcae26e9"
  end

  def install
    virtualenv_install_with_resources

    generate_completions_from_executable(bin/"ggshield", shells: [:fish, :zsh], shell_parameter_format: :click)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ggshield --version")

    output = shell_output("#{bin}/ggshield api-status 2>&1", 3)
    assert_match "Error: A GitGuardian API key is needed to use ggshield.", output
  end
end
