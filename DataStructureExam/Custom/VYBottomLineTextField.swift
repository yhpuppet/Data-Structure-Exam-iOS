//
//  VYBottomLineTextField.swift
//  DataStructureExam
//
//  Created by Vincent Yang on 2017/6/2.
//  Copyright © 2017年 Vincent Yang. All rights reserved.
//

import UIKit

class VYBottomLineTextField: UITextField {
    let bottomLineColor = UIColor.lightGray

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(1.0)
        context?.setStrokeColor(bottomLineColor.cgColor)
        context?.move(to: CGPoint(x: 0.0, y: rect.size.height))
        context?.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height))
        context?.strokePath()
    }
    

}
