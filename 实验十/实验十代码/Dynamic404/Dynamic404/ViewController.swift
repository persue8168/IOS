//
//  ViewController.swift
//  Dynamic404
//
//  Created by student on 2018/11/24.
//  Copyright © 2018年 chenhongli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var animator = UIDynamicAnimator(referenceView: self.view)
    let gravity = UIGravityBehavior()
    let collision = UICollisionBehavior()
    
    func randomColor() -> UIColor {
        switch arc4random() % 7 {
        case 0: return UIColor.red
        case 1: return UIColor.orange
        case 2: return UIColor.yellow
        case 3: return UIColor.green
        case 4: return UIColor.cyan
        case 5: return UIColor.blue
        case 6: return UIColor.purple
        case 7: return UIColor.black
        default: return UIColor.black
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animator.addBehavior(gravity)
        animator.addBehavior(collision)
        collision.translatesReferenceBoundsIntoBoundary = true
    }

    @IBAction func add(_ sender: Any) {
        let width = Int(view.bounds.width / 10)
        let randx = Int(arc4random() % 10) * width
        let label = UILabel(frame: CGRect(x: randx, y: 20, width: 20, height: 20))
        label.backgroundColor = randomColor()
        label.text = "S"
        label.textAlignment = .center
        view.addSubview(label)
        gravity.addItem(label)
        collision.addItem(label)
    }
    
}

