# Get File Paths
$audioFile = Read-Host -Prompt 'Input path to audio file to split'
$segmentFile = Read-Host -Prompt 'Input path to text file with end of segment time and title separated by " "'

# Read in segment file
$fileData = Get-Content $segmentFile
$dataArray = $fileData.Split(" ")
$startTime = $dataArray[0]
$endTime = $dataArray[1]
$title = $dataArray[2]

$startTime
$endTime
$title

