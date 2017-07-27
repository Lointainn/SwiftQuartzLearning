//
//  EllipseArcView.swift
//  SwiftQuartzLearning
//
//  Created by Tusky on 2017/7/27.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class EllipseArcView: UIView {

    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        context.setStrokeColor(red: 1, green: 0, blue: 0, alpha: 1)
        context.setLineWidth(2)

        context.addArc(center: CGPoint(x: 90, y:120), radius: 30, startAngle: 0, endAngle: CGFloat.pi, clockwise: true)
        context.strokePath()
        
        context.addArc(center: CGPoint(x: 90, y:220), radius: 30, startAngle: 0, endAngle: CGFloat.pi/2, clockwise: true)
        context.strokePath()
        
        context.addArc(center: CGPoint(x: 90, y:320), radius: 30, startAngle: 0, endAngle: CGFloat.pi*3/2, clockwise: true)
        context.strokePath()
        
        context.addArc(center: CGPoint(x: 90, y:420), radius: 30, startAngle: 0, endAngle: CGFloat.pi, clockwise: false)
        context.strokePath()
        
        context.addArc(center: CGPoint(x: 90, y:520), radius: 30, startAngle: 0, endAngle: CGFloat.pi/2, clockwise: false)
        context.strokePath()
        
        context.addArc(center: CGPoint(x: 90, y:620), radius: 30, startAngle: 0, endAngle: CGFloat.pi*3/2, clockwise: false)
        context.strokePath()
    }

}
