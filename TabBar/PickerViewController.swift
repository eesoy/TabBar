//
//  ViewController.swift
//  PickerView
//
//  Created by soyoung on 2017. 11. 25..
//  Copyright © 2017년 soyoung. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    //2개의 피커뷰로 하는 경
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 2
    let PICKER_VIEW_HEIGHT:CGFloat = 80 //피커뷰의 높이 지정
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]
    //var imageFileName = [String]()
    var imageArray = [UIImage?]()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblImageFileName: UILabel!
    @IBOutlet weak var pickerImage: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        pickerImage.delegate = self    (1) self 사용 방식 (2) storyboard에서 ctrl viewController
        //        pickerImage.dataSource = self
        //        for i in 1...MAX_ARRAY_NUM{
        //           imageFileName.append(String(i))
        //        }
        
        for i in 0..<MAX_ARRAY_NUM{
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //피커뷰에게 컴포넌트의 수를 정수 값으로 넘겨주는 델리게이트 메서드
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    //numberOfRowsInComponent 인수를 가지는 델리게이트 메서드, 피커뷰에게 컴포넌트의 열의 개수를 정수값으로 넘겨줌
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    
    //    //titleForRow 인수를 가지는 델리게이트 메서드, 피커뷰에게 컴포넌트의 각 열의 타이틀을 문자열 값으로 넘겨줌, 피커뷰 각 row의 title 설정
    //    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    //        return imageFileName[row]
    //    }
    
    //피커뷰 각 row의 view설정
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image:imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        return imageView
    }
    
    //사용자가 피커뷰의 룰렛에서 선택한 row값을 사용하여 imageFileName 배열에서 row 값에 해당하는 문자열을 가져옴, 피커뷰가 선택되었을 때 실행
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component==0 {
            lblImageFileName.text = imageFileName[row]
        } else {
            imageView.image = imageArray[row]
        }
    }
    
}

