//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Aarish Rahman on 07/04/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var backgroundImage: UIImageView!
    
    var bmiValue: String?
    var advice: String?
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text =  bmiValue
        adviceLabel.text = advice
        backgroundImage.image = image
        
        
        
    }
    
    @IBAction func reCalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil) 
        
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
