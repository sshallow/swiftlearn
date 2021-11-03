//
//  ViewController.swift
//  SwiftLearn001
//
//  Created by smart on 2021/11/1.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var optionName1: String? = "可选项"
        optionName1 = "可选项 1 有值"
        print(optionName1)
        
        var optionName2: String? = nil
        
        print(optionName2)

        if let name = optionName2 {
            print("可选值")
            print(name)

        }
        
        var string1 = "热热热"
        switch string1 {
        case "hhh":
            print("哈哈哈")
        case "111":
            print("一一一")
        case "222":
            print("二二二")
        case "热热热":
            print("中午")
        default:
            print("默认")
        }
        
        let dic = ["key1": 123,
                   "key2": 234,
                   "key3": 345]
        for (keyname, values) in dic {
            print("键：\(keyname) 值\(values)")
        }
        
        var n = 2
        while n<2 {
            n = n * 2
            print(n)

        }
        print("终止",n)

        var m = 2
        repeat {
            m = m * 2
            print(m)

        } while m < 2
        print(m,"最终 m")
       
        
        
        
        for i in 0...4 {
            print(i)
        }
        print("拉黑了就")
        let h = hanshuming("hhh", on: "急急急")
        print(h)
        
        let mp = mutiParm(hhh: "参数", jjj: 100)
        print(mp.p4)
        print(mp.2)
        
        let a = arrnil("gg","qq","adsh")
        print(a)
        
//        print(neiqian("90"))
        
        let neiq = neiqian()
        print(neiq("内嵌"))
        
        print(bigFunc(list: [1,2,3,4], func1: smallFunc(i:)))
        neiqianhanshu1(string1: "1")
        vari(members: 4,3,5)

        let bibao = {(s: Int) -> String in
            print(s*100)
            return "gg"
        }
        bibao(25)
    }

    func vari<N>(members: N...){
        for i in members {
            print(i)
        }
    }
    
    func hanshuming(_ canshu1: String, on canshu2: String) -> String {
        var result = canshu1 + canshu2
        return result
    }

    func mutiParm(hhh: String, jjj: Int) -> (p1: Int, p2: Int, p3: String, p4: String) {
        var p1 = jjj * 2
        var p2 = jjj * 4
        var p3 = hhh + "哈哈哈"
        var p4 = hhh + "嗯嗯嗯"
        return (p1, p2, p3 ,p4)
    }
    
    func arrnil(_ array: String...) -> Int {
        return array.count * 2
    }
    
    func neiqian() -> ((String) -> String) {
        let v = "12345"
        
        func neiqian2(j: String) -> String {
            return j + v
        }
        return neiqian2
    }
    
    func bigFunc(list: [Int], func1: (Int) -> String) -> String {
        var r = ""
        for i in list {
            r = func1(i) + r
        }
        return r
    }
    func smallFunc(i: Int) -> String {
        return String(i * 2)
    }
    
    func neiqianhanshu1(string1: String) -> String {
        var n1 = "n1"
        func neiqianhanshu2(string2: String) -> String {
            var n2 = "n2"
            func neiqianhanshu3(string3: String) -> String {
                var n3 = "n3"
                print(n1)
                return n3
            }
            return neiqianhanshu3(string3: "1")
        }
        return neiqianhanshu2(string2: "1")
    }
    
    
}

