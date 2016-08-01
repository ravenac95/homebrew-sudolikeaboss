require 'formula'

class Sudolikeaboss < Formula
  homepage 'https://github.com/ravenac95/sudolikeaboss'
  version '0.2.1'

  if Hardware::CPU.is_64_bit?
    url 'http://dl.bintray.com/ravenac95/sudolikeaboss/sudolikeaboss_0.2.1_darwin_amd64.zip'
    sha256 '23c50e9b6190930f1760122a396a1d6778fbd83266eaf3066623954ec7f0aedd'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end
end
