class Sskg < Formula
  desc "StrongSwan Config Generator"
  homepage "https://github.com/n-Arno/sskg"
  url "https://github.com/n-Arno/sskg/archive/refs/tags/v1.0.tar.gz"
  sha256 "47cbf0cbb2e2a5b31ac3b1741a04c6446b6aaf8716ee526294d95e039d882eac"
  license "Unlicense"

  depends_on "go@1.17" => :build

  def install
    system "go", "build", "-o", "#{bin}/sskg"
  end

  test do
    system "false"
  end

  bottle do
    root_url "https://n-arno.com/bottles"
    sha256 cellar: :any_skip_relocation, big_sur: "0218abf057832e6bffe75da2d51314d4c846843967e20844cbd64c36db0c8fc4"
  end
end
