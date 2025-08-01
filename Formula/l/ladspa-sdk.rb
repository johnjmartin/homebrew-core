class LadspaSdk < Formula
  desc "Linux Audio Developer's Simple Plugin"
  homepage "https://www.ladspa.org"
  url "https://www.ladspa.org/download/ladspa_sdk_1.17.tgz"
  sha256 "27d24f279e4b81bd17ecbdcc38e4c42991bb388826c0b200067ce0eb59d3da5b"
  license "LGPL-2.1-only"

  livecheck do
    url "https://www.ladspa.org/download/index.html"
    regex(/href=.*?ladspa[._-]sdk[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  no_autobump! because: :requires_manual_review

  bottle do
    rebuild 2
    sha256 arm64_linux:  "c040c53ca46e36809ad0b9729b4fc3381d9ffb665bf9deb81726d27bb847170c"
    sha256 x86_64_linux: "f05cf54a06c2c0e50295cd52f63f5fc096a5812470e0a3248c790c228cd5db8f"
  end

  depends_on "libsndfile"
  depends_on :linux

  def install
    args = %W[
      INSTALL_PLUGINS_DIR=#{lib}/ladspa
      INSTALL_INCLUDE_DIR=#{include}
      INSTALL_BINARY_DIR=#{bin}
    ]
    cd "src" do
      system "make", "install", *args
    end
    bin.env_script_all_files libexec/"bin", LADSPA_PATH: opt_lib/"ladspa"
  end

  test do
    output = shell_output("#{bin}/listplugins")
    assert_match "Mono Amplifier", output
    assert_match "Simple Delay Line", output
    assert_match "Simple Low Pass Filter", output
    assert_match "Simple High Pass Filter", output
    assert_match "Sine Oscillator", output
    assert_match "Stereo Amplifier", output
    assert_match "White Noise Source", output

    expected_output = <<~EOS
      Plugin Name: "Mono Amplifier"
      Plugin Label: "amp_mono"
      Plugin Unique ID: 1048
      Maker: "Richard Furse (LADSPA example plugins)"
      Copyright: "None"
      Must Run Real-Time: No
      Has activate() Function: No
      Has deactivate() Function: No
      Has run_adding() Function: No
      Environment: Normal or Hard Real-Time
    EOS
    assert_match expected_output, shell_output("#{bin}/analyseplugin amp")
  end
end
