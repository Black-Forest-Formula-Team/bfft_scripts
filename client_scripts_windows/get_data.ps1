cd C:\Users\Administrator\Documents\GitHub\bfft_data_visualization\data\history

wsl sudo rsync --progress -avz -e "sudo ssh -i /mnt/c/users/administrator/.ssh/id_rsa.txt" -avvi --exclude='*.bag' bfft-agx-1@10.0.0.1:/SSD_512/bagfiles .

[string]$sourceDirectory  = "C:\Users\Administrator\Documents\GitHub\bfft_data_visualization\data\history\bagfiles"
[string]$destinationDirectory = "C:\Users\Administrator\Documents\GitHub\bfft_data_visualization\data"
[string]$NewdestinationDirectory =  $destinationDirectory+"\latest_run"
[string]$newestFoldername = gci C:\Users\Administrator\Documents\GitHub\bfft_data_visualization\data\history\bagfiles\ | ? { $_.PSIsContainer } | sort CreationTime -desc | select -f 1
[string]$sourceDirectory = $sourceDirectory + "\" + $newestFoldername
[string]$renamePath = $destinationDirectory +  "\" + $newestFoldername

Write-Host $sourceDirectory
Remove-Item  $NewdestinationDirectory -Recurse -Force -Confirm:$false
Copy-item -Force -Recurse -Verbose $sourceDirectory -Destination $destinationDirectory
Rename-Item -Path $renamePath -NewName "latest_run"