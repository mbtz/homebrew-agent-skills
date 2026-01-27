class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v1.1.3.tar.gz"
  version "1.1.3"
  sha256 "a57e4b518adf200f9aa2b1e33bd4c27620a4f1731dc55593efe3f24c90796d8b"
  license "MIT"

  depends_on "go"

  def install
    system "go", "build", "-o", bin/"askill", "./cmd/askill"
    pkgshare.install "skills"
    man1.install "man/askill.1"
  end

  test do
    system "#{bin}/askill", "--help"
  end
end
