//
//  ViewController.swift
//  BMICalculator
//
//  Created by Aarish Rahman on 30/03/21.
//

import UIKit

class ViewController: UIViewController {

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
        print(bmi)
    }
}

