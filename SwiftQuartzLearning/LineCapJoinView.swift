//
//  LineCapJoinView.swift
//  SwiftQuartzLearning
//
//  Created by Tusky on 2017/7/25.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class LineCapJoinView: UIView {

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
        
        //画内部线
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
        
        //saveGState()和restoreGState()  之间插入的代码可以不影响后面对前面代码的使用,相当于这一块独立起来和前后不矛盾不覆盖
        //saveGState()用来存储前面的设置,存储以后中间的代码将不会覆盖前面的代码,比如设置颜色
        //restoreGState()用来恢复前面储存的设置,恢复以后后面的代码将可以继续使用之前的设置而不受中间代码的影响,比如颜色
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
