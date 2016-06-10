require 'formula'

class Sudolikeaboss < Formula
  homepage 'https://github.com/ravenac95/sudolikeaboss'
  version '0.2.1'

  if Hardware.is_64_bit?
    url 'http://dl.bintray.com/ravenac95/sudolikeaboss/sudolikeaboss_0.2.1_darwin_amd64.zip'
    sha256 'f613ddf8969a51512863a92469e9d73072888d9ae9f937b3bfa8b32c8e909d14'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end
end
