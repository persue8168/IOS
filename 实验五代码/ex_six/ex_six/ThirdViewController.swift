//
//  ThirdViewController.swift
//  ex_six
//
//  Created by 509 on 2018/10/19.
//  Copyright © 2018年 2016110404. All rights reserved.
//

import UIKit

class MySquare: UIView {
    override func draw(_ rect: CGRect) {
        //矩形
        let rectPath = UIBezierPath(rect:rect)
        UIColor.red.setStroke()//为线条设置为brown
        rectPath.stroke();//添加线条
        UIColor.yellow.setFill()//设置填充为绿色
        rectPath.fill()//添加填充色
    }
}
class ThirdViewController: UIViewController {
    var triangle : MySquare?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //创建Lable
        let lable = UILabel(frame:CGRect(x:200,y:200,width:400,height:150))
        lable.text="Hi Third!"
        lable.backgroundColor = UIColor.white
        lable.textAlignment = .center
        lable.center = view.center
        //添加lable到视图中去，否则在视图中看不见
        view.addSubview(lable)
        
        let traingle = MySquare(frame:CGRect(x:100,y:100,width:100,height:200))
        view.addSubview(traingle)
        self.title = "Third"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

