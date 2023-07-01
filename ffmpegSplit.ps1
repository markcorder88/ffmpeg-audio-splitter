# Get File Paths
$audioFile = Read-Host -Prompt 'Input path to audio file to split'
$segmentFile = Read-Host -Prompt 'Input path to text file with end of segment time and title separated by " "'

# Read in segment file
Get-Content $segmentFile | ForEach-Object {
    $dataArray = $_.Split(" ")
    $startTime = $dataArray[0]
    $endTime = $dataArray[1]
    $title = $dataArray[2]
    $title = $title + ".mp3"
    
    ffmpeg -ss $startTime -to $endTime -i $audioFile -c copy $title
}