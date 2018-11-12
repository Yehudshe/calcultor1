//
//  ViewController.swift
//  calcultor1
//
//  Created by yehuda sheleg on 24/10/2018.
//  Copyright © 2018 yehuda sheleg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypeing = false
    
    @IBAction func digitPressed(_ sender: UIButton) {
        
        if let digit = sender.currentTitle {
            
            if userIsInTheMiddleOfTypeing{
            display.text =  display.text! + digit
            }
            else{
                userIsInTheMiddleOfTypeing = true
                display.text! = digit
            }
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    }
    
    var change:Int = 0
    var change2:Int = 1
    
    func thisIsAllSoAChang(){
        
        
    }
    
    var displayValue:Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text! = "\(newValue)"
        }
    }
    
    var b = 1
    
    
    var brain = CalcultorBrain()
    
    var c:String = " "
    

    @IBAction func performOpertion(_ sender: UIButton) {
        userIsInTheMiddleOfTypeing = false
        if let symbol = sender.currentTitle {
            
            brain.acmumlator = displayValue
            brain.performOpertion(symbol: symbol)

            if let result = brain.result {
                displayValue = result
                print("this is a print!")
                print("this tow, this three,")
                
                
            }
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

