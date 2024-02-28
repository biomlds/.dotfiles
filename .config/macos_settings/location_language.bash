################################################################################
# Location & Language                                                          #
################################################################################

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Set language and text formats
defaults write NSGlobalDomain AppleLanguages -array "en" "ru"
defaults write NSGlobalDomain AppleLocale -string "en_US"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Canada/Calgary" > /dev/null

# Show 24 hours a day
defaults write com.apple.ical "number of hours displayed" 24

# DateFormat
defaults write com.apple.menuextra.clock DateFormat "EEE d. MMM  HH:mm"

# Set date and time automatically
sudo systemsetup -setusingnetworktime on > /dev/null
