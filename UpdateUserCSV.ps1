#Update Beispiel = Suche AccountName & Update die Telefonnummer

$Import =Import-CSV „CSV Pfad“ -Encoding Default -Delimiter ";"



Foreach ($user in $Import)

{

Set-ADUser $user.sAMAccountname –OfficePhone $user.TelephoneNumber

}