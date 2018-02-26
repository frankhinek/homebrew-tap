cask 'automounter-helper' do
  version '1.3.1'
  sha256 '1141ed678313a4061170abdef5e81a0a6d14ee73914b7c4ee2a8a83b047521d3'

  url 'https://www.pixeleyes.co.nz/automounter/helper/AutoMounterHelper.dmg'
  name 'AutoMounter Helper'
  homepage 'https://www.pixeleyes.co.nz/automounter/helper/index.html'

  installer manual: 'AutoMounterHelper.app'

  uninstall quit:      'nz.co.pixeleyes.AutoMounterHelper',
            launchctl: 'nz.co.pixeleyes.AutoMounterHelper',
            delete:    [
                         '~/Library/AutoMounterHelper',
                         '~/Library/Caches/nz.co.pixeleyes.AutoMounterHelper'
                       ]

end
