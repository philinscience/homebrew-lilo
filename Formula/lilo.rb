class Lilo < Formula
  desc "Lilo in the terminal: science chat that searches and reads the literature"
  homepage "https://www.drlilo.com"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.1/lilo-0.1.1-darwin-arm64.tar.gz"
      sha256 "547afa7984507ca215df67f0c5125cbaf2d8c57d09febad6173da1d80aa71c4a"
    end
    on_intel do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.1/lilo-0.1.1-darwin-x86_64.tar.gz"
      sha256 "1022ac53ffe9dbef30ff87fd600df1ceeaececb9a3247fc4d16200512315e911"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.1/lilo-0.1.1-linux-arm64.tar.gz"
      sha256 "cec9fc628dce8656675c84a1962d640d6ac83fbcf7c877987396baefd9c1eb72"
    end
    on_intel do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.1/lilo-0.1.1-linux-x86_64.tar.gz"
      sha256 "8b5d222dc201b11de8e279067ca8aebe993da4eea826e3e9d3bffb702911f337"
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
