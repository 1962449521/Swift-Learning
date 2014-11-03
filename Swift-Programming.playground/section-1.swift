// Playground - noun: a place where people can play

import UIKit

// Swift 初见 ===================================================================
// 练习 1 显式指定类型为Float 并指定初始值为4
let floatConst : Float = 4
// 练习 2 删除最后一行的String, 错误提示是什么？
let label = "The width is"
let width = 94
let widthLabel = label + " " + String(width)
//let widthLabel = label + (width)
//Cannot invoke '+' with an argument list of type '(String, (Int))'
// 练习 3 使用 \()来把一个浮点计算转换成字符串，并加上某人的名字，和他打招呼
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples, totally \(apples + oranges) fruits"

let appleCosts = 5.0
let orangeCosts = 6.0
let msg = "Hello, Jim. I have cost $\(appleCosts + orangeCosts)."

// 练习四 使用方括号【】来创建数组和字典，并使用下标或者key来访问元素
var shoppingList = ["catfish", "water", "tulips", "blue paint"];
shoppingList[1] = "bottle of water"

var occupation = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
// 练习五 创建一个空数组或者字典， 使用初始化语法
let emptyArray = Array<String>()
let emptyDictionary = Dictionary<String, Float>()
shoppingList = []
occupation = [:];
// 控制流
// if & for
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores
{
    if score > 50
    {
        teamScore += 3
    }
    else
    {
        teamScore += 1
    }
}
println(teamScore)
// if let
var optionalString: String? = "Hello"//声明了一个Optional类型，它可能包含一个String,也可能什么都不含， 等同于 var optioalString: Optional<String>
optionalString == nil

var optionalName: String?//"John Appleseed"
var greeting = "Hello!"
if let name = optionalName//if let 可判断nil 来决定是否执行代码块
{
    greeting = "Hello, \(name)"
}
// switch & let where hasSuffix
let vegetable = "red pepper"
switch vegetable
{
    //运行switch中匹配到的子句之后，程序会退出switch语句，所以不需要写break
    //Switch must be exhaustive, consider adding a default clause
    case "celery" :
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich"
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup."
}
// for - in
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3,5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestType: String?
for (kind, numbers) in interestingNumbers
{
    for number in numbers
    {
        if number > largest
        {
            largest = number
            largestType = kind
        }
    }
}
println("Largest Type: \(largestType); Largest Value: \(largest)")
// while
var n = 2
while n < 100
{
    n *= 2
}

