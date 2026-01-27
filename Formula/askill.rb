class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v0.4.0.tar.gz"
  version "0.4.0"
  sha256 "382ca42f5a4f786bf85c752958e65f333c2139cda8c1b90c5da8262b94833b5d"
  license "MIT"

  depends_on "go"

  def install
    system "go", "build", "-o", bin/"askill", "./cmd/askill"
    pkgshare.install "skills"
  end

  test do
    system "#{bin}/askill", "--help"
  end
end
