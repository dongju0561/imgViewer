//
//  ViewController.swift
//  imageViewer
//
//  Created by macbook on 2022/04/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var btnNext: UIButton!
    @IBOutlet var btnPrevious: UIButton!
    
    var condition = 1
    var maxImage = 3
    
    var imageOne : UIImage?
    var imageTwo : UIImage?
    var imageThree : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageOne = UIImage(named: "1.png")
        imageTwo = UIImage(named: "2.png")
        imageThree = UIImage(named: "3.png")
        
        imageView.image = imageOne
    }

    @IBAction func ChangeNext(_ sender: Any) {
        condition = condition + 1
        if condition > maxImage{
            condition = 1
        }
        switch(condition){
        case 1 :
            imageView.image = imageOne
            break
        case 2 :
            imageView.image = imageTwo
            break
        case 3 :
            imageView.image = imageThree
            break
        default :
            condition = 1
            break
        }
    }
    @IBAction func ChangePrevious(_ sender: Any) {
        condition = (condition - 1)
        if condition < 1{
            condition = 3
        }
        
        switch(condition){
        case 1 :
            imageView.image = imageOne
            break
        case 2 :
            imageView.image = imageTwo
            break
        case 3 :
            imageView.image = imageThree
            break
        default :
            condition = 1
            break
        }
    }
    
}

