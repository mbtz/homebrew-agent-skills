class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v1.1.11.tar.gz"
  version "1.1.11"
  sha256 "312e6593872ff6a4d8487ca0eb580fd956c03dd2c3a5fd6e9331b8eaf28ff21d"
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
