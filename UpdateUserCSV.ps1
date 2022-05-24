#Update Beispiel = Suche AccountName & Update die Telefonnummer

$Import =Import-CSV "C:\Users\Dominik.Schloepke\Desktop\GAL.csv“ -Encoding Default -Delimiter ";"



Foreach ($user in $Import)

{
Set-ADUser $user.sAMAccountname -officephone $user.TelephoneNumber
Set-ADUser $user.sAMAccountname -HomePhone $user.homePhone
Set-ADUser $user.sAMAccountname -MobilePhone $user.mobile
set-aduser $user.samAccountname -Replace @{c="DE";co="Deutschland";countrycode=276} #Anpassung der Länder durch 3 festgelegte Attribute.
}
