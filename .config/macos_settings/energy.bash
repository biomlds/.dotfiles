# Set standby delay to 1 hour
sudo pmset -a standbydelay 3600

# Restart automatically if the computer freezes
#sudo systemsetup -setrestartfreeze on

# Sleep the display after 5 minutes
sudo pmset -a displaysleep 5

# Set machine sleep to 15 minutes on battery
sudo pmset -b sleep 15

# Never go into computer sleep mode
sudo systemsetup -setcomputersleep Off > /dev/null

# Menu bar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -bool true

# Hibernation mode
# 0: Disable hibernation (speeds up entering sleep mode)
# 3: Copy RAM to disk so the system state can still be restored in case of a
#    power failure.
sudo pmset -a hibernatemode 0

# Enable lid wakeup
sudo pmset -a lidwake 1

# Restart automatically on power loss
sudo pmset -a autorestart 1

# Disable machine sleep while charging
sudo pmset -c sleep 0

# Automatically reduce brightness before display goes to sleep
sudo pmset -c halfdim 1

# Never dim display when changing to battery
sudo pmset -b lessbright 0



#2024-02-27 19:50:48.886 systemsetup[78895:2281674] ### Error:-99 File:/AppleInternal/Library/BuildRoots/8e85887f-758c-11ee-a904-2a65a1af8551/Library/Caches/com.apple.xbs/Sources/Admin/InternetServices.m Line:379
#2024-02-27 19:50:48.986 systemsetup[78901:2281696] ### Error:-99 File:/AppleInternal/Library/BuildRoots/8e85887f-758c-11ee-a904-2a65a1af8551/Library/Caches/com.apple.xbs/Sources/Admin/InternetServices.m Line:379
