$Datei = "Pfad zur CSV"
            
           
$CSVImport = Import-Csv $Datei -Delimiter ";" -Encoding Default
            
foreach ($Benutzer in $CSVImport)
{            
               
    New-ADUser -Path "Pfad" `
    -Surname $Benutzer.Name `
    -GivenName $Benutzer.Vorname `
    -SamAccountName $Benutzer.Login `
    -UserPrincipalName $Benutzer.Login `
    -AccountPassword ($Benutzer.Passwort | ConvertTo-SecureString -AsPlainText -Force) `
    -Enabled:$true `
    -DisplayName "$($Benutzer.Vorname) $($Benutzer.Name)" `
    -Name "$($Benutzer.Vorname) $($Benutzer.Name)"
}