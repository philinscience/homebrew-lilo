class Lilo < Formula
  desc "Lilo in the terminal: science chat that searches and reads the literature"
  homepage "https://www.drlilo.com"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.2/lilo-0.1.2-darwin-arm64.tar.gz"
      sha256 "92d0d4e24f527cbc1ba6a48d1ceba5a68d65d11139cb1d79fc4770e8ce4c0310"
    end
    on_intel do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.2/lilo-0.1.2-darwin-x86_64.tar.gz"
      sha256 "2096a049bdfbb0cb03db266d139dbe744120cd666459af496b9d8f69ab651fe0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.2/lilo-0.1.2-linux-arm64.tar.gz"
      sha256 "ae97f2b2b2d1b605b617eddd9605ae02da0eb664e1688eb295e9b33382c44a48"
    end
    on_intel do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.2/lilo-0.1.2-linux-x86_64.tar.gz"
      sha256 "5ac6e1a1a6e5498f20fb85723dc7c99124420d3f9de5c67703736238d6ebb179"
    end
  end

  def install
    bin.install "lilo"
    doc.install "EULA.md"
  end

  def caveats
    <<~EOS
      Lilo is free to use under its end-user licence: #{doc}/EULA.md
      Start with:  lilo setup
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lilo --version")
  end
end
