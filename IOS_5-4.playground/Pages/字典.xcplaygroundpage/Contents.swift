//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


//MARK 定义,key value
let dic1 = ["name":"tom","age":"19"]
print(dic1)

//不同对象必须声明为Any
let dic2:[String:Any] = ["name":"tom","age":19]
print(dic2)

//TODO:字典的数组，用的最多,json
let array = [
    ["name":"jerry","age":18],
    ["name":"tom","age":"22"]
]
print(array)
print("-----------")
//MARK:空字典
var emptyDic = Dictionary<String,Any>()
print(emptyDic)
print("-----------")
//MARK 增删改查
//可变var
var dic3 = ["name":"john","age":"20"]
print(dic3)
//增加
dic3["title"] = "scienist"
print(dic3)
//不可变let

//改,key必须是唯一的，通过key取值，key不存在就是新增，存在就是修改
dic3["name"] = "改个名字"
print(dic3)


//删除.
//key可是是hash，MD5的一种，
//hash将字符串变成唯一的整数，便于查找
//1
dic3.removeValue(forKey: "age")
print(dic3)
//2
dic3["name"] = nil
print(dic3)

//查找
print(dic3["name"])
print(dic3["title"])

print("-----------")

//MARK 遍历
//不同对象必须声明为Any,不然就要转换格式
let dic4 = ["name":"swift" ,"age":3,"platform":"ios"] as [String : Any]
//1
for e in dic4{
    print(e)
}
print("-----------")
//2
for e in dic4{
    print("\(e.key),\(e.value)")
}
print("-----------")

//3,key,value,随便取名
for (key,value) in dic4{
    print("\(key) = \(value)")
}

print("-----------")
//MARK 合并,不同于数组相加

for e in dic4{
    emptyDic[e.key] = dic4[e.key]
}
print("emptyDic = \(emptyDic) /" ,dic4)

//: [Next](@next)
