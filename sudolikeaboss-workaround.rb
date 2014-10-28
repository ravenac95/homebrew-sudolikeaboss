require 'formula'

class SudolikeabossWorkaround < Formula
  homepage 'https://github.com/ravenac95/sudolikeaboss-workaround'
  version '0.1.0'

  url 'http://dl.bintray.com/ravenac95/sudolikeaboss/sudolikeaboss-workaround_0.1.0_darwin_amd64.zip'
  sha256 'b3430d2d08f21411d910d5a6779ac38596eb1a0990be6f7e2e41b36a053b4eb0'

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
