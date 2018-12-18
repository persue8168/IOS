//
//  ViewController.swift
//  Animation
//
//  Created by student on 2018/11/24.
//  Copyright © 2018年 chenhongli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myView: UIView!
    var timer:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {[weak weakSelf = self]
//            (mytimer) in
//            weakSelf?.myView.center.x += 20
//        })
    }
    @IBAction func btnClicked(_ sender: Any) {
        let imageView = UIImageView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        imageView.image = UIImage(named: "image")
        UIView.transition(from: myView, to: imageView, duration: 2, options: .transitionFlipFromRight, completion: nil)
//        UIView.transition(with: myView, duration: 2, options:.transitionFlipFromLeft, animations: {
//            self.myView.backgroundColor = UIColor.blue
//        }, completion: nil)
    
        
//        timer?.invalidate()
//        UIView.animate(withDuration: 2, delay: 1, options: [.curveLinear,.autoreverse],
//                       animations: {
//                        self.myView.alpha = 0;
//                        //改变位置
//                        self.myView.center.x = self.view.bounds.width;
//                        //改变大小
//                        self.myView.frame.size = CGSize(width:200,height:200)
//                        self.myView.backgroundColor = UIColor.green;
//                        //改变视图的transform
//                        self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
//                        self.myView.transform = CGAffineTransform.identity
//                        self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
//                        self.myView.transform = CGAffineTransform.identity
//                        self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
//                        self.myView.transform = CGAffineTransform.identity
//                        self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
//                        self.myView.transform = CGAffineTransform.identity
//                        self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
//                        self.myView.transform = CGAffineTransform.identity
//                        self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
//                        self.myView.transform = CGAffineTransform.identity
//        }) { (finished) in
//            if finished {
//                self.myView.removeFromSuperview()
//            }
//        }
//    }
    //掉落方块 有碰撞 可以反弹
    
    }
    
}

