class Gocerts < Formula
  desc "Generate certificates and CA based on a yaml file"
  homepage "https://github.com/n-Arno/gocerts"
  url "https://github.com/n-Arno/gocerts/archive/refs/tags/v3.0.tar.gz"
  sha256 "bbcfc1365ba5b0351a7f2ae98362433e768e0443865d33b8c6e7a956ca290bd4"
  license "Unlicense"

  depends_on "go@1.17" => :build

  def install
    system "go", "build", "-o", "#{bin}/gocerts"
  end

  test do
    system "false"
  end

  bottle do
    root_url "https://n-arno.com/bottles"
    sha256 cellar: :any_skip_relocation, big_sur: "2a2f436e967a16969f830ca26cd70992ba5c1df7cf49d72835aa50c5a8eaed7f"
  end
end
