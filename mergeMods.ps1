$path = ".\mergedMod\"
If (!(test-path $path))
{
    md $path
}
function Get-Path-From.mod ($filePath)
{
    $ini = @{}
    switch -regex -file $FilePath
    {
        “(?m)(.+?)\s*=\s*(.+)” # Key
        {
            $name,$value = $matches[1..2]
            $ini[$name] = $value
        }
    }
    $var = Split-Path -Leaf -Path $ini['path']
    $length = $var.length
    $result = $var.substring(0,$length -1)
    $path = ".\" + $result + "\"
    If (!(test-path $path))
    {
        md $path
    }
    return $path
}
$files = Get-Path-From.mod  excelmakesbelhappypack.mod
foreach ($file in $files) {$file}