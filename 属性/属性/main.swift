//
//  main.swift
//  属性
//
//  Created by rsddev on 2022/11/17.
//

import Foundation

print("Hello, World!")


class Size{
    var width = 0.0 ,height = 0.0
    var area: Double{
        get{
            width * height
        }
    }
    subscript(index: Int) -> Double{
        set  {
            if index == 0
            {
                width = newValue
            }
            else if index == 1
            {
                height = newValue
            }
        }
         get{
            if index == 0
            {
                return width
            }
            else if index == 1
            {
                return height
            }
            return 0
        }
    }
    subscript(valueX x:Double, valueY y:Double) -> Double{
        set{
            if(x == 0)
            {
                width = newValue
            }
            if(y == 0)
            {
                height = newValue
            }
            }
          get{
              return width * height
          }
    }
}

var size = Size()
size[0] = 10
size[1] = 20
print("Area:\(size.area)")
size[valueX: 0, valueY: 0] = 20
print("Area:\(size.area)")


class A{
    class func test(){
        
    }
}

class B:A{
    override static func test()
    {
        
    }
}
class C:B{
    override class func test() {
        
    }
}
