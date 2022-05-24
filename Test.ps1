#Update Beispiel = Suche AccountName & Update die Telefonnummer

$Import =Import-CSV "C:\Users\Dominik.Schloepke\Desktop\Test.csv“ -Encoding Default -Delimiter ";"



Foreach ($user in $Import)

{

Set-ADUser $user.sAMAccountname -officephone $user.TelephoneNumber
Set-ADUser $user.sAMAccountname $user.homePhone
}