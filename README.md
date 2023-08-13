# firefox-tablet
A PowerShell script to open Firefox in a different profile based on if you are in tablet mode or not. You will need to do a few preparations before this will work, it is NOT just a drag and drop solution (I really wish it was).
# Prep Work
1. Install this firefox extension. https://addons.mozilla.org/en-US/firefox/addon/mobile-view-switcher/
2. Type "about:profiles" into the URL bar
3. Press the "Create New Profile" button and name it "tablet-mode".
4. Your active profile at this point should be named "default-release". If it is not, edit the PS1 file and replace the instance of "default-release" with whatever your active profile is named.
5. With the addon installed and the profiles created, open both profiles and press the addon in the toolbar to set it to the correct mode in both profiles. Orange means mobile, grey means desktop. tablet-mode should be orange and default-release should be grey. Now you can close both, the settings should be persistent over Firefox restarts.
6. Press the Windows Key and search "Edit the system environment variables".
7. Just above the Ok, Cancel and Apply keys, press "Environment Variables..."
8. Double click on Path under User Variables (top, if you only want this for one user account) or under System Variables (bottom, if you want this for all users). It does not matter which you choose.
9. Press New and add the Firefox directory (the default is "C:\Program Files\Mozilla Firefox").
# The Easy Part
1. Download the .ps1 file from this repo.
2. Run it with PowerShell.
3. As long as you did the prep correctly, the profiles should launch based on the status of tablet mode..
