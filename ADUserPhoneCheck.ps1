$Import =Import-CSV "C:\Users\Dominik.Schloepke\Desktop\Compare.csv“ -Encoding Default -Delimiter ";"

Foreach ($user in $Import)

{
    Get-ADUser $user.sAMAccountname -properties TelephoneNumber,sAMAccountname,homePhone,mobile | select sAMAccountname,TelephoneNumber,homePhone,mobile | Export-CSV .\UserCompare.csv -Append -NoTypeInformation -Force

}
