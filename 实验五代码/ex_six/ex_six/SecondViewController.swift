//
//  SecondViewController.swift
//  ex_six
//
//  Created by 509 on 2018/10/19.
//  Copyright © 2018年 2016110404. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //添加图片到程序中
        view.backgroundColor = UIColor.yellow
        let imageView = UIImageView(frame:CGRect(x:7,y:120,width:380,height:380))
        imageView.image = UIImage(named:"可爱的saber")
        imageView.center=view.center
        view.addSubview(imageView)
        
        let button = UIButton(frame:CGRect(x:80,y:150,width:250,height:100))
        button.setTitle("I am so cute", for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(btnclicked), for: .touchUpInside)
        self.title = "second"
    }
    @objc func btnclicked(){
        //控制器消失
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

