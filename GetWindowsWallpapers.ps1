# without this sometimes the script cannot use System.Drawing.Bitmap
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 
### CONFIGURATION OPTIONS ###
# source of the image files (this should not be modified)
$image_src = "~\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\"
# destination of the image files
$image_dest = "~\Pictures\Saved Pictures\"
### CONFIGURATION OPTIONS END HERE ###

# look at every file in the source folder
foreach ($item in Get-ChildItem -Path $image_src) {
	# see if we can find a width and height in these files
	try {
		$image = New-Object System.Drawing.Bitmap $item.FullName
		$imagewidth = $image.Width
		$imageheight = $image.Height
	} finally {
		$image.Dispose()
	}
	# check if the picture dimensions are 1920x1080
	if ($imagewidth -eq 1920 -and $imageheight -eq 1080) {
	# if the destination folder does not exist create it
        	if (!(Test-Path $image_dest)) {
	        	New-Item $image_dest -ItemType Directory
	        }
		# copy the picture
		$destination = $image_dest + "\" + $item.Name + ".jpg"
		if (!(Test-Path $destination)) {
			Copy-Item $item.FullName $destination
		}
	}
}
