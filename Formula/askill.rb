class Askill < Formula
  desc "Install and manage agent skills across harnesses"
  homepage "https://github.com/mbtz/agent-skills"
  url "https://github.com/mbtz/agent-skills/archive/refs/tags/v0.2.4.tar.gz"
  version "0.2.4"
  sha256 "7aab3e7783640f351ce99e1dd318e6911337c499b0c552f07b32dfdaff46ca53"
  license "MIT"

  depends_on "go"

  def install
    system "go", "build", "-o", bin/"askill", "./cmd/askill"
  end

  test do
    system "#{bin}/askill", "--help"
  end
end
