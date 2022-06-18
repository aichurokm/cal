//
//  ViewController.swift
//  mkacalc
//
//  Created by Aichurok Maralbek kyzy on 10/6/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var AC: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var but4: UIButton!
    
 
    
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var bM: UIButton!
    
    
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var bmin: UIButton!
    

    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var bp: UIButton!
    
  
    
    @IBOutlet weak var b0: UIButton!
    @IBOutlet weak var bcoma: UIButton!
    @IBOutlet weak var bequal: UIButton!
    
    
    @IBOutlet weak var TextField: UITextField!
    
    
    var firstNumber: String = ""
    var secondNumber: String = ""
    var operation: String = ""
    var result: Int = 0
    var isResultFound: Bool = false

    
    fileprivate func extractedFunc() {
        // Do any additional setup after loading the view.
        
        
        AC.layer.cornerRadius = AC.frame.width / 2
        AC.layer.masksToBounds = true
        
        button2.layer.cornerRadius = button2.frame.width / 2
        button2.layer.masksToBounds = true
        
        but3.layer.cornerRadius = but3.frame.width / 2
        but3.layer.masksToBounds = true
        
        but4.layer.cornerRadius = but4.frame.width / 2
        but4.layer.masksToBounds = true
        
        b7.layer.cornerRadius = b7.frame.width / 2
        b7.layer.masksToBounds = true
        
        b8.layer.cornerRadius = b8.frame.width / 2
        b8.layer.masksToBounds = true
        
        b9.layer.cornerRadius = b9.frame.width / 2
        b9.layer.masksToBounds = true
        
        bM.layer.cornerRadius = bM.frame.width / 2
        bM.layer.masksToBounds = true
        
        b4.layer.cornerRadius = b4.frame.width / 2
        b4.layer.masksToBounds = true
        
        b5.layer.cornerRadius = b5.frame.width / 2
        b5.layer.masksToBounds = true
        
        b6.layer.cornerRadius = b6.frame.width / 2
        b6.layer.masksToBounds = true
        
        bmin.layer.cornerRadius = bmin.frame.width / 2
        bmin.layer.masksToBounds = true
        
        b1.layer.cornerRadius = b1.frame.width / 2
        b1.layer.masksToBounds = true
        
        b2.layer.cornerRadius = b2.frame.width / 2
        b2.layer.masksToBounds = true
        
        b3.layer.cornerRadius = b3.frame.width / 2
        b3.layer.masksToBounds = true
        
        bp.layer.cornerRadius = bp.frame.width / 2
        bp.layer.masksToBounds = true
        
        bcoma.layer.cornerRadius = bcoma.frame.width / 2
        bcoma.layer.masksToBounds = true
        
        bequal.layer.cornerRadius = bequal.frame.width / 2
        bequal.layer.masksToBounds = true
        
        b0.layer.cornerRadius = 40
        b0.layer.masksToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        extractedFunc()
    }
    
    
    @IBAction func NumberTapped(_ sender: UIButton) {
        
        if isResultFound{
            reset()
            
        }
    
        switch sender.tag{
        case 0:
            print("0")
            if operation.isEmpty{
            firstNumber += "0"
            TextField.text = firstNumber
            }else{
                secondNumber += "0"
                TextField.text = secondNumber
            }
        case 1:
            print("1")
            if operation.isEmpty{
            firstNumber += "1"
            TextField.text = firstNumber
            }else{
                secondNumber += "1"
                TextField.text = secondNumber
            }
        case 2:
            print("2")
            if operation.isEmpty{
            firstNumber += "2"
            TextField.text = firstNumber
            }else{
                secondNumber += "2"
                TextField.text = secondNumber
            }
        case 3:
            print("3")
            if operation.isEmpty{
            firstNumber += "3"
            TextField.text = firstNumber
            }else{
                secondNumber += "3"
                TextField.text = secondNumber
            }
        case 4:
            print("4")
            if operation.isEmpty{
            firstNumber += "4"
            TextField.text = firstNumber
            }else{
                secondNumber += "4"
                TextField.text = secondNumber
            }
        case 5:
            print("5")
            if operation.isEmpty{
                firstNumber += "5"
                TextField.text = firstNumber
                }else{
                    secondNumber += "5"
                    TextField.text = secondNumber
                }
        case 6:
            print("4")
            if operation.isEmpty{
            firstNumber += "6"
            TextField.text = firstNumber
            }else{
                secondNumber += "6"
                TextField.text = secondNumber
            }
        case 7:
            print("4")
            if operation.isEmpty{
            firstNumber += "7"
            TextField.text = firstNumber
            }else{
                secondNumber += "7"
                TextField.text = secondNumber
            }
        case 8:
            print("4")
            if operation.isEmpty{
            firstNumber += "8"
            TextField.text = firstNumber
            }else{
                secondNumber += "8"
                TextField.text = secondNumber
            }
        case 9:
            print("4")
            if operation.isEmpty{
            firstNumber += "9"
            TextField.text = firstNumber
            }else{
                secondNumber += "9"
                TextField.text = secondNumber
            }
        default:
            print("There is no such number")
        }
    }
  
   
    @IBAction func operation(_ sender: UIButton) {
    
        switch sender.tag{
        case 10:
            print("/")
            operation = "/"
        case 11:
            print("*")
            operation = "*"
        case 12:
            print("-")
            operation = "-"
        case 13:
            print("+")
            operation = "+"
        case 15:
            print("%")
            operation = "%"

        default:
            print("There is no such operations")
        }
        
}
    
    @IBAction func solve(_ sender: UIButton) {
    
        guard let first = Int(firstNumber), let second = Int(secondNumber)
        else {return}
        
//        func *(first: Int, second: Double){
//        return Double(first) * second
//        }
        
        switch operation{
        case "+":
            result = first + second
            firstNumber = "\(result)"
        case "-":
            result = first - second
            firstNumber = "\(result)"
        case "/":
            result = first / second
            firstNumber = "\(result)"
        case "*":
            result = first * second
            firstNumber = "\(result)"
        case "%":
            result = first * second / 100
            firstNumber = "\(result)"
        default:
            print("Go home, you are tired")
        }
        isResultFound = true
        
        TextField.text = "\(result)"
        
    }
    func reset(){
        firstNumber = ""
        secondNumber = ""
        result = 0
        operation = ""
        isResultFound = false
}
    
    @IBAction func deleteAll(_ sender: UIButton) {
    reset()
        TextField.text = "0"
    }

    @IBAction func changeDimen(_ sender: UIButton) {
        if isResultFound{
            if result>0{
                result = -(result)
            }else{
                result = abs(result)
            }
            TextField.text = "\(result)"
        } else if !isResultFound && !operation.isEmpty{
            if var second = Int(secondNumber){
                if second > 0 {
                    second = -second
                    secondNumber = "\(second)"
                } else{
                    second = abs(second)
                    secondNumber = "\(second)"
                }
                TextField.text = "\(result)"
            } else if !isResultFound && !operation.isEmpty{
                if var first = Int(firstNumber){
                    if first > 0 {
                        first = -first
                        firstNumber = "\(first)"
                    } else{
                        first = abs(first)
                        firstNumber = "\(first)"
                    }
                    TextField.text = "\(result)"
    }
}
}
}
}
