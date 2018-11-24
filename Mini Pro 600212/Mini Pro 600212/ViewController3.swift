//
//  ViewController3.swift
//  Mini Pro 600212
//
//  Created by SU_16 on 11/16/18.
//  Copyright © 2018 ICTSUIM. All rights reserved.
//

import Foundation
import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet var inputDream: UITextField!
    @IBOutlet var showNumbdream: UILabel!
 
    var dreamTextstore = ""
    var dreamNumbstore : Int = 0
    
    var checkInputdream = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func searchNumbdream(_ sender: UIButton) {
        if let dreamTextstore = inputDream.text {
            if dreamTextstore != ""
            {
                checkInputdream = true
            }
            print(dreamTextstore)
            if  checkInputdream == true {
                let randomNumber = arc4random_uniform(99)
                showNumbdream.text = String(randomNumber)
                ProgressHUD.showSuccess("ฝันมาขนาดนี้ ต้องเสี่ยงดูแล้วแหละ")
            }else{ checkInputdream = false
                ProgressHUD.showError("ใส่ความฝันก่อน!")
            }
            
        }
    }
    
    
    
}
