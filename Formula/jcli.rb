class Jcli < Formula
  desc "Jenkins CLI (rody-vx fork: job search via core API, folder/job path)"
  homepage "https://github.com/rody-vx/jenkins-cli"
  version "0.0.48-rody.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.2/jcli-darwin-arm64.tar.gz"
      sha256 "c56e124baf671ba148f0a0efb612f852225ac18cdfb64843daca54a45f116142"
    end
    on_intel do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.2/jcli-darwin-amd64.tar.gz"
      sha256 "6199ee1495e160c1cacccb8d5b142c7e9614fb6ff42a2044d5c6225d052194b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.2/jcli-linux-arm64.tar.gz"
      sha256 "7bf03efa6ec2b5abb47365e11ef45203ad9bcbfeefe92b38a0369bbbc2000b07"
    end
    on_intel do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.2/jcli-linux-amd64.tar.gz"
      sha256 "8e5e452a8cedb21aa6f14df0f31f524bb192e1d0bdd6516045ab8943b87914bd"
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
