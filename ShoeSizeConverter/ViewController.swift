//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by pun samuel on 23/7/15.
//  Copyright (c) 2015 Samuel Pun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // UI Elements Outlet
    @IBOutlet weak var labelMensShoeSize: UILabel!
    @IBOutlet weak var buttonConvert: UIButton!

    @IBOutlet weak var textFieldUSSize: UITextField!
    @IBOutlet weak var labelConvertedValue: UILabel!
    @IBOutlet weak var labelErrorMessage: UILabel!
    
    // Declaration of contstand and variables
    let sizeConversionFactor:Double = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonConvert(sender: UIButton) {
        let shoeSizeinUSString = textFieldUSSize.text
        let shoeSizeinUSDouble = Double((shoeSizeinUSString as NSString).doubleValue)
        
        labelConvertedValue.text = ""
        
        if (shoeSizeinUSDouble == 0) && (shoeSizeinUSString != "0") {
            
            labelErrorMessage.text = "Please enter numbers only"
            labelErrorMessage.hidden = false

            

        } else {
            var shoeSizeinUK:Double = shoeSizeinUSDouble + sizeConversionFactor
            labelConvertedValue.text = "\(shoeSizeinUK)"
            labelConvertedValue.hidden = false
            
        }

        textFieldUSSize.resignFirstResponder()
        
        
    }

}

