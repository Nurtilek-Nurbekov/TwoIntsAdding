//
//  ViewController.swift
//  TwoIntegersAddingAssignment
//
//  Created by Nurtilek on 10/28/20.
//

import UIKit

class ViewController: UIViewController {
    
    var result = 0
    
    @IBOutlet weak var EditText1: UITextField!
    @IBOutlet weak var EditText2: UITextField!
    
    @IBOutlet weak var Result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        result = UserDefaults.standard.integer(forKey: "sum")
        
        Result.isHidden = true
    }
    
    @IBAction func EqualButton(_ sender: UIButton) {
        
        let firstVar = Double(EditText1.text!)
        let secondVar = Double(EditText2.text!)
        
        if EditText1.text!.isEmpty && EditText2.text!.isEmpty {
            
            Result.isHidden = false
            Result.textColor = UIColor.red
            Result.text = "Enter value"
        } else {
            
            result = Int(Double(firstVar! + secondVar!))
            
            Result.isHidden = false
            Result.textColor = UIColor.orange
            Result.text = "Sum is \(result)"
            
            UserDefaults.standard.setValue(result, forKey: "")
            
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showHistory" {
            (segue.destination as! StatisticsViewController).result = self.result
        }
    }
    

    @IBAction func handleShowHistory(_ sender: UIButton) {
        performSegue(withIdentifier: "showHistory", sender: nil)
    }
    
}
