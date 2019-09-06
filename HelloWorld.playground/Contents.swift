import UIKit


// 28/8/19


var str = "Hello, playground"
var num1 = 12;

for i in str {
    print(i)
}

print("\n")
print("\n")
func tables(num1: Int) {
    for i in 1...10{
        print("\(num1) * \(i) = \(num1 * i) ")
    }
    print("\n")
}

tables(num1: 2)
tables(num1: 3)
tables(num1: 4)
tables(num1: 5)


let floatNum : Float = 3.14

let doubleNum : Double = 1.23632

print(floatNum,doubleNum)


var arr1 = [1,3,2,3,4,5,2,2,2,2,5]


// check if given num is multiple of 3 or 5

func count(num:Int, arr: [Int])-> Int{
    var count = 0
    for i in arr{
        if (i == num){
            count += 1
        }
    }
    return count
}

print( count(num:2,arr: arr1))

// check if given num is multiple of 3 or 5

func checkNum(num: Int)-> Bool{
    return (num % 3 == 0 || num % 5 == 0) ? true : false
}

print(checkNum(num: 99))


// check if 5 is in the position
func checkArr(arr:[Int]){
    if(arr[0] == 5 || (arr[arr.count - 1] == 5)){
        print("first or last")
    }else{
        print("not in first or last")
    }
}

var arr2 = [5,1,3,2,3,4,5,2,2,2,2]
checkArr(arr: arr2)


// 4/9/19

//For Loop

let numbers = [11,22,33,44,55]
var total=0

for number in numbers{
    total += number
}
print(total);



//print array with numbers 1-11
print("\n\n\nPrint Number")


for num in 1...10{
    print(num)
}


//print array with numbers 1-11 reverse

print("\n\n\nReversed Number")

for num in (1...10).reversed(){
    print(num)
}

print("\n\n\nEven Number")

for num in 1...10{
    if num % 2 == 0 {
       print(num)
    }
}

print("\n\n\nOdd Number")

for num in 1..<10 where num % 2 != 0 {
        print(num)
}

print("\n\n\nOptional variable")

var name :String? = "My name"
//name = "Roneet"
print(name as Any)

//print("\n\n\nOptional variable")
//
//var name :String? = "My name"
////name = "Roneet"
//print(name as Any)


//while


func checkChance(name1:String,name2: String){
    let randNo = arc4random_uniform(100)
    print("Person 1 : \(name1)")
    print("Person 1 : \(name2)")
    print("Chance in percentage : \(randNo)")

    if(80 < randNo){
        print("You have good Chance 😀")
    }else if(60 < randNo){
        print("50-50 😅")
    }else if(30 < randNo){
        print("try harder 😒")
    }else{
        print("forget it!!🤣")
    }
}

checkChance(name1: "Davinder", name2: "Sharma")
