# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -bool true

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -bool true

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -bool true

# Crash reporter
# 'none' or 'crashreport'
defaults write com.apple.CrashReporter DialogType -string 'crashreport'

# crash reporter as pop-up
defaults write com.apple.CrashReporter UseUNC 1

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Show Time Connected in VPN menubar item
defaults write com.apple.networkConnect VPNShowTime -bool true

# Show Status When Connecting in VPN menubar item
defaults write com.apple.networkConnect VPNShowStatus -bool true

# Allow signed apps
sudo defaults write /Library/Preferences/com.apple.alf allowsignedenabled -bool true

# Stealth mode
sudo defaults write /Library/Preferences/com.apple.alf stealthenabled -bool true

# Disable Siri
defaults write com.apple.assistant.support "Assistant Enabled" -bool false

# Data sharing status
defaults write com.apple.assistant.support "Siri Data Sharing Opt-In Status" -int 2

# Disable flashing the screen when an alert sound occurs (accessibility)
defaults write NSGlobalDomain com.apple.sound.beep.flash -bool false

# Disable audio feedback when volume is changed
defaults write NSGlobalDomain com.apple.sound.beep.feedback -bool false

# Disable interface sound effects
defaults write NSGlobalDomain com.apple.sound.uiaudio.enabled -bool false

# Display login window as: Name and password
sudo defaults write /Library/Preferences/com.apple.loginwindow "SHOWFULLNAME" -bool false

# Allow guests to login to this computer
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false

# Disable remote control infrared receiver.
sudo defaults write /Library/Preferences/com.apple.driver.AppleIRController DeviceEnabled -bool false

# Limit ad tracking
defaults write com.apple.AdLib forceLimitAdTracking -bool true

# do not open previous previewed files  when opening a new one
defaults write com.apple.Preview ApplePersistenceIgnoreState YES

# show hidden files
defaults write com.apple.finder AppleShowAllFiles YES


## Set local reference to the `airport` command-line utility for later use.
#AIRPORT="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
#
## Join Preferred Wi-Fi networks.
## Possible values:
##   * Automatic
##   * Preferred
##   * Ranked
##   * Recent
##   * Strongest
#sudo "${AIRPORT}" prefs JoinMode=Preferred
#
## Do not ask to join new networks.
## Possible values:
##   * Prompt
##   * JoinOpen
##   * KeepLooking
##   * DoNothing
#sudo "${AIRPORT}" prefs JoinModeFallback=DoNothing
#
## Remember networks this computer has joined.
#sudo "${AIRPORT}" prefs RememberRecentNetworks=YES
#
## Require administrator authorization to create computer-to-computer networks.
#sudo "${AIRPORT}" prefs RequireAdminIBSS=YES
#
## Require administrator authorization to change networks.
#sudo "${AIRPORT}" prefs RequireAdminNetworkChange=NO
#
## Require administrator authorization to turn Wi-Fi on or off.
#sudo "${AIRPORT}" prefs RequireAdminPowerToggle=NO
