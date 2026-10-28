class Jcli < Formula
  desc "Jenkins CLI (rody-vx fork: job search via core API, folder/job path)"
  homepage "https://github.com/rody-vx/jenkins-cli"
  version "0.0.48-rody.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.1/jcli-darwin-arm64.tar.gz"
      sha256 "db7e533cb4cb0cade1dc21f8b47984fcd832fcb6795792222393d9588fceb4b9"
    end
    on_intel do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.1/jcli-darwin-amd64.tar.gz"
      sha256 "cc5a9d396322da7dfc9fab465aeed465c0113e3448878cd6373e48ca50ff2d78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.1/jcli-linux-arm64.tar.gz"
      sha256 "30d68ee1fca97be7fcace6716a8f9dbb2e1037db801efc9b781c863f62980fad"
    end
    on_intel do
      url "https://github.com/rody-vx/jenkins-cli/releases/download/v0.0.48-rody.1/jcli-linux-amd64.tar.gz"
      sha256 "e45df16591d913d9505c722fbc14e0b8593cf3a2eb829caff9fa334d034f2790"
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
