//
//  ViewController2.swift
//  Mini Pro 600212
//
//  Created by SU_16 on 11/16/18.
//  Copyright © 2018 ICTSUIM. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet var numbShow: UILabel!
    
    @IBOutlet var image999: UIImageView!
    @IBAction func randomNumb(_ sender: UIButton) {
        let randomNumber = arc4random_uniform(99)
        numbShow.text = String(randomNumber)
        if randomNumber < 10 {
            numbShow.text = "99"
            ProgressHUD.showSuccess("9 คู่ขนาดนี้ ต้องลองแล้ว")
        }else{
            ProgressHUD.showSuccess("ว้าว! เลขสวยมากซื้อเลย")
        }
    }
    
    @IBAction func randomNumb3(_ sender: UIButton) {
        let randomNumber3 = arc4random_uniform(999)
        numbShow.text = String(randomNumber3)
        if randomNumber3 < 100 {
            numbShow.text = "999"
            ProgressHUD.showSuccess("ตอง 9 ขนาดนี้ ต้องลองแล้ว")
        }
        else{
            ProgressHUD.showSuccess("น่าสนใจ ไม่ลองก็ไม่รวยนะ")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if (motion == .motionShake) {
            let randomNumber = arc4random_uniform(999)
            numbShow.text = String(randomNumber)
        }
    }
    
    
}

