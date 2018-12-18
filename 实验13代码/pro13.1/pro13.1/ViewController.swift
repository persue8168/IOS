//
//  ViewController.swift
//  pro13.1
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 chenhongli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sum(_ sender: Any) {
        var total = 0
        print("Thread:\(Thread.current)")
        DispatchQueue.global(qos: .default).async{
            for i in 0...999999999{
                sleep(1)
                total+=i
                DispatchQueue.main.async{
                    self.lbl.text = "sum:\(total)"
                }
            }
        }
    }
    
}

