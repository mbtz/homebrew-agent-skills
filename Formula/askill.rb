class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v0.2.1.tar.gz"
  version "0.2.1"
  sha256 "8a66bdbf375664916cd59591ae176e667ee740400cbec8413c6013d57ec1ca80"
  license "MIT"

  depends_on "go"

  def install
    system "go", "build", "-o", bin/"askill", "./cmd/askill"
  end

  test do
    system "#{bin}/askill", "--help"
  end
end
