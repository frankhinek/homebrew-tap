class Defaultbrowser < Formula
  desc "Command-line tool for getting & setting the default browser"
  homepage "https://github.com/frankhinek/defaultbrowser"
  url "https://github.com/frankhinek/defaultbrowser/archive/2.0.zip"
  sha256 "5951a89493393cc93bc8d2de041beeed2699db144d8bf0a4008b3ead81cae901"
  head "https://github.com/frankhinek/defaultbrowser.git"

  def install
    system "make"
    mkdir_p bin.to_s
    system "make", "install", "PREFIX=#{prefix}"
    bin.install "defaultbrowser"
  end

  test do
    # new defaultbrowser outputs a list of browsers by default;
    # safari is pretty much guaranteed to be in that list
    assert_match "safari", shell_output("#{bin}/defaultbrowser")
  end
end
