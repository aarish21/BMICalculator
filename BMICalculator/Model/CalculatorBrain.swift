//
//  CalculatorBrain.swift
//  BMICalculator
//
//  Created by Aarish Rahman on 10/04/21.
//

import UIKit

struct CalculatorBrain {
    var bmiV: BMI?
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmi = weight/(height*height)
        if bmi < 18.5{
        bmiV = BMI(value: bmi, advice: "Seek Help", image: #imageLiteral(resourceName: "pexels-gradienta-7130497"))
        }
        else if bmi < 24.9 {
            bmiV = BMI(value: bmi, advice: "Dont Care", image: #imageLiteral(resourceName: "pexels-gradienta-7135008"))
        }
        else{
            bmiV = BMI(value: bmi, advice: "Fat Ass", image: #imageLiteral(resourceName: "defocused-abstract-background-pastel-colors"))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiV?.value ?? 0.0)
    }
    func getAdvice() -> String{
        return bmiV?.advice ?? "No Advice"
    }
    func getImage() -> UIImage{
        return bmiV?.image ?? #imageLiteral(resourceName: "pexels-gradienta-7130497")
    }
}


