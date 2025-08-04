class DriftDetector < Formula
  desc "CLI tool to show drift between K8s and GitHub releases/tags"
  homepage "https://github.com/yellowstonesoftware/drift-detector"
  url "https://github.com/yellowstonesoftware/drift-detector/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "a87ffa7d152652ae2be848109f2ba068f378bb79aff4b2c5a7b424b783cfd764"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/yellowstonesoftware/drift-detector/releases/download/v0.0.2/drift_detector_macos_arm64-v0.0.2.zip"
      sha256 "12d2a42588a4365b4dfce1449564f77f6dafde914a165cb69866695354de14c3"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yellowstonesoftware/drift-detector/releases/download/v0.0.2/drift_detector_linux-v0.0.2.zip"
        sha256 "bd642f1ab2a5e1164023130e5c9833458db560ca870a64a5129c4f6ebc41d99f"
      end
    end
  end

  def install
    bin.install "drift_detector"
  end

  test do
    system "#{bin}/drift_detector", "--help"
  end
end
