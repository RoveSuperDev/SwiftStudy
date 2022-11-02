import UIKit

let nameArray = ["张三","李四","王麻子"]
for index in 0...nameArray.count - 1{
    print("name:\(nameArray[index])")
}


let startIndex = 1
let EndIndex = 10
for index in startIndex ..< EndIndex{
    print(index)
}

for _ in 1..<10{
    print("***")
}


//单侧区间
//1到正无穷
let numberRange1: PartialRangeFrom<Int> = 1...

//1到负无穷
let numberRange2: PartialRangeThrough<Int> = ...1

let numberRange3: ClosedRange<Int> = 1...10
//前开后闭
let numberRange4: Range<Int> = 1..<2

let numberRange5: PartialRangeThrough<Int> = ...1

let numberRange6: PartialRangeFrom<Int> = 1...

let numberRange7: PartialRangeUpTo<Int> = ..<10

print(numberRange1.contains(100) ? "在该范围" : "不在该范围")



let stringRange1 = "AA"..."FF";

print("============")

if stringRange1.contains("BC"){
    print("YES")
}
print("============")
if stringRange1.contains("CF"){
    print("YES")
}

print("============")

//带间隔区间取值 stride 从 1 开始 到 11 结束 每次加 2
for number in stride(from: 1, through: 11, by: 2)
{
    print(number)
}
print("============")

let numberArray = [1,20,3,40,50,5,10]

for number in numberArray[1...]
{
    print(number)
}
print("============")

for number in numberArray[...3]
{
    print(number)
}
print("============")
for number in numberArray[0...3]
{
    print(number)
}
print("============")
for number in numberArray[0...numberArray.count-1]
{
    print(number)
}

print("============")

let index = 1
//不需要写 break 默认并不会贯穿 如果需要贯穿可以加入 fallthrough
switch index{
case 1:
    print("1")
case 2:
    print("2")
case 3:
    print("3")
default :
    print("Not Found")
}

print("============")

let index2 = 1
//不需要写 break 默认并不会贯穿 如果需要贯穿可以加入 fallthrough
switch index2{
case 1:
    fallthrough
case 2:
    print("2")
case 3:
    print("3")
default :
    print("Not Found")
}
print("============")

//fallthrough 进行贯穿 switch case 之后必须有 default 如果能保证处理了所有情况 那么可以不需要 default。例如 枚举
switch index{
case 1:
    print("1")
    fallthrough
case 2:
    print("2")
    fallthrough
case 3:
    print("3")
    fallthrough
default :
    print("Not Found")
}
print("============")


enum CustomType {case A,B}

let type = CustomType.A
switch type{
case CustomType.A:
    print("A")
case CustomType.B:
    print("B")
}

print("============")

let name = "张三"
switch name{
case "张三":
    print("张三")
default:
    print("Not Found")
}
//使用 , 包含多个值
print("============")
let index3 = 2
switch index3{
case 1,2,3:
    print("1、2、3")
default:
    print("Not Found")
}

print("============")

//使用区间匹配
let index4 = -10
switch index4{
case ...1:
    print("小于等于 1")
case 2...10:
    print("2到10之间")
case 11...100:
    print("11到100之间")
case 101..<200:
    print("101到200之间前开后闭")
default:
    print("大于等于200")
}
print("============")


let point = (1,1)
switch point{
case (let x , 1):
    print("Point X :\(x)")
case let(x,y) where x == y:
    print("x 和 y 相等")
default:
    break
}

print("============")

// where 过滤
let numberArray2 = [-1,20,-20,2,3,44]
var sum = 0
for numbe1 in numberArray2 where numbe1 > 0{
    sum += numbe1
}
print("sum:\(sum)")
print("============")

//==================函数====================
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

func sum2(number1:Int,number2:Int) -> Void {
    print(number1 + number2)
}

func sum3(number1:Int,number2:Int) -> () {
    print(number1 + number2)
}

