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
