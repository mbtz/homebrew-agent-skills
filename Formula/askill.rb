class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v0.3.1.tar.gz"
  version "0.3.1"
  sha256 "0df07dddb4944cfbb6890b7b107d8b3e837ab6c74644126a2be74667df608a25"
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
