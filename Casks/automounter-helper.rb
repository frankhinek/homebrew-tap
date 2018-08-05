cask 'automounter-helper' do
  version '1.3.1'
  sha256 'faa06eb56ffe832279a74369223ce67805b70d85ff106fbd94f9c60492ba2d0b'

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
