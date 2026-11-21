class Lilo < Formula
  desc "Lilo in the terminal: science chat that searches and reads the literature"
  homepage "https://www.drlilo.com"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.0/lilo-0.1.0-darwin-arm64.tar.gz"
      sha256 "0367da86f544f46f9fd078c69c7ec9f8e625b5a7b4b80cadd5ac8eca62f7ce6d"
    end
    on_intel do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.0/lilo-0.1.0-darwin-x86_64.tar.gz"
      sha256 "3500ffe936a84d50297994742085161d6016f30f8d8cb7479f809d2a5031898c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.0/lilo-0.1.0-linux-arm64.tar.gz"
      sha256 "7e8a7f121d95e4798d905ba11aba5d2fee19ec1cf5fd3849eab840aab4b248fd"
    end
    on_intel do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.0/lilo-0.1.0-linux-x86_64.tar.gz"
      sha256 "fa9f4e3bb273ced3238e066b4ce51262bc2514aae08da75d114f72eba7901329"
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
