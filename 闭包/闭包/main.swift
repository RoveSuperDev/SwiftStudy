//
//  main.swift
//  闭包
//
//  Created by rsddev on 2022/11/11.
//

import Foundation


typealias Fn = (Int)->Int


func getFn()->Fn{
    var num = 0
    
    
    func add(_ i: Int)-> Int {
        num += i
        return num
    }
    
    num += 100
    
    return add
    
}

var fn1 = getFn()
print(fn1(10))
print(fn1(20))


var fn2 = getFn()
print(fn2(30))
print(fn2(40))





func test(v1:Int ,v2: Int,fn:(Int,Int)->Int){
    print(fn(v1,v2))
}

test(v1: 10, v2: 20) {v1, v2 in
    return v1 + v2
}
test(v1: 20, v2: 30,fn:{v1,v2 in
    return v1 + v2
})

test(v1: 30, v2: 40) {$0 + $1 }


var numberArray = [20,30,10,5,50]
/**
闭包的几种写法
 */

numberArray.sort(by: {
   ( v1: Int,v2: Int) -> Bool in
    return v1 > v2
})

numberArray.sort(by: {
    v1,v2 in
    return v1 > v2
})

numberArray.sort(by: {
    v1, v2 in v1 > v2
})

numberArray.sort(by: {
    $0 > $01
})

numberArray.sort(by: > )

/**
  最后一个实参是闭包的时候可以使用尾随闭包
 */
numberArray.sort() { $0 > $1 }

numberArray.sort { v1, v2 in
    v1 > v2
}

numberArray.sort { $0 > $1 }

print(numberArray)




