class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "48ec906c4cd3ca07e5dabd316a46368281aa4980611fd7de330f5012911a030a"
  license "MIT"

  depends_on "go"

  def install
    system "go", "build", "-o", bin/"askill", "./cmd/askill"
  end

  test do
    system "#{bin}/askill", "--help"
  end
end
