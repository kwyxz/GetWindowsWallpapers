GetWindowsWallpapers
====================

Why this script
---------------

Windows 10 does download automatically amazing pictures for the login and lock screen, but Microsoft wants you to spend money on theme files so they've hidden the location of these files. They also frequently remove and replace them.

What does it do
---------------

This script looks for HD (1920x1080) pictures within Windows' "hidden" download folder and copies them over to the user's Home in a configurable folder (by default "Pictures\Saved Pictures")

How to use
----------

If needed, edit the `$image_dest` folder in the configuration section of the script

Then right-click on `GetWindowsWallpapers.ps1` and choose *Run with Powershell*

Simply point your wallpaper Slideshow to this folder from your Personalization options in the Settings menu and enjoy your beautiful HD wallpapers!

Optional
--------

I recommend creating a scheduled task that will run this copy upon every system start up with the line
```
powershell.exe -file [location of the script]\GetWallpapers.ps1
```

But it's terrible code!
-----------------------

That's very possible. It's the first time I ever code anything in Powershell. So there are good chances it's horrible and full of bad practice. But it does the job.
