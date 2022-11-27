import UIKit

//枚举定制
enum PayType
{
    case alipay
    case wechat
    case bank
    case other
}

enum PayType1
{
    case alipay,wechat,bankother
}

var type = PayType.alipay

type = PayType.bank
//确定了 type 的枚举类型之后可以直接 .枚举类型值
type = .wechat

print(PayType.alipay)


enum Password
{
    case number(Int,Int,Int,Int,Int,Int)
    case gestrue(String)
}

Password.number(0, 1, 2, 3, 4, 5)
Password.gestrue("12369")

//枚举后面可以带具体确认的类型

enum CustomType: Int{
    case none = 1,up = 2,down = 3
}

enum CustomType2: Int{
    case none = 1
    case up = 2
    case down = 3
}

//递归枚举 indirect
//下面两种方式都可以
indirect enum CustomType3
{
    case int(Int)
    case customType1(CustomType3,CustomType3)
    case customType2(CustomType3,CustomType3,CustomType3)
}

enum CustomType4
{
    case int(Int)
    indirect case customType1(CustomType4,CustomType4)
    indirect case customType2(CustomType4,CustomType4,CustomType4)
}

var type4 = CustomType4.int(10)



var type5 = CustomType4.int(1000)

MemoryLayout.size(ofValue: type5)
MemoryLayout.stride(ofValue: type5)
MemoryLayout.alignment(ofValue: type5)



//siz 分配占用的空间的大小 stride实际使用到的空间大小    alignment 对其参数

MemoryLayout<Int>.size      //8
MemoryLayout<Int>.stride    //8
MemoryLayout<Int>.alignment //8

MemoryLayout.size(ofValue: type4)       //9
MemoryLayout.stride(ofValue: type4)     //16
MemoryLayout.alignment(ofValue: type4)  //8


MemoryLayout<CustomType4>.size      //9
MemoryLayout<CustomType4>.stride    //16
MemoryLayout<CustomType4>.alignment //8

