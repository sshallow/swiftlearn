import UIKit
/*
var greeting = "Hello, playground"

let constans: String

greeting = "no hello"

constans = "他是常量"

let x = 0, y = 0, z = 0
//let q,  w ,e = 0

let width = 94
let height = "200"
let allLength = height + String(width)

let allLength1 = "这是\(width)字符串"
print("测试 print")//本来就有\n
let qq :String = "2"

let 牛逼 = "哈哈"
print(牛逼)
let longString = """
第一行
第二行
第三行
"""

var array = ["1","2","3"]
array[1] = "22222" //数组元素修改只能为同类元素


var arrayString = [String]()

arrayString.append("111")

var emptyArray = [String]()
var emptyDic = [String:Float]()//创建空的

for x in 0..<5 {
//    if let N = 3 ?="可选" {
//        print("这是可选值\(N)")
//    }
    print(x*100)
}


//函数的学习
func funcName(hh p1: String) -> String {
    return "name is \(p1)"
}

funcName(hh: "尚帅")

func funcArray(numbers: Int...) -> (r1: Int, r2: Int, r3: Int) {
    var max = numbers[0]
    var min = numbers[0]
    var all = numbers[0]
    for i in numbers {
        if i > max {
            max = i
        } else if i < min {
            min = i
        }
        all += i
    }
    return (min, max, all)
}

funcArray(numbers: 1, 10, 300, 32)

//函数作为返回值
func funcParamter(_ p1: Int) -> ((Int) -> (String)) {
    func rFunc(p: Int) -> String {
        print(p1 * 3)
        return "这是 3 倍\(p1 * 3)"
    }
    return rFunc(p:)
}

var funcP = funcParamter(10)
funcP(100)

//函数作为参数
func funcParameter(number1: Int..., func1: (Int) -> Bool) -> Int {
    var all = 0
    for x in number1 {
        if func1(x) {
            all += x
        }
    }
    return all
}
let block = { (x) -> Bool in
    x > 5
}
funcParameter(number1: 1,2,3,4,5,6,7,8,9, func1:{(x: Int) -> Bool in
    if x > 6 {
        return true
    } else {
        return false
    }
})

//闭包
let mappedNumbers = { number in 3 * number }
print(mappedNumbers(2))

let numbers = [1,2,3]
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

//闭包疑问❓↑
"""
你可以调用参数通过数字而非名字——这个特性在非常简短的闭包当中尤其有用。当一个闭包作为函数最后一个参数出入时，可以直接跟在圆括号后边。如果闭包是函数的唯一参数，你可以去掉圆括号直接写闭包。
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
[1,2,3]
3,2,1
"""


//对象和类

class shang {
    var name = ""
    var height: Int = 0
    func produceSelf(name: String) -> String {
        print("大家好，我叫shang\(self.name)")
        return "大家好，我叫shang\(self.name)"
    }
}

var shang1 = shang()
shang1.name = "帅"
//shang1.produceSelf(name:shang1.name)

class subShang: shang {
    var bigName: String = ""
    var heigth1: Double
    
    override init() {
        heigth1 = 170
    }
    override func produceSelf(name: String) -> String {
        super.produceSelf(name: name)
        print("哈喽啊，我的名字是尚\(bigName)")
        return "哈喽啊，我的名字是尚\(bigName)"
    }
}

var subshang1 = subShang()
print(subshang1.heigth1)
subshang1.produceSelf(name: "帅哥")

//对象和类的疑问❓
"""
willset
didset
可选项，解包
"""

//枚举和结构体
enum Meiju: String {
    case s1
    case s2
    case s3
}

var s = Meiju.s2
print(s)
switch s {
case .s1:
    print("这是 s1")
case .s2:
    print("这是 s2")
case .s3:
    print("这是 s3")
default:
    print("这是 默认")
}

//疑问点❓ 枚举的使用，原始值

//


//print 函数
print(1,2,3,4, separator: "分隔符", terminator: "终结者")

let zhishu  = 12.4e2

var r = zhishu / 10

print(r)

let x1 = 1000_1000

print(x1 / 20)

let two: UInt16 = 2000
let one: UInt32 = 10

var r1 = two + UInt16(one)
print(r1)

//元组
let http404Error = (404, "not found")

let (hh1,_) = http404Error
print(hh1)


let string1 = "hello"
let string2 = "123456789"


let num = Int(string1)
let num1 = Int(string2)
print(num,num1)

var sverstring:String? = "nil 不能为非可选赋值"

sverstring = nil

let optionString = "123"

if let tempString = Int(optionString) {
    print(tempString, optionString)
}

if let op = Int(optionString), var op2 = Int(optionString) {
    op2 = 135
    print(op,op2)
}


let op1: String? = "可选项 1"
let qr1: String = op1!

print(op1 , qr1)

var op2: String! = "11"

op2 = nil

// 可选项没有值时，强制展开，会报错
// 隐式展开可选项为 nil 时，访问，也会报错



//print(Int("hj")!)
//let qr2: String = op2
//
//
//print(op2, qr2)
*/

enum MyError: Error {
    case b1
    
}
func canThrowAnError() throws -> Int {
    let a = 1
    let b = 2
    var c: Int? = a + b
    c = nil
    if let c1 = c {
        print(c1)
    } else {
        throw MyError.b1
    }
    
}


do {
    try canThrowAnError()
} catch {
    print("滚滚滚")
}

let a = Int("1231")!
//assert( a == 123, "这个地方断言 false")
//assertionFailure("什么什么？")
precondition(a == 1232, "哈哈哈哈")
//do {
//    try canThrowAnError()
//} catch {
//    print("catch error")
//}
print("都")
