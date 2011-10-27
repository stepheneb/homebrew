require 'formula'

class JsonSpirit < Formula
  url 'https://uwe-arzt.de/files/json_spirit_v4.04.zip'
  homepage 'http://www.codeproject.com/KB/recipes/JSON_Spirit.aspx'
  md5 '0729870198528a28c21c5ee588d032a4'

  depends_on 'boost'
  depends_on 'cmake'

  def install
    system "cmake . #{std_cmake_parameters}"
    system "make install"
  end

  def test
    # This is a C++ library for http://boost-spirit.com/home/ 
    # and isn't easy to test.
    File.exists? '/usr/local/lib/libjson_spirit.a'
  end
end
