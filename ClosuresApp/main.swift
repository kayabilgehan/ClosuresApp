import Foundation

//tek kullanımlık fonksiyon yada isimsiz fonksiyonlar olarak geçer

func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
print(sum(num1: 5, num2: 4))

//fonksiyonu parametre alan fonksiyon
func calculate(num1: Int, num2: Int, myFunction: (Int, Int) -> Int) -> Int {
    return myFunction(num1, num2)
}
print(calculate(num1: 5, num2: 4, myFunction: sum))


//Closure
print(
    //calculate(num1: 4, num2: 9, myFunction: { (num3, num4) in num3 * num4}) // closure de dıştaki ve içteki parametrelerin isimlerinin aynı olması şart değil
    calculate(num1: 4, num2: 9, myFunction: { $0 * $1 }) //0. ve 1. parametreleri bul ve çarp ve döndür anlamına gelir
)


var myArray = [10,20,30,40,50]
func test(num1: Int) -> Int{
    return num1 / 5
}
print(myArray.map(test))

print(myArray.map({$0 / 5}))

/*{ (num1: Int, num2: Int) -> Int in
    return num1 * num2
}*/


