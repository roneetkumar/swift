import UIKit


//--1---------------------------

//func calcBMI(weight: Float, height: Float) -> Float{
//    return weight/pow(height, 2)
//}
//let BMI = calcBMI(weight: 70, height: 1.72)
//
//if (BMI > 25){
//    print("Over Weight")
//}else if(BMI > 18){
//    print("Normal Weight")
//}else{
//    print("Under Weight")
//}


//--2---------------------------

//func calcBMI2(weight: Float, height: Float) -> String{
//    let BMI = weight/pow(height, 2)
//    let BMIString = String(format: "%.1f", BMI)
//    var message = ""
//    if BMI > 25{
//       message =  "Over Weight \nBMI - \(BMIString)"
//    }else if BMI > 18{
//        message = "Normal Weight \nBMI - \(BMIString)"
//    }else{
//        message = "Under Weight \nBMI - \(BMIString)"
//    }
//    return message
//}
//
//print(calcBMI2(weight: 70, height: 1.72))


//--3---------------------------

//func bottles(){
//    for i in (1...99).reversed(){
//        if(i==1){
//            print("\(i) bottles of beer on the wall, \(i) bottles of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n\nNo more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n")
//        }else{
//            print("\(i) bottles of beer on the wall, \(i) bottles of beer.\nTake one down and pass it around, \(i-1) bottles of beer on the wall.\n")
//        }
//    }
//}
//
//bottles()


//4------------------



func bottles2() -> String{
    var line = ""
    for i in (1...99).reversed(){
           let newline = "\(i) bottles of beer on the wall, \(i) bottles of beer.\nTake one down and pass it around, \(i-1) bottles of beer on the wall.\n\n"
        line += newline
    }
    
    line += "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    
    return line
}

print(bottles2())











