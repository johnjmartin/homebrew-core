class RattlerBuild < Formula
  desc "Universal conda package builder"
  homepage "https://rattler.build"
  url "https://github.com/prefix-dev/rattler-build/archive/refs/tags/v0.35.4.tar.gz"
  sha256 "b37fd61a440735fd5ab9d8cd7d7d07bc8262e151133de89362fb08e78f60853a"
  license "BSD-3-Clause"
  head "https://github.com/prefix-dev/rattler-build.git", branch: "main"

  # Upstream creates releases that use a stable tag (e.g., `v1.2.3`) but are
  # labeled as "pre-release" on GitHub before the version is released, so it's
  # necessary to use the `GithubLatest` strategy.
  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "bac7fa25b7339795e6a0529967aa1e1b3160cc77af7ddeeacc92eae890b59983"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "a4279c985eac17fce5bc3a54ba9c2447da10384b4aed605f0239bbbcb18f6269"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "cafaa4c617bca3f9334552b8449831a2b8bc290c9951576a6f47012083061d98"
    sha256 cellar: :any_skip_relocation, sonoma:        "cd52dff9c9747781f226b143f392a5f4085aa80f3c79d0b658109fea7db478a1"
    sha256 cellar: :any_skip_relocation, ventura:       "1b18af2daf00c556e0d731e89d54b0064fba09e952b4294dfb8e1dbb45ec3428"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "edddc905fd93e9d30a1361112e54993beb243e6609c104d2c1122dd3ce46c5fc"
  end

  depends_on "pkgconf" => :build
  depends_on "rust" => :build
  depends_on "openssl@3"
  depends_on "xz"

  uses_from_macos "bzip2"
  uses_from_macos "zlib"

  def install
    system "cargo", "install", "--features", "tui", *std_cargo_args

    generate_completions_from_executable(bin/"rattler-build", "completion", "--shell")
  end

  test do
    (testpath/"recipe"/"recipe.yaml").write <<~YAML
      package:
        name: test-package
        version: '0.1.0'

      build:
        noarch: generic
        string: buildstring
        script:
          - mkdir -p "$PREFIX/bin"
          - echo "echo Hello World!" >> "$PREFIX/bin/hello"
          - chmod +x "$PREFIX/bin/hello"

      requirements:
        run:
          - python

      tests:
        - script:
          - test -f "$PREFIX/bin/hello"
          - hello | grep "Hello World!"
    YAML
    system bin/"rattler-build", "build", "--recipe", "recipe/recipe.yaml"
    assert_path_exists testpath/"output/noarch/test-package-0.1.0-buildstring.conda"

    assert_match version.to_s, shell_output(bin/"rattler-build --version")
  end
end
