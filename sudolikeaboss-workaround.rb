require 'formula'

class SudolikeabossWorkaround < Formula
  homepage 'https://github.com/ravenac95/sudolikeaboss-workaround'
  version '0.1.1'

  url 'http://dl.bintray.com/ravenac95/sudolikeaboss/sudolikeaboss-workaround_0.1.1_darwin_amd64.zip'
  sha256 'e5dc681c4debcc8b86cbed5093fc0a405ce113579b95e31b4fadefc8817d0d3a'

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end

  def caveats; <<-EOS.undent
    To complete installation don't forget to run:

      $ sudolikeaboss-setup-workaround

    And make sure to configure your iTerm2 Coprocess with this command

       SUDOLIKEABOSS_WEBSOCKET_URI="ws://127.0.0.1:16263/slab" /usr/local/bin/sudolikeaboss

    For more information see:

       https://github.com/ravenac95/sudolikeaboss/issues/1

    EOS
  end

end
