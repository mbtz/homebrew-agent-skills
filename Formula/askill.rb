class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v1.1.2.tar.gz"
  version "1.1.2"
  sha256 "af3ceb90deccf9cb06366ecde0110949bfb1904b541fcfe954975a8132d818e6"
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
