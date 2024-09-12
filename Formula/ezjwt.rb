class Ezjwt < Formula
  desc "Simple CLI to create JWT token for supabase installation"
  homepage "https://github.com/n-Arno/ezjwt"
  url "https://github.com/n-Arno/ezjwt/archive/refs/tags/v1.0.tar.gz"
  sha256 "637240282d084f8a9ae8dc6e77287ecefd85126311cf37cdee9a2b80b1ea50d4"
  license "Unlicense"

  depends_on "go@1.22" => :build

  def install
    system "go", "build", "-o", "#{bin}/ezjwt"
  end

  test do
    system "false"
  end

  bottle do
    root_url "https://n-arno.com/bottles"
    sha256 cellar: :any_skip_relocation, sonoma: "8ddf517a9435730b7c169ffb18d1373a2826d740b755b22726bf09a9b50a7391"
  end
end
