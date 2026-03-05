class Dzone < Formula
  desc "Extract DNS zone files from any domain"
  homepage "https://github.com/prenansantana/extract-zone-file"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.2.0/dzone-darwin-arm64"
      sha256 "e5284f377c76f72d715141979f06134b83d8e3b183c1f88397ab5a20aa1f427e"
    else
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.2.0/dzone-darwin-amd64"
      sha256 "92c7453d077ca51732e3d8dda9e5ef3b671c7793bdbd4f42a7f076abc6c7aedf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.2.0/dzone-linux-arm64"
      sha256 "1c469ffb9ce141f62d215c49ca901286fc2e3b7b0b1f7ff9c1d8015c24e5a86c"
    else
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.2.0/dzone-linux-amd64"
      sha256 "4362b43eca34ff517c4956c25384bd0d6e8c493fd6335ec817092a5fb183e668"
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
