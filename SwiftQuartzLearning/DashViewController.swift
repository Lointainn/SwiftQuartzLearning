//
//  DashViewController.swift
//  SwiftQuartzLearning
//
//  Created by Wu on 2017/7/26.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class DashViewController: UIViewController {

    @IBOutlet weak var dash: DashView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func phaseSlider(_ sender: UISlider) {
        dash.phase = CGFloat(sender.value)
    }
    @IBAction func patternsSegment(_ sender: UISegmentedControl) {
        let title = sender.titleForSegment(at: sender.selectedSegmentIndex)
        dash.patterns.removeAll()
        for pattern in (title?.components(separatedBy: "-"))! {
            dash.patterns.append(CGFloat((pattern as NSString).floatValue))
        }
    }

}
