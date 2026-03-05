class Dzone < Formula
  desc "Extract DNS zone files from any domain"
  homepage "https://github.com/prenansantana/extract-zone-file"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.1.0/dzone-darwin-arm64"
      sha256 "895aa4cf0d2a9fa290cda2914014825a22d6ac5cd7bdb229d3733fcb97a7c813"
    else
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.1.0/dzone-darwin-amd64"
      sha256 "a9435837df96a2986f3bcddd95aa2be9200cd12de90868bc3804ca9ad68cdd55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.1.0/dzone-linux-arm64"
      sha256 "af99178da1f6e5f3cc004ead9e9aace5a44dc802577e0f70c2536fb86b3e6df8"
    else
      url "https://github.com/prenansantana/extract-zone-file/releases/download/v0.1.0/dzone-linux-amd64"
      sha256 "8a2d5f517e4638a42afb924149a33d6548cf0c0c70f0ad3a10fcea2c3993c92d"
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
