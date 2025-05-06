class Apiq < Formula
  desc "A powerful and easy-to-use API CLI tool for developers"
  homepage "https://github.com/aki-mia/apiq"
  url "https://github.com/aki-mia/apiq/releases/download/v0.1.0/apiq-0.1.0.tar.gz"
  sha256 "ここにshasum -a 256で得たハッシュを記載"
  version "0.1.0"

  depends_on "ruby"

  def install
    bin.install "bin/apiq"
    lib.install Dir["lib/*"]
    prefix.install "config.yml"
  end

  test do
    system "#{bin}/apiq", "--help"
  end
end
