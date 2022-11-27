//
//  main.swift
//  协议
//
//  Created by rsddev on 2022/11/19.
//

import Foundation

print("Hello, World!")

protocol AnimalProtocol{
    
    
    static func name()
    
    init(name: String)
    
    mutating func eat()
    
    var age: Int { set get }
}


struct StrAnimal : AnimalProtocol{
    static func name() {
        
    }
    
    init(name: String) {
        self.age = 10
    }
    
    mutating func eat() {
        self.age = 10
    }
    
    var age: Int
    
    
}


class Animal : AnimalProtocol
{
    var name: String
    
    var age: Int
    
    var color: String = ""

    
    required init(name: String) {
        self.name = name
        self.age = 0
        self.color = ""
    }
    
    
    static func name() {
        
    }
    
    func eat() {
        
    }
    

    
}
typealias AnimalType = Animal & AnimalProtocol

class Cat : Animal{
    
    required init(name: String) {
        super.init(name: name)
    }
    
    func handle(obj: AnimalType){
        
    }
}

Cat.self


var v = 10 as Double



//protocol Stackable{
//    associatedtype Element : Equatable
//}
//
//class Stack<E: Equatable> : Stackable{
//    typealias Element = E
//}
//
//
//func equal<S1: Stackable, S2: Stackable>(_ s1: S1, _ s2: S2) -> Bool where S1.Element == S2.Element, S1.Element : Hashable {
//
//    return false
//}


protocol Runnable{
    associatedtype Speed
    var speed: Speed{ get }
}
class Person : Runnable{
    var speed: Double{ 0.0 }
}

class Car : Runnable{
    var speed: Int{ 0 }
}

func get(_ type: Int) -> any Runnable {
    if type == 0 {
        return Person()
    }
        return Car()
}
var r1 = get(0)
var r2 = get(1)

print(r1.speed)
print(r2.speed)


extension Double{
    var km: Double{ self / 1000.0 }
}

var dis: Double = 1000.0

print(dis.km)
