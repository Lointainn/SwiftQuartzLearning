//
//  RectanglesView.swift
//  SwiftQuartzLearning
//
//  Created by Wu on 2017/7/27.
//  Copyright © 2017年 Tusky. All rights reserved.
//

import UIKit

class RectanglesView: UIView {

    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        context.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        context.setLineWidth(2)
        
        //一个方块
        context.addRect(CGRect(x: 10, y: 100, width: 60, height: 60))
        context.strokePath()
        
        //第二个方块
        context.saveGState()
        context.setStrokeColor(red: 0, green: 0, blue: 1, alpha: 1)
        context.stroke(CGRect(x: 100, y: 100, width: 60, height: 60))
        context.restoreGState()
        
        //第三个方块
        context.setStrokeColor(red: 1, green: 0, blue: 0, alpha: 1)
        context.stroke(CGRect(x: 190, y: 100, width: 60, height: 60), width: 10)
        
        //第四五六个方块
        context.setStrokeColor(red: 1, green: 0, blue: 1, alpha: 1)
        let rects = [CGRect(x: 10, y: 190, width: 60, height: 60),
                     CGRect(x: 100, y: 190, width: 60, height: 60),
                     CGRect(x: 190, y: 190, width: 60, height: 60)]
        context.addRects(rects)
        context.strokePath()
        
        //第七个方块
        context.setFillColor(red: 1, green: 1, blue: 0, alpha: 1)
        context.fill(CGRect(x: 10, y: 280, width: 60, height: 60))
        
        //第八九个方块
        context.setStrokeColor(red: 0, green: 1, blue: 0, alpha: 1)
        context.setFillColor(red: 0, green: 1, blue: 1, alpha: 1)
        let rects2 = [CGRect(x: 100, y: 280, width: 60, height: 60),CGRect(x: 190, y: 280, width: 60, height: 60)]
        context.fill(rects2)
        context.addRects(rects2)
        context.strokePath()
    }

}
