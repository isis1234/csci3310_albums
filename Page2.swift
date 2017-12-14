//
//  Page2.swift
//  csci3310_xcode8
//
//  Created by Yu Yu on 20/11/2017.
//  Copyright © 2017 group9. All rights reserved.
//

import UIKit

class Page2: UIViewController {
    @IBOutlet weak var player1_0: UIButton!
    @IBOutlet weak var player1_1: UIButton!
    @IBOutlet weak var player1_2: UIButton!
    @IBOutlet weak var player1_3: UIButton!
    @IBOutlet weak var player1_4: UIButton!
    @IBOutlet weak var player1_5: UIButton!
    @IBOutlet weak var player1_6: UIButton!
    @IBOutlet weak var player1_7: UIButton!
    @IBOutlet weak var player1_8: UIButton!
    @IBOutlet weak var player1_9: UIButton!
    @IBOutlet weak var player1_ptr1: UIImageView!
    @IBOutlet weak var player1_ptr2: UIImageView!
    @IBOutlet weak var player1_ptr3: UIImageView!
    @IBOutlet weak var player1_ptr4: UIImageView!
    @IBOutlet weak var player1_ptr5: UIImageView!
    @IBOutlet weak var player1_ptr6: UIImageView!
    @IBOutlet weak var player1_ptr7: UIImageView!
    @IBOutlet weak var player1_ptr8: UIImageView!
    @IBOutlet weak var player1_ptr9: UIImageView!
    @IBOutlet weak var player1_ptr10: UIImageView!
    @IBOutlet weak var player1_question: UILabel!
    @IBOutlet weak var player1_answer: UILabel!
    @IBOutlet weak var player1_enter: UIButton!
    
    @IBOutlet weak var player2_0: UIButton!
    @IBOutlet weak var player2_1: UIButton!
    @IBOutlet weak var player2_2: UIButton!
    @IBOutlet weak var player2_3: UIButton!
    @IBOutlet weak var player2_4: UIButton!
    @IBOutlet weak var player2_5: UIButton!
    @IBOutlet weak var player2_6: UIButton!
    @IBOutlet weak var player2_7: UIButton!
    @IBOutlet weak var player2_8: UIButton!
    @IBOutlet weak var player2_9: UIButton!
    @IBOutlet weak var player2_ptr1: UIImageView!
    @IBOutlet weak var player2_ptr2: UIImageView!
    @IBOutlet weak var player2_ptr3: UIImageView!
    @IBOutlet weak var player2_ptr4: UIImageView!
    @IBOutlet weak var player2_ptr5: UIImageView!
    @IBOutlet weak var player2_ptr6: UIImageView!
    @IBOutlet weak var player2_ptr7: UIImageView!
    @IBOutlet weak var player2_ptr8: UIImageView!
    @IBOutlet weak var player2_ptr9: UIImageView!
    @IBOutlet weak var player2_ptr10: UIImageView!
    @IBOutlet weak var player2_answer: UILabel!
    @IBOutlet weak var player2_question: UILabel!
    @IBOutlet weak var player2_enter: UIButton!
    
    @IBOutlet weak var exit: UIButton!
    
    var p1answer = "";
    var p2answer = "";
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player1_display()
        player2_display()
        game_init()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func player1_display(){
        player1_answer.layer.cornerRadius = 8
        player1_answer.layer.borderWidth = 2.0
    }
    
    func player2_display(){
        player2_answer.layer.cornerRadius = 8
        player2_answer.layer.borderWidth = 2.0
        player2_question.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_answer.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_enter.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_0.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_1.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_2.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_3.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_4.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_5.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_6.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_7.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_8.transform = CGAffineTransform(rotationAngle: 3.14)
        player2_9.transform = CGAffineTransform(rotationAngle: 3.14)
    }
    
    func game_init(){
        player1_ptr1.image = UIImage(named: "empty")
        player1_ptr2.image = UIImage(named: "empty")
        player1_ptr3.image = UIImage(named: "empty")
        player1_ptr4.image = UIImage(named: "empty")
        player1_ptr5.image = UIImage(named: "empty")
        player1_ptr6.image = UIImage(named: "empty")
        player1_ptr7.image = UIImage(named: "empty")
        player1_ptr8.image = UIImage(named: "empty")
        player1_ptr9.image = UIImage(named: "empty")
        player1_ptr10.image = UIImage(named: "empty")
        player1_ptr10.image = UIImage(named: "empty")
        player2_ptr1.image = UIImage(named: "empty")
        player2_ptr2.image = UIImage(named: "empty")
        player2_ptr3.image = UIImage(named: "empty")
        player2_ptr4.image = UIImage(named: "empty")
        player2_ptr5.image = UIImage(named: "empty")
        player2_ptr6.image = UIImage(named: "empty")
        player2_ptr7.image = UIImage(named: "empty")
        player2_ptr8.image = UIImage(named: "empty")
        player2_ptr9.image = UIImage(named: "empty")
        player2_ptr10.image = UIImage(named: "empty")
        player2_ptr10.image = UIImage(named: "empty")
        gen_question(player: 1)
        gen_question(player: 2)
    }
   // func check_answer(){String answer
        
        
  //  }
    
    func gen_question(player: Int){
        let base_range = UInt32(100)
        let calation_num = 2
        let calation = [" + ", " - ", " x ", " ÷ "]
        var question_label: String = String(arc4random_uniform(base_range))
        
        for _ in 1...calation_num {
            question_label += calation[Int(arc4random_uniform(base_range)%2)] + String(arc4random_uniform(base_range))
        }
        question_label += " = ?"
        
        //print(question_label)
        if player == 1 {
            player1_question.text = question_label
        }else{
            player2_question.text = question_label
        }
    }
    
    @IBAction func button_action(_ sender: UIButton){
        let response = sender.titleLabel!.text!
        if response.hasPrefix("player1") {
            if(response.hasPrefix("player1_enter")){
                // do something
            }
            else{
                p1answer = p1answer + String(response[response.index(before: response.endIndex)])
                player1_answer.text = p1answer
            }
            
        }
        else {
            if(response.hasPrefix("player2_enter")){
                // do something function check answer
            }
            else{
                p2answer = p2answer + String(response[response.index(before: response.endIndex)])
                player2_answer.text = p2answer
            }
            
        }
        
        print(p1answer)
        print(response)

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
