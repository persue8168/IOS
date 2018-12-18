//
//  CircleView.swift
//  404Gesture
//
//  Created by student on 2018/11/7.
//  Copyright © 2018年 student. All rights reserved.
//

import UIKit
@IBDesignable
class CircleView: UIView {
    @IBInspectable var fillColor:UIColor?
    @IBInspectable var strokeColor:UIColor?

    func  setup() {
        let panRecognizer = UIPanGestureRecognizer(target: self,
            action: #selector(pan(recognizer:)))
        self.addGestureRecognizer(panRecognizer)
        let pinchRecognizer = UIPinchGestureRecognizer(target:self,
            action: #selector(pinch(recognizer: )))
        self.addGestureRecognizer(pinchRecognizer)
        let tapRecognizer = UITapGestureRecognizer(target:self,
            action: #selector(tap(recognizer: )))
        self.addGestureRecognizer(tapRecognizer)
        tapRecognizer.numberOfTouchesRequired = 1
        tapRecognizer.numberOfTapsRequired = 2
    }
    @objc func tap(recognizer:UITapGestureRecognizer){
        //小球往下掉
        switch recognizer.state {
        case .changed:
            fallthrough
        case .recognized:
            print("double clicked")
        default:
            break
        }
    }
    @objc func pan(recognizer:UIPanGestureRecognizer){
        //小球往下掉
        switch recognizer.state {
        case .changed:
            fallthrough
        case .ended:
            let translation = recognizer.translation(in: self)
            center.x += translation.x
            center.y += translation.y
            recognizer.setTranslation(.zero, in: self)//跟随鼠标移动
        default:
            break
        }
    }
    @objc func pinch(recognizer:UIPinchGestureRecognizer){
        //小球往下掉
        switch recognizer.state {
        case .changed:
            fallthrough
        case .ended:
            
           bounds.size = CGSize(width: bounds.width * recognizer.scale, height: bounds.height * recognizer.scale)
        default:
            break
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    override func draw(_ rect: CGRect) {
        // Drawing code
        let path = UIBezierPath(ovalIn: rect)
        fillColor?.setFill()
        strokeColor?.setStroke()
        
        
        path.fill()
        path.stroke()
    }

}
