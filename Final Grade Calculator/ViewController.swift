//
//  ViewController.swift
//  Final Grade Calculator
//
//  Created by Nathan Kim on 10/26/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var helpLabel: UILabel!
    @IBOutlet weak var gradePicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func myButton(_ sender: UIButton) {
        let C = textField1.text!
        let DG = textField2.text!
        let W = Double(textField3.text!)!
        
        let number1 = Double(C)!
        let number2 = Double(DG)!
        let number3 = Double(W/100)
        
        let numerator: Double = number2 - (1 - number3) * number1
        let denominator = number3
        let finalExamGrade = numerator / denominator
        let finalExamGrade2 = Double(round(1000*finalExamGrade)/1000)
        finalLabel.text = "You need a \(finalExamGrade2)% on the final exam"
        
        if finalExamGrade2 < 100 {
            view.backgroundColor = .green
        } else {
            view.backgroundColor = .red
            helpLabel.text = "Ask your teacher for extra credit :)"
        }
        
    }
}

