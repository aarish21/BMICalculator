//
//  ViewController.swift
//  BMICalculator
//
//  Created by Aarish Rahman on 30/03/21.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet var height: UILabel!
    @IBOutlet var weight: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    
    @IBAction func heightValue(_ sender: UISlider) {
        
        let h = String(format: "%.2f", sender.value)
        height.text = "\(h)m"
        
        
    }
    
    @IBAction func weightValue(_ sender: UISlider) {
        
        let w = String(format: "%.0f", sender.value)
        weight.text = "\(w)kg"
    }
    
    @IBAction func calculateBmi(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "bmiResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "bmiResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            
            
            
        }
        
    }
}

