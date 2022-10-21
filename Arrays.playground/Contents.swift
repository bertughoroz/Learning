import UIKit

 //Array
var myFavoriteMovies = ["Fury", "Django", "Benjamin Buttons Story"]

myFavoriteMovies.sort()

var myNumberArray = [1, 2, 3, 4, 5, 6]

//Set aynı elemandan bir tane oluyor sadece. Yazdırırken aynı elemanları tek olarak yazdırır.

// var mySet = [1,2,3,4,5] array algılar

//Unordered collecitons, uniqe elements

var mySet : Set = [1, 2, 3, 4, 5, 6] //Setin sırası yoktur. O yüzden mySet[0] veya mySet.First diyemeyiz.

//o zaman set neden kullanıyoruz?

var myInternetArray = [1,2,4,5,2,4,5,1,3,4,9]
var myInternetSet = Set(myInternetArray)

var karisik = myInternetSet.union(mySet)

//Dicitonary
//key-value pairing

var myFavoriteDirectors = ["Pulp Fiction" : "Tarantino", "Bok Böcegi" : "Bertug Horoz", "Fury" : "Nolan"]

//myFavoriteDirectors[0] diyemeyiz

myFavoriteDirectors["Pulp Fiction"]
myFavoriteDirectors["Bok Böcegi"]

myFavoriteDirectors["Seven Samurai"] = "Akita"
myFavoriteDirectors
