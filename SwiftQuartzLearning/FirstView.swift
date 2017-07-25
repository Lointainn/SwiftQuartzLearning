//
//  FirstView.swift
//  SwiftQuartzLearning
//
//  Created by Tusky on 2017/7/25.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class FirstView: UIView {

    override func layoutSubviews() {
//        backgroundColor = UIColor.yellow
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        context.setStrokeColor(red: 0, green: 0, blue: 1, alpha: 1)
        context.setLineWidth(2)
        context.move(to: CGPoint(x: 10, y: 100))
        context.addLine(to: CGPoint(x: 300, y: 100))
        context.strokePath()
        
        let points = [
            CGPoint(x: 100, y: 200),
            CGPoint(x: 150, y: 150),
            CGPoint(x: 200, y: 200),
            CGPoint(x: 250, y: 150),
            CGPoint(x: 300, y: 200),
            CGPoint(x: 350, y: 150),
        ]
        
        context.addLines(between: points)
        context.strokePath()
        
        let points2 = [
            CGPoint(x: 100, y: 400),
            CGPoint(x: 150, y: 350),
            CGPoint(x: 200, y: 400),
            CGPoint(x: 250, y: 350),
            CGPoint(x: 300, y: 400),
            CGPoint(x: 350, y: 350),
        ]
        context.strokeLineSegments(between: points2)

    }
    

}