//
//  ViewController4.swift
//  Mini Pro 600212
//
//  Created by SU_16 on 11/16/18.
//  Copyright © 2018 ICTSUIM. All rights reserved.
//

import Foundation
import UIKit

class ViewController4: UIViewController {
    
    
    @IBOutlet var showTimer: UILabel!
    var timer = Timer()
    
    var checkStatusToNext = true
    
    var timeCount = 20
    
    @objc func processTimer() {
        if timeCount > 0{
            timeCount -= 1
            showTimer.text = ("\(timeCount)")
        }
    }
    
    @IBOutlet var UIImageshow: UIImageView!
    @IBOutlet var QuestionLabel: UILabel!
    
    @IBOutlet var buttonAns1: UIButton!
    @IBOutlet var buttonAns2: UIButton!
    @IBOutlet var buttonAns3: UIButton!
    
    @IBOutlet var Next: UILabel!
    
    @IBOutlet var LabelEnd: UILabel!
    
    var CorrectAnswer = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        RandomQuestions()
        Hide()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,
                                     selector: #selector(ViewController4.processTimer), userInfo:
            nil, repeats: true)
        
    }
    

    
    func RandomQuestions() {
        
        var RandomNumber = arc4random() % 3
        RandomNumber += 1
        
        switch(RandomNumber) {
        case 1:
            UIImageshow.image = UIImage(named:"q1")
            QuestionLabel.text = "มะพร้าวงอกเป็นลูกช้างน้อย"
            buttonAns1.setTitle("32",for: UIControlState.normal)
            buttonAns2.setTitle("69",for: UIControlState.normal)
            buttonAns3.setTitle("79",for: UIControlState.normal)
            CorrectAnswer = "2"
            
            break
            
        case 2:
            UIImageshow.image = UIImage(named:"q2")
            QuestionLabel.text = "ลูกหมู 1 หัว 2 ตัว 4 หู 8 ขา"
            buttonAns1.setTitle("78", for: UIControlState.normal)
            buttonAns2.setTitle("16", for: UIControlState.normal)
            buttonAns3.setTitle("79", for: UIControlState.normal)
            CorrectAnswer = "2"
            
            break
            
        case 3:
            UIImageshow.image = UIImage(named:"q3")
            QuestionLabel.text = "หมาจิ้งจอกหัวเป็นไก่"
            buttonAns1.setTitle("360", for: UIControlState.normal)
            buttonAns2.setTitle("55", for: UIControlState.normal)
            buttonAns3.setTitle("31", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 4:
            UIImageshow.image = UIImage(named:"q4")
            QuestionLabel.text = "สับปะรด 13 แฉก"
            buttonAns1.setTitle("13", for: UIControlState.normal)
            buttonAns2.setTitle("100", for: UIControlState.normal)
            buttonAns3.setTitle("87", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 5:
            UIImageshow.image = UIImage(named:"q5")
            QuestionLabel.text = "ต้นไม้แก่ต้นไขว้กัน"
            buttonAns1.setTitle("88", for: UIControlState.normal)
            buttonAns2.setTitle("22", for: UIControlState.normal)
            buttonAns3.setTitle("79", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        default:
            break
        }
    }
    
    func Hide(){
        LabelEnd.isHidden = true
        Next.isHidden = true
    }
    
    func Unhide(){
        LabelEnd.isHidden = false
        Next.isHidden = false
    }
    
    @IBAction func button1Action(_ sender: Any) {
        Unhide()
        if (CorrectAnswer == "1"){
            LabelEnd.text = ("ตีหวยแม่นนะเนี่ย")

        }
        else{
            LabelEnd.text = ("ยังพลาดอยู่ ฝึกฝนหน่อย")
        }
    }
    @IBAction func button2Action(_ sender: Any) {
        Unhide()
        if (CorrectAnswer == "2"){
            LabelEnd.text = ("ตีหวยแม่นนะเนี่ย")
        }
        else{
            LabelEnd.text = ("ยังพลาดอยู่ ฝึกฝนหน่อย")
        }
    }
    @IBAction func button3Action(_ sender: Any) {
        Unhide()
        if (CorrectAnswer == "3"){
            LabelEnd.text = ("ตีหวยแม่นนะเนี่ย")
        }
        else{
            LabelEnd.text = ("ยังพลาดอยู่ ฝึกฝนหน่อย")
        }
    }
    
    @IBAction func Next(_ sender: UIButton) {
        if timeCount != 0 {
            checkStatusToNext = false
        }else{
            checkStatusToNext = true
            RandomQuestions()
        }

        
    }
    
    
}



