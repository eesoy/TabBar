//
//  ViewController.swift
//  PageControl
//
//  Created by SO YOUNG on 2017. 12. 16..
//  Copyright © 2017년 SO YOUNG. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var page: UIPageControl!
    
    let flowersName = ["01", "02", "03", "04", "05", "06",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        or
//        for i in 0...6 {
//            flowersName.append(String(format: "%02d", i))
//        }
        // Do any additional setup after loading the view, typically from a nib.
        
        //갯수 적용
        page.numberOfPages = flowersName.count
        
        //컬러 적용
        page.currentPageIndicatorTintColor = UIColor.orange
        page.pageIndicatorTintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) //color Literal
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pageControl(_ sender: UIPageControl) {
        image.image = UIImage(named: flowersName[sender.currentPage])
    }
    
}

