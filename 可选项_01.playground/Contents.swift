import UIKit

let number = Int("12312")

var number2: Int?

var number4 = number! + 10

var number5 = 10

print("number3:\(number4))")

if let number3 = number2{
    print("number3:\(number3)")
}else{
    print("number3: is nil")
}

enum CustomType:Int{
    case A = 1,B,C,D
}

var type = CustomType(rawValue: 1)

//等阶的时候不能使用 && 要使用,

if let number6 = Int("9") , number6 > 10 {
    print("转换的数字大于10")
}else{
    print("转换的数字小于10")
}

var a: Int? = nil
var b: Int? = nil
let c = a ?? b
print("c:\(c ?? 1)")


var a1: Int? = 1
var b1: Int? = 2
let c1 = a1 ?? b1
print("c1:\(c1 ?? 0)")


var a2: Int? = 1
var b2: Int? = nil
let c2 = a2 ?? b2
MemoryLayout.alignment(ofValue: c2)
print("c2:\(c2 ?? 0)")


var a3: Int? = 1
print(a3)
var b3: Int = 2
let c3 = a3 ?? b3
print("c3:\(c3)")

func login(_ info:[String:String]){
    let username:String? = info["username"]
    let password:String? = info["password"]
    if let user = username,let pwd = password{
        print("参数校验通过 user:\(user) pwd:\(pwd)")
    }else{
        print("参数不全")
    }
}

func login1(_ info:[String:String]){
    guard let username = info["username"] else{
        print("username is nil")
        return
    }
    guard let password = info["password"] else{
        print("password is nil")
        return
    }
    
    print("username:\(username) password:\(password)")
}




login(["username":"123","password":"123"])

login1(["username":"123","password":"123"])


//guard

/**
 guard 条件else {
 .....
 //退出语句
 }
 
 
 */


