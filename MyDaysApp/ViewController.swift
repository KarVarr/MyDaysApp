//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Karen Vardanian on 07.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var resultButton: UIButton!
    
    var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 12
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func resultButtonTapped(_ sender: UIButton) {
        infoLabel.text = "You lived on this Earth \(numberOfDays) days"
    }
    
}

