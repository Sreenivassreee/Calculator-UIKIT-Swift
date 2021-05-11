///
//  ViewController.swift
//  Calculator
//
//  Created by Sreenivas k on 21/03/21.
//

import UIKit

class ViewController: UIViewController {
var isFirstLetter=true
    var isFirstDot=true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var AnswerLable: UITextView!
    
    @IBAction func NumberPressed(_ sender: UIButton) {
        
        if isFirstLetter{
            AnswerLable.text = sender.currentTitle
            isFirstLetter=false
        }else{
           
            if sender.currentTitle=="." && isFirstDot {
                isFirstDot=false
                AnswerLable.text = AnswerLable.text + sender.currentTitle!
            }else if sender.currentTitle=="." {
            }else{
                AnswerLable.text = AnswerLable.text + sender.currentTitle!
            }
        }
        
    }
    @IBAction func symbolPressed(_ sender: UIButton) {
        var num=Double(AnswerLable.text!)!
        switch sender.currentTitle {
        case "AC":
            AnswerLable.text = "0"
        case "+/-":
            print(type(of: AnswerLable.text!))
            AnswerLable.text? = String(num * -1.0)
        case "%":
            AnswerLable.text = String(Double(AnswerLable.text!)!/100)
        default:
            print("de")
            
        }
        
    }
}

