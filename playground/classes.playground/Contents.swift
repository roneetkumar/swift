import UIKit

enum PersonType {
    case introverted;
    case extroverted;
}

class Person{
    var name: String;
    var age: Int;
    var type: PersonType = .introverted;
    init(name:String, age:Int, type:PersonType) {
        self.name = name;
        self.age = age;
        self.type = type;
    }
    
    func greet() -> Person {
        print("Hello World, My name is \(self.name) and my age is \(self.age)");
        return self;
    }
    
    func addAge() -> Person{
        self.age = self.age + 1;
        return self;
    }
    func removeAge() -> Person{
        self.age = self.age - 1;
        return self;
    }
}

let p1 = Person(name: "Roneet", age: 22, type: PersonType.extroverted);

p1.greet().addAge().addAge().removeAge().greet();

class Square{
    var len: Int = 1;
    init(len: Int){
        self.len = len;
    }
    
    func area()->Int{
        return self.len * self.len;
    }
}


let sq = Square(len: 12)

let sq2 = Square(len: 10)

print("\nLength of square is : \(sq.len)\nArea of square is : \(sq.area())")
print("Length of square is : \(sq2.len)\nArea of square is : \(sq2.area())")
if(sq.area() > sq2.area()){
        print("\nSquare 1 has bigger area")
}else{
        print("Square 2 has bigger area")
}




