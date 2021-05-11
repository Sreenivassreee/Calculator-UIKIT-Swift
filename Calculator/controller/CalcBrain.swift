//
//  CalcBrain.swift
//  Calculator
//
//  Created by Sreenivas k on 11/05/21.
//

import Foundation

struct CalcBrain {
    var interCalc  : (n: Double, s: String)?
    mutating func Calc(number:Double,symbol:String) -> Double?{
        if symbol != nil{
            if number != nil{
                switch symbol {
                case "AC":
                    return 0.0
                case "+/-":
                    return Double(number * -1.0)
                case "%":
                   return Double(number / 100)
                case "=":
                    print("=")
                    return performTwoCalc(n2:number)
                default:
                    print("Default")
                    interCalc = (n:number,s:symbol)
                }
                
            }else{
                return nil
            }
        }else{
            return nil
        }
        return nil
    }
    func performTwoCalc(n2:Double) -> Double? {
        var ans:Double=0.0
        if let n1 = interCalc?.n {
            if let operation = interCalc?.s{
                switch operation{
                case "x":
                    ans = n1*n2
                case "-":
                    ans=n1-n2
                    
                case "+":
                    print("+")
                    ans=n1+n2
                case "÷":
                    ans=n1/n2
                default:
                    print("Something error")
                }
                return ans
            }
                
        }
return ans
    }
}
