require 'formula'

class Sudolikeaboss < Formula
  homepage 'https://github.com/ravenac95/sudolikeaboss'
  version '0.2.0'

  if Hardware.is_64_bit?
    url 'http://dl.bintray.com/ravenac95/sudolikeaboss/sudolikeaboss_0.2.0_darwin_amd64.zip'
    sha256 '81d84db7f40e448ae5413c1f27384be852da4f1beff6a8b71120515a35825640'
  else
    url 'http://dl.bintray.com/ravenac95/sudolikeaboss/sudolikeaboss_0.2.0_darwin_386.zip'
    sha256 '95114191d44916426e1d18e81ffd97cdcc5bad3bbf41fad0e4d47ada205ef5c4'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end

  def caveats; <<-EOS.undent
    There is a known issue with OS X 10.10.x and at least one occurence with
    10.9.5. It's an issue with 1password itself that prevents correct usage of
    sudolikeaboss

    To fix this issue install the workaround with:

      $ brew install sudolikeaboss-workaround
      $ sudolikeaboss-setup-workaround

    And make sure to configure your iTerm2 Coprocess with this command

       SUDOLIKEABOSS_WEBSOCKET_URI="ws://127.0.0.1:16263/slab" /usr/local/bin/sudolikeaboss

    For more information see:

       https://github.com/ravenac95/sudolikeaboss/issues/1

    EOS
  end

end
