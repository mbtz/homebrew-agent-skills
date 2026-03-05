class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v1.3.0.tar.gz"
  version "1.3.0"
  sha256 "1f7564f28b1d30a3b224079ba309a218e2bd9bee199224fdf162aeb22e2148ac"
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
