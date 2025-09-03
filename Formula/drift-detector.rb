class DriftDetector < Formula
  desc "CLI tool to show drift between K8s and GitHub releases/tags"
  homepage "https://github.com/yellowstonesoftware/drift-detector"
  url "https://github.com/yellowstonesoftware/drift-detector/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "f6a9b17ed4ed615651e1e94e667df04f950e1998dc623fbd38b35bac8cff9f07"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/yellowstonesoftware/drift-detector/releases/download/v0.0.5/drift_detector_macos_arm64-v0.0.5.zip"
      sha256 "2a023dc82370329dcc3a33f36e70fc5ea9ab3212bfa65f054e4e224353ed67b7"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yellowstonesoftware/drift-detector/releases/download/v0.0.5/drift_detector_linux-v0.0.5.zip"
        sha256 "cab7634696c093a9b3245b70b383281c489076eefc99e6283fa9f8a912fa26d3"
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
