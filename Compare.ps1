$Import =Import-CSV "C:\Users\Dominik.Schloepke\Desktop\Compare.csv“ -Encoding Default -Delimiter ";"

Foreach ($user in $Import)

{
    Get-ADUser $user.sAMAccountname -properties TelephoneNumber,DisplayName,homePhone,mobile | select DisplayName,TelephoneNumber,homePhone,mobile | Export-CSV .\UserCompare.csv -Append -NoTypeInformation -Force

}
