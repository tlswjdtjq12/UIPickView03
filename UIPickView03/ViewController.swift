//
//  ViewController.swift
//  UIPickView03
//
//  Created by D7703_19 on 2018. 4. 19..
//  Copyright © 2018년 s22dfg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    

    
    @IBOutlet weak var myPickrView: UIPickerView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mylbl02: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickrView.delegate = self
        myPickrView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 10
        } else {
            return 100
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "First\(row)"
        } else {
            return "second \(row)"
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            myLabel.text = "First \(row)"
        }else{
            mylbl02.text = "second\(row)"
        }
        
    }
    
}

