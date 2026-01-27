class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v1.1.12.tar.gz"
  version "1.1.12"
  sha256 "f278388a0603831e7ad30b1adc186a49e98d3cbfb1f37968f5641ac189bffd3f"
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
