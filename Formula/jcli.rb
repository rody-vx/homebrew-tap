class Jcli < Formula
  desc "Jenkins CLI (rody-vx fork: job search via core API, folder/job path)"
  homepage "https://github.com/rody-vx/jenkins-cli"
  version "0.0.48-rody.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.3/jcli-darwin-arm64.tar.gz"
      sha256 "a8e64406f12104fe9f7e18a7741bc28e8d5798d1e130e5c18ee2e6fb1dbd5f12"
    end
    on_intel do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.3/jcli-darwin-amd64.tar.gz"
      sha256 "1bcef043dc56aa9fad5013dc90991ba73c987e8b615b01172267dc694eb0ce20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.3/jcli-linux-arm64.tar.gz"
      sha256 "c9055cd6b0499150bbdf7525b98708751cabd6553e0eeecdc09b4b08d5d5122e"
    end
    on_intel do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.3/jcli-linux-amd64.tar.gz"
      sha256 "da9c72157e5775fc6e86709f6ed02650c7b7e20c664114d47a853680080fca92"
    end
  end

  conflicts_with "jenkins-cli", because: "both install a `jcli` binary"

  def install
    bin.install "jcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jcli version")
  end
end
