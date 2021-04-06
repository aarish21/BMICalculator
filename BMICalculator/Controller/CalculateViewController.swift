//
//  ViewController.swift
//  BMICalculator
//
//  Created by Aarish Rahman on 30/03/21.
//

import UIKit

class CalculateViewController: UIViewController {
    var bmiValue = "0.00"
    @IBOutlet var height: UILabel!
    @IBOutlet var weight: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
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
        let bmi = weight/(height*height)
        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "bmiResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "bmiResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
            
            
            
        }
        
    }
}

