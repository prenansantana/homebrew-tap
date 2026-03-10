class Dzone < Formula
  desc "Extract DNS zone files from any domain"
  homepage "https://github.com/prenansantana/extract-zone-file"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.3.0/dzone-darwin-arm64"
      sha256 "593ef5932f3c90bcc26d010ef5efd4697ccaefe2b26ad18e2d28adb60b798eff"
    else
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.3.0/dzone-darwin-amd64"
      sha256 "cd17480698de1747ec6e05900f4378aa72c826bbb04b4161b7529c729148809d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.3.0/dzone-linux-arm64"
      sha256 "5a12882beece4a4ac2b9b49a33f972c2080e85d8e7ae720c55919a02da30b483"
    else
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.3.0/dzone-linux-amd64"
      sha256 "85a1e7078291446ae68c04adf81ec665ab5e110d23fedcaddd9cd5cf62662d3c"
    end
  end

  def install
    binary = Dir["dzone-*"].first || "dzone"
    bin.install binary => "dzone"
  end

  test do
    assert_match "dzone", shell_output("#{bin}/dzone -v")
  end
end
