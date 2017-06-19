//
//  ViewController.swift
//  converter1
//
//  Created by Galym Anuarbek on 6/13/17.
//  Copyright © 2017 Galym Anuarbek. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var Array = ["meters - inches","inches - meters", "second - minutes", "minutes - seconds"]
    
    @IBOutlet weak var answer: UILabel!
    
    var chosenRow = 0
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @IBAction func convert(_ sender: Any) {
        let value: Double? = Double(textField.text!)
        if chosenRow == 0 {
            answer.text = String(value!*39.3701)
        }else if chosenRow == 1 {
            answer.text = String(value!/39.3701)
        }else if chosenRow == 2 {
            answer.text = String(value!/60)
        }else if chosenRow == 3 {
            answer.text = String(value!*60)
        }else {
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chosenRow = row;
}
}
