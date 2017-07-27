//
//  LineView.swift
//  SwiftQuartzLearning
//
//  Created by Tusky on 2017/7/25.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class LineView: UIView {

    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        drawFirstLine(context: context)
        
        drawSecondLines(context: context)
       
        drawThirdLines(context: context)
    }
    
    func drawFirstLine(context: CGContext) {
        context.setStrokeColor(red: 0, green: 0, blue: 1, alpha: 1)
        context.setLineWidth(2)
        context.move(to: CGPoint(x: 10, y: 100))
        context.addLine(to: CGPoint(x: 300, y: 100))
        context.strokePath()
    }
    
    func drawSecondLines(context: CGContext) {
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
    }
    
    func drawThirdLines(context: CGContext) {
        let points2 = [
            CGPoint(x: 100, y: 300),
            CGPoint(x: 150, y: 250),
            CGPoint(x: 200, y: 300),
            CGPoint(x: 250, y: 250),
            CGPoint(x: 300, y: 300),
            CGPoint(x: 350, y: 250),
            ]
        context.strokeLineSegments(between: points2)
    }
    

}
