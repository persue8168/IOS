//
//  ViewController.swift
//  ScrollView
//
//  Created by student on 2018/11/7.
//  Copyright © 2018年 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate{

    @IBOutlet weak var pageControll: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {

        super.viewDidLoad()
//        let imageview = UIImageView(image: UIImage(named: "3"))
//        scrollView.addSubview(imageview)
//        scrollView.contentSize = imageview.bounds.size
//        scrollView.minimumZoomScale = 0.2
//        scrollView.maximumZoomScale = 5
        scrollView.delegate = self
        for i in 1...7{
            let imageView = UIImageView(image: UIImage(named: "\(i)"))
            imageView.contentMode = .scaleAspectFit
            imageView.frame = CGRect(x :CGFloat (i-1)*scrollView.bounds.width,y:0,width:scrollView.bounds.width, height:scrollView.bounds.height)
            scrollView.addSubview(imageView)
        }
        scrollView.contentSize = CGSize (width: scrollView.bounds.width*7, height: scrollView.bounds.height)
        scrollView.isPagingEnabled = true//开启页面平移
        scrollView.showsHorizontalScrollIndicator = false;
        pageControll.numberOfPages = 7
        pageControll.currentPage = 0
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)    {
        let currentPage = scrollView.contentOffset.x/scrollView.bounds.width
        pageControll.currentPage = Int(currentPage)
    }


}

