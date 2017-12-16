//
//  ViewController.swift
//  TabBar
//
//  Created by SO YOUNG on 2017. 12. 16..
//  Copyright © 2017년 SO YOUNG. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func goImageView(_ sender: UIButton) {
        //tabBar로 이동하는 작업
        self.tabBarController?.selectedIndex = 1
    }
    
    @IBAction func goPickerView(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 3
    }
    
}

