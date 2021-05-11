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
//                switch symbol {
//
//                case "AC":
//                    return 0.0
//                case "+/-":
//                    return Double(number * -1.0)
//                case "%":
//                   return Double(number / 100)
////                case "=":
////                    print("=")
////                    print(performTwoCalc(n2:number))
////
//                default:
//                    print("Default")
//
//                }
                
                if symbol == "="{
                    print("=")
                    print(performTwoCalc(n2:number))
                    return performTwoCalc(n2:number)
                }else if symbol == "AC"{
                    return 0.0
//                    interCalc = (n:number,s:symbol)
                }else if symbol == "+/-"{
                    return Double(number * -1.0)
//                    interCalc = (n:number,s:symbol)
                }else if symbol == "%"{
                    return Double(number / 100)
//                    interCalc = (n:number,s:symbol)
                }else{
                 interCalc = (n:number,s:symbol)
                    print("interCalc?.n")
                    print(interCalc?.n)
                    print("interCalc!.s")
                    print(interCalc!.s)
                }
            }else{
                return nil
            }
        }else{
            return nil
        }
        return nil
    }
    func performTwoCalc(n2:Double) -> Double {
        var ans:Double=2.0
        if let n1 = interCalc?.n , let operation = interCalc?.s{
                print("n1\(operation)")
                print("operation")
                print(operation)
                switch operation{
                case "x":
                    print("X")
                    ans = n1*n2
                    print(n1*n2)
                    return n1*n2
                case "-":
                    print("-   -")
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
        return 2.0
        }
        
    
}
