class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v0.0.0.tar.gz"
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "go"

  def install
    system "go", "build", "-o", bin/"askill", "./cmd/askill"
  end

  test do
    system "#{bin}/askill", "--help"
  end
end
