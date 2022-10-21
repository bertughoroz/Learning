import UIKit

var myName : String?

myName?.uppercased()  //! koyarsak bu değer kesinlikle var eminim.

//optionals : ? vs !

var myAge = "3"  //string bu çevir int

//var myInt = Int(myAge)! * 3  //Kesinlikle tam sayı olduğu için int çevrildiğinden ! koyduk


var myInteger = (Int(myAge) ?? 1 ) * 3 // eğer myage int çevirlmiyorsa örneğin apple yazarsak, ?? yanındaki int ile işlem yapar.

if let myNumber = Int(myAge) {       //if let olduğu için eğer olursa mantığı ile bizden ! veya ? istemiyor.
print(myNumber*5)
}else{
    print("yanlis girdi yaptin")
}
