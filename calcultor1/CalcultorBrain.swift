//
//  CalcultorBrain.swift
//  calcultor1
//
//  Created by yehuda sheleg on 24/10/2018.
//  Copyright © 2018 yehuda sheleg. All rights reserved.
//

import Foundation


struct CalcultorBrain {
    
    var acmumlator:Double?
    var result:Double?{
        get{
            return acmumlator
        }
    }
    
    
    enum Opertion {
        case unaryOpertion((Double)-> Double)
        case constent(Double)
    
    }
    
    
    let opertions = {["𐍀":Opertion.constent(Double.pi),
                      "√":Opertion.unaryOpertion(sqrt)]
    }()
    
    
    mutating func performOpertion(symbol:String){
        
        
        if let opertion = opertions[symbol] {
            switch opertion{
            case .constent(let value) :
                
                acmumlator = value
                
                break
                
            case .unaryOpertion(let function) :
                
                if let acuumlator = function(acmumlator!) as? Double{
                    self.acmumlator = acuumlator
                }
                break
            }
        }
        
        
    }
    
}
