import UIKit


//typealias 给类型取别名
//
typealias CustomByte = UInt8
//字符串
typealias CustomString = String
//元组
typealias CustomDate = (year: Int, month: Int, day: Int)

typealias CustomFuncType = (Int,Int)->(Int)

func add(number1: Int,number2: Int) -> (Int) {
    number1 + number2
}

var num: CustomByte

var name: CustomString

var date: CustomDate

var fun: CustomFuncType

date = (2022, 11, 04)

num = 255
print(num)
/**
 255
 */

name = "哈哈哈"
print(name)
print("\(date.year)年\(date.month)月\(date.day)日")

/**
 哈哈哈
 2022年11月4日
 */

fun = add
let result = fun(1,20)
print("result:\(result)")

/**
 result:21
 */
