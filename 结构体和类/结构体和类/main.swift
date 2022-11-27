//
//  main.swift
//  结构体和类
//
//  Created by rsddev on 2022/11/15.
//

import Foundation

print("Hello, World!")

struct Person{
    var name: String?
    var gender: String?
    init()
    {
        self.name = "张三"
        self.gender = "男"
    }
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
    init(name:String){
        self.name  = name
    }
}

var person: Person
person = Person()


for index in 0...5{
    print(index)
}

var age = {
    return 10
}()

print(age)


struct Circle{
    var radius: Double
    var diameter: Double {
        get {radius * 2}
    }
}

var cir = Circle(radius: 10)
print(cir.diameter)


enum TestEnum: Int {
    case test1,test2,test3
    var rawValue: Int {
        get{
            switch self {
            case .test1:
                return 10
            case .test2:
                return 20
            case .test3:
                return 20
            }
        }
    }
}

var typeEnum = TestEnum.test1

print(typeEnum.rawValue)

class StuNo{
    var number: String
    init() {
        self.number = UUID.init().uuidString
    }
}


class Student{
    static let PI = 3.14
    
    var name: String
    {
        willSet
        {
        
            print(newValue)
        }
        didSet
        {
            print(name , oldValue )
        }
    }
    lazy var number = StuNo()
    init() {
        self.name = "张三"
    }
    
}


var bob = Student()
bob.name = "李四"
print(bob.number.number)

