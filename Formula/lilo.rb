class Lilo < Formula
  desc "Lilo in the terminal: science chat that searches and reads the literature"
  homepage "https://www.drlilo.com"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.3/lilo-0.1.3-darwin-arm64.tar.gz"
      sha256 "cf73e325b672c745f0ef607b327b5c285b1956e3bc08e9efb2bb2adc171d3767"
    end
    on_intel do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.3/lilo-0.1.3-darwin-x86_64.tar.gz"
      sha256 "023a7b16ed4a7f89175b7b1e98d01a1c59e4f52099f60118f90cd58e0a302c44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.3/lilo-0.1.3-linux-arm64.tar.gz"
      sha256 "5c04fed0eddeb6600bb946aad579aac1d12b3aba91c25eb1ee928ee0657a552e"
    end
    on_intel do
      url "https://github.com/philinscience/lilo-cli-releases/releases/download/v0.1.3/lilo-0.1.3-linux-x86_64.tar.gz"
      sha256 "0667478a647879a009f397d544750bcaee2c2d00ca32a42e87c17ff97e539390"
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
