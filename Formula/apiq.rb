class Apiq < Formula
  desc "A powerful and easy-to-use API CLI tool for developers"
  homepage "https://github.com/aki-mia/apiq"
  url "https://github.com/aki-mia/apiq/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8bcec3e9e89fb0eb9c19612d3462e1c494f3d7fa4c8e5a928788b9d434b7fc6f"
  version "0.1.0"

  depends_on "ruby"

  def install
    bin.install "apiq-0.1.0/bin/apiq"
    lib.install Dir["apiq-0.1.0/lib/*"]
  end

  test do
    system "#{bin}/apiq", "--help"
  end
end
