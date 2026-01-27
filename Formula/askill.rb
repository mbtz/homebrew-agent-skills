class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v0.3.2.tar.gz"
  version "0.3.2"
  sha256 "2d836639654768f247dca258de604e1d444a00101e4ca6b6e692b6b8dc6446d9"
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
