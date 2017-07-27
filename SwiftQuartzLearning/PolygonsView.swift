//
//  PolygonsView.swift
//  SwiftQuartzLearning
//
//  Created by Wu on 2017/7/27.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class PolygonsView: UIView {

    var drawMode: CGPathDrawingMode = .fill {
        didSet(oldValue) {
            if oldValue != drawMode {
                setNeedsDisplay()
            }
        }
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        
        context.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        context.setFillColor(red: 1, green: 0, blue: 0, alpha: 1)
        context.setLineWidth(2)
        
        //五角星
        let center: CGPoint = CGPoint(x: 90, y: 190)
        context.move(to: CGPoint(x: center.x, y: center.y + 60))
        let num = 5
        for i in 1..<num {
            let x = CGFloat(60 * sinf(Float(i) * 2 * (2 * Float.pi) / Float(num)))
            let y = CGFloat(60 * cosf(Float(i) * 2 * (2 * Float.pi) / Float(num)))
            context.addLine(to: CGPoint(x: center.x + x, y: center.y + y))
        }
        context.closePath()
        
        //六边形
        let center2: CGPoint = CGPoint(x: bounds.width - 90, y: 190)
        context.move(to: CGPoint(x: center2.x, y: center2.y + 60))
        let num2 = 6
        for i in 1..<6 {
            let x = CGFloat(60 * sinf(Float(i) * (2 * Float.pi) / Float(num2)))
            let y = CGFloat(60 * cosf(Float(i) * (2 * Float.pi) / Float(num2)))
            context.addLine(to: CGPoint(x: center2.x + x, y: center2.y + y))
        }
        context.closePath()

        //设置填充模式
        context.drawPath(using: drawMode)
        
        
    }
    
}
