//
//  DashView.swift
//  SwiftQuartzLearning
//
//  Created by Wu on 2017/7/26.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class DashView: UIView {

    var phase: CGFloat = 0 {
        didSet(oldValue) {
            if oldValue != phase {
                self.setNeedsDisplay()
            }
        }
    }
    
    var patterns: [CGFloat] = [10,10] {
        didSet(oldValue) {
            if oldValue != patterns {
                self.setNeedsDisplay()
            } else {
                for (index, value) in patterns.enumerated() {
                    if oldValue[index] != value {
                        self.setNeedsDisplay()
                        break
                    }
                }
            }
        }
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        context.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        context.setLineWidth(2)
        //phase:范围举例 -300 ~ 300  变大则向起点移动,变小向终点移动
        //lengths数组:举例[10,10] 一段长为10的线,一段长为10的空白.  [5,10,20,40,80] 5,20,80为实线,10,40为空白
        context.setLineDash(phase: phase, lengths: patterns)
      
        context.move(to: CGPoint(x: 200, y: 50))
        context.addLine(to: CGPoint(x: 10, y: 400))
        context.move(to: CGPoint(x: 10, y: 400))
        context.addRect(CGRect(x: 10, y: 400, width: 100, height: 100))
        context.move(to: CGPoint(x: 110, y: 450))
        context.addEllipse(in: CGRect(x: 110, y: 450, width: 150, height: 100))
        context.move(to: CGPoint(x: 130, y: 275))
        context.addLines(between: [CGPoint(x: 130, y: 275),CGPoint(x: 130, y: 150),CGPoint(x: 180, y: 275),CGPoint(x: 180, y: 150),CGPoint(x: 230, y: 275)])
       
        context.strokePath()

        context.strokeLineSegments(between: [CGPoint(x: 10, y: 275),CGPoint(x: 300, y: 150),CGPoint(x: 10, y: 375),CGPoint(x: 300, y: 250)])
    }
}
