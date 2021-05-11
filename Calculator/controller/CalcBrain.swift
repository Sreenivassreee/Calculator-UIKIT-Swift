//
//  CalcBrain.swift
//  Calculator
//
//  Created by Sreenivas k on 11/05/21.
//

import Foundation

struct CalcBrain {
    func Calc(number:Double,symbol:String) -> Double?{

        if symbol != nil{
            if number != nil{
                switch symbol {
                case "AC":
                    return 0.0
                case "+/-":
                    return Double(number * -1.0)
                case "%":
                   return Double(number / 100)
                default:
                    return 0.0
                }
            }else{
                return 0.0
            }
        }else{
            return 0.0
        }
    }
}
