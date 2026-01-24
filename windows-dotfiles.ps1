Write-Output "function ls_alF { eza -al --group-directories-first --icons=always $args }" >> $PROFILE
Write-Output "Set-Alias -Name ll -Value ls_alF" >> $PROFILE
Write-Output "Invoke-Expression (&starship init powershell)" >> $PROFILE
