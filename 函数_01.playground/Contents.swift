import UIKit

//==========================================函数============================================
//函数的形参是 let

/// 带参数和返回值的函数
/// - Parameters:
///   - number1: xx
///   - number2: xx
/// - Returns: 返回值
func sum(number1:Int,number2:Int) -> Int {
    return number1 + number2
}

//隐式返回值 如果只有一条语句可以不写 return
func sum1(number1:Int,number2:Int) -> Int {
    number1 + number2
}

// 函数不带返回值 Void、() 或者不写
func sum2(number1:Int,number2:Int) -> Void {
    print(number1 + number2)
}
func sum3(number1:Int,number2:Int){
    print(number1 + number2)
}
func sum4(number1:Int,number2:Int) -> () {
    print(number1 + number2)
}

sum4(number1:10,number2:20)

/// 参数 标签 参数别名
/// - Parameter number1: xx
func sum5(num number1:Int){
    print("传入参数：\(number1)")
}

sum5(num: 10)
/**
 传入参数：10
 */

print("====================================")

// 使用 _ 来可以省略标签
func sum6(_ num1: Int,_ num2: Int)->Int{
    num1 + num2
}
sum6(20, 30)


//默认参数

func sum7(number1: Int = 10,number2:Int){
    print("number1:\(number1) number2:\(number2) ")
}

sum7(number1: 11 ,number2: 20)
sum7(number2: 30)
/**
 number1:11 number2:20
 number1:10 number2:30
 */

print("====================================")

// inout 输入输出参数 传入 参数的地址 可以让参数可以被修改 不可能使用 _ 省略标签
// inout 是地址传递 即引用传递
var number8 = 10
func sum8(num:inout Int){
    num = 200
}
sum8(num: &number8)
print("number8:\(number8)")
/**
 number8:200
 */
print("====================================")

//可变参数
func sum9(numberArray: Int ...)
{
    var sum1 = 0
    for index in 0...numberArray.count - 1{
        sum1 += numberArray[index]
    }
    
    var sum2 =  0
    for tempNum in numberArray{
        sum2 += tempNum
    }
    print("sum1:\(sum1)")
    print("sum2:\(sum2)")

}
sum9(numberArray: 10,20,30,40)

/**
 sum1:100
 sum2:100
 */
print("====================================")

// 可变参数 后面的参数标签不能省略，可变参数的标签可以省略

func sum10(_ numberArray: Int...,name:String){
    var sum = 0
    for tempNum in numberArray{
        sum += tempNum
    }
    print("name->\(name) sum:\(sum)")
}
sum10(10,2,3,4,5, name: "哈哈哈")

/**
 name->哈哈哈 sum:24
 */

print("====================================")
//重载 会优先选择最佳匹配函数即 func sum11(_ num1: Int,_ num2: Int)

func sum11(_ numberArray: Int...){
    var sum = 0
    for tempNum in numberArray{
        sum += tempNum
    }
    print("sum:\(sum)")
}

sum11(10,20)

/**
 sum:30
 */

print("====================================")

// 函数类型作为函数 参数类型

func sum12(_ fun:(Int,Int)->Int,_ number1: Int,_ number2: Int)->Int{
    return fun(number1,number2)
}
print(sum12(sum6, 10, 20))

/**
 30
 */

print("====================================")

//函数类型当作类型

var funname1:(Int,Int)->(Int)

var funname2:(Int,Int)->()

var funname3:()->()

func sum13(_ fun:(Int,Int)->Int,_ number1: Int,_ number2: Int)->Int{
    return fun(number1,number2)
}

//函数类型当作返回值类型

func subtraction(_ num1: Int,_ num2: Int)->(Int){
    num1 - num2
}

func addition(_ num1: Int,_ num2: Int)->(Int){
    num1 + num2
}


func sum14(type: Int)->(Int,Int)->(Int){
    if type == 0{
        return addition
    }else{
        return subtraction
    }
}


let result1 = sum14(type: 0)(10,20)

let result2 = sum14(type: 1)(100,20)

print(result1)

print(result2)

/**
 30
 80
 */
print("====================================")

//嵌套函数

func sum15(type: Int)->(Int,Int)->(Int){
    func subtraction(_ num1: Int,_ num2: Int)->(Int){
        num1 - num2
    }
    func addition(_ num1: Int,_ num2: Int)->(Int){
        num1 + num2
    }
    return type == 0 ? addition : subtraction
}

print("嵌套函数:\(sum15(type: 1)(1,2))")
