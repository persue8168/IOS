//
//  FirstViewController.swift
//  ex_six
//
//  Created by 509 on 2018/10/20.
//  Copyright © 2018年 2016110404. All rights reserved.
//

import UIKit
class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor=UIColor.yellow
        //创建Lable
        let lable = UILabel(frame:CGRect(x:200,y:200,width:400,height:150))
        lable.text="Hi! First!"
        lable.backgroundColor = UIColor.blue
        lable.textAlignment = .center
        lable.center = view.center
        //添加lable到视图中去，否则在视图中看不见
        view.addSubview(lable)
        
        let button = UIButton(frame:CGRect(x:80,y:150,width:300,height:100))
        button.setTitle("Lets find a cute girl!", for: .normal)
        button.setTitleColor(UIColor.orange, for: .normal)
        //添加button到视图中去，否则在视图中看不见
        view.addSubview(button)
        
        //为button增加发射功能
        button.addTarget(self, action: #selector(btnclicked),for: .touchUpInside)
        self.title = "First"
    }
    //实现button click的响应
    @objc func btnclicked(){
        if let lable = view.subviews.first as?UILabel{
            lable.text="Okey!We have been finding a cute girl now..."
        }
        //切换到SecondViewController控制器
        self.navigationController?.present(SecondViewController(), animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
