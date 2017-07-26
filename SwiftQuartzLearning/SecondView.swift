//
//  SecondView.swift
//  SwiftQuartzLearning
//
//  Created by Tusky on 2017/7/25.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class SecondView: UIView {

    var cap: CGLineCap = .butt {
        didSet(oldValue){
            if oldValue != cap {
                self.setNeedsDisplay()
            }
        }
    }
    
    var join: CGLineJoin = .miter {
        didSet(oldValue){
            if oldValue != join {
                self.setNeedsDisplay()
            }
        }
    }
    
    var width: CGFloat = 1.0 {
        didSet(oldValue){
            if oldValue != width {
                self.setNeedsDisplay()
            }
        }
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        
        drawFirstLine(context: context)
        drawSecondLines(context: context)
        
        if width >= 4 {
            context.setStrokeColor(red: 1, green: 0, blue: 0, alpha: 1)
            context.setLineWidth(2)

            context.move(to: CGPoint(x: 30, y: 100))
            context.addLine(to: CGPoint(x: 320, y: 100))
            context.addLines(between: [CGPoint(x: 30, y: 300),CGPoint(x: 170, y: 150),CGPoint(x: 310, y: 300),CGPoint(x: 170, y: 300),CGPoint(x: 100, y: 375)])

            context.strokePath()

        }
    }
    
    func drawFirstLine(context: CGContext) {
        
        context.saveGState()
        
        context.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        context.setLineWidth(width)
        context.setLineCap(cap)
        context.move(to: CGPoint(x: 30, y: 100))
        context.addLine(to: CGPoint(x: 320, y: 100))
        context.strokePath()
        
        context.restoreGState()
    }
    
    func drawSecondLines(context: CGContext) {
        
        context.saveGState()
        
        context.addLines(between: [CGPoint(x: 30, y: 300),CGPoint(x: 170, y: 150),CGPoint(x: 310, y: 300),CGPoint(x: 170, y: 300),CGPoint(x: 100, y: 375)])
        context.setLineWidth(width)
        context.setLineCap(cap)
        context.setLineJoin(join)
        context.strokePath()
        
        context.restoreGState()
    }

}
