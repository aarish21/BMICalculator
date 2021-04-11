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
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.image = calculatorBrain.getImage()
            
            
            
            
        }
        
    }
    
}
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

