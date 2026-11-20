class Lilo < Formula
  desc "Lilo in the terminal: science chat that searches and reads the literature"
  homepage "https://www.drlilo.com"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.0/lilo-0.1.0-darwin-arm64.tar.gz"
      sha256 "60927406477eb4b571e2fc2ff8e5dc1f61178513e95fada64bff9c6131e4d3c5"
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
