//
//  StatisticsViewController.swift
//  TwoIntegersAddingAssignment
//
//  Created by Nurtilek on 11/3/20.
//

import UIKit

class StatisticsViewController: UIViewController {
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "The last result: \(result)"

    }
    
    @IBOutlet weak var resultLabel: UILabel!
}

