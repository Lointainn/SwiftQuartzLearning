//
//  SecondViewController.swift
//  SwiftQuartzLearning
//
//  Created by Wu on 2017/7/26.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var second: SecondView!
    
    @IBOutlet weak var capSegment: UISegmentedControl!
    @IBOutlet weak var joinSegment: UISegmentedControl!
    @IBOutlet weak var widthSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        second.cap = CGLineCap(rawValue: Int32(capSegment.selectedSegmentIndex))!
        second.join = CGLineJoin(rawValue: Int32(joinSegment.selectedSegmentIndex))!
        second.width = CGFloat(widthSlider.value)

    }
    
    @IBAction func capSegment(_ sender: UISegmentedControl) {
        second.cap = CGLineCap(rawValue: Int32(sender.selectedSegmentIndex))!
    }
    @IBAction func joinSegment(_ sender: UISegmentedControl) {
        second.join = CGLineJoin(rawValue: Int32(sender.selectedSegmentIndex))!
    }
    @IBAction func widthSlider(_ sender: UISlider) {
        second.width = CGFloat(sender.value)
    }


}
