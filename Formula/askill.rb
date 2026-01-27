class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "056d83805672fc0a57d98d63ffc85af58df35013dc29f1ef42ae918835504785"
  license "MIT"

  depends_on "go"

  def install
    system "go", "build", "-o", bin/"askill", "./cmd/askill"
  end

  test do
    system "#{bin}/askill", "--help"
  end
end
