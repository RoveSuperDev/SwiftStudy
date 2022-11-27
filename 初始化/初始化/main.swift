//
//  main.swift
//  初始化
//
//  Created by rsddev on 2022/11/18.
//

import Foundation




class Biological
{
    var age: Int
    var color: String
    init()
    {
        self.age = 0
        self.color = ""
    }
    init(age: Int,color: String) {
        self.color = color
        self.age = age
    }
    convenience init(age: Int){
        
        self.init(age: age, color: "")
    }
    convenience init(color: String){
        self.init(age: 0, color: color)
    }
    
}

class Animal: Biological
{
    convenience init(no: Int){
        self.init()
    }
    

}
//var animal = Anim 


//var animal = Animal(color: "黑色")

