require 'formula'

class Sudolikeaboss < Formula
  homepage 'https://github.com/ravenac95/sudolikeaboss'
  version '0.1.0'

  if Hardware.is_64_bit?
    url 'http://dl.bintray.com/ravenac95/sudolikeaboss/sudolikeaboss_0.1.0_darwin_amd64.zip'
    sha256 '1e939696f241e26dbf9e474e33d5eae6d6c46d45018daba5f81a13ca722d03cb'
  else
    url 'http://dl.bintray.com/ravenac95/sudolikeaboss/sudolikeaboss_0.1.0_darwin_386.zip'
    sha256 'f5c00f4f83f851e6861541ae770d1b12dfc91f6e168aae1c2ec73740e0537907'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end

end
