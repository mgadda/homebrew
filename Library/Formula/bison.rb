require 'formula'

class Bison < Formula
  url 'http://ftpmirror.gnu.org/bison/bison-2.5.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/bison/bison-2.5.tar.gz'
  homepage 'http://www.gnu.org/s/bison/'
  md5 '687e1dcd29452789d34eaeea4c25abe4'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "#{bin}/bison"
  end
end
