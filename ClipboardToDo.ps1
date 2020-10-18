cd ~\Desktop
$todolist = "ToDo.md"
$a = Get-Clipboard -Format Text
if ([string]::IsNullOrEmpty($a)) {
[System.Windows.Forms.MessageBox]::Show(„Clipboard empty or non-text data. Raw text supported only.“,“Clipboard_to_ToDo: FAIL“,0)
exit
}
"- $a" >> $todolist