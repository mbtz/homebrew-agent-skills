class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v0.3.0.tar.gz"
  version "0.3.0"
  sha256 "b301b467ba6530e98069de97aac2d238ace7b000ca2769008b5d1e712dc4d24e"
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
