//
//  PolygonsViewController.swift
//  SwiftQuartzLearning
//
//  Created by Wu on 2017/7/27.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class PolygonsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var polygons: PolygonsView!
    
    let drawModes = [
        "Fill",         //0
        "EOFill",       //1
        "Stroke",       //2
        "FillStroke",   //3
        "EOFillStroke"  //4
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return drawModes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return drawModes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
}
