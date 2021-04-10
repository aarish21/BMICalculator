//
//  CalculatorBrain.swift
//  BMICalculator
//
//  Created by Aarish Rahman on 10/04/21.
//

import Foundation

struct CalculatorBrain {
    var bmiV: Float = 0.00
    mutating func calculateBMI(height: Float, weight: Float){
        
        bmiV = weight/(height*height)
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiV)
    }
}


