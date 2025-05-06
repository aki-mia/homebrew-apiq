class Apiq < Formula
  desc "A powerful and easy-to-use API CLI tool for developers"
  homepage "https://github.com/aki-mia/apiq"
  url "https://github.com/aki-mia/apiq/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2f6cbfc508cbdcea48c5dd891aa049194afd6c131d79b5b21893b09dcd24dda2"
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
