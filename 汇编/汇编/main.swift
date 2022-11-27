//
//  main.swift
//  汇编
//
//  Created by rsddev on 2022/11/10.
//

import Foundation

let a = 10
let b = 20
if a > b {
    print("A > B")
}else{
    print("A < B")
}



struct Point{
    var x: Int?
    var y: Int?
}
var startPoint = Point(y: 20)
if let x = startPoint.x {
    print("x", x)
}else{
    print("x nil")
}
//enum TestEnum{
//    case test1(Int, Int, Int)
//    case test2(Int, Int)
//    case test3(Int)
//    case test4(Bool)
//    case test5
//}
//var e = TestEnum.test1(10, 20, 30)
//print(Mems.ptr(ofVal: &e))
//
//switch e {
//case let .test1(v1, v2, v3):
//    print("test1", v1, v2, v3)
//case let .test2(v1, v2):
//    print("test2", v1, v2)
//case let .test3(v1):
//    print("test3", v1)
//case let .test4(v1):
//    print("test4", v1)
//case let .test5:
//    print("test5")
//}
