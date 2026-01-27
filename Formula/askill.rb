class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v0.4.1.tar.gz"
  version "0.4.1"
  sha256 "750910885dc4804f8159c02c7292841d9fc819383eb22491873637f3770e82a7"
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
