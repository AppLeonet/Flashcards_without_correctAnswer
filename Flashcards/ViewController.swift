//
//  ViewController.swift
//  Flashcards
//
//  Created by Man deng Ho on 10/29/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var card: UIView!
    
  
    
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var answerButton02: UIButton!
    
    @IBOutlet weak var answerButton03: UIButton!
    
    @IBOutlet weak var defaultButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card.layer.cornerRadius = 10
        //card.clipsToBounds = true
        card.layer.shadowRadius = 25
        card.layer.shadowOpacity = 0.2
        frontLabel.layer.cornerRadius = 10
        frontLabel.clipsToBounds = true
        backLabel.layer.cornerRadius = 10
        backLabel.clipsToBounds = true
        midLabel01.layer.cornerRadius = 10
        midLabel01.clipsToBounds = true
        
        midLabel02.layer.cornerRadius = 10
        midLabel02.clipsToBounds = true
        answerButton.layer.cornerRadius = 20
        answerButton.layer.borderWidth = 5
        answerButton.layer.borderColor = #colorLiteral(red: 0.675549984, green: 0.4042059183, blue: 0.2058402598, alpha: 1)
        
        answerButton02.layer.cornerRadius = 20
        answerButton02.layer.borderWidth = 5
        answerButton02.layer.borderColor = #colorLiteral(red: 0.5665209293, green: 0.7472857237, blue: 1, alpha: 1)
        
        answerButton03.layer.cornerRadius = 20
        answerButton03.layer.borderWidth = 5
        answerButton03.layer.borderColor = #colorLiteral(red: 1, green: 0.2565193772, blue: 0.3081580698, alpha: 1)
        
        defaultButton.layer.cornerRadius = 20
        defaultButton.layer.borderWidth = 5
        defaultButton.layer.borderColor = #colorLiteral(red: 0, green: 0.9897168279, blue: 1, alpha: 1)
      
    }
    
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var midLabel01: UILabel!
    
    @IBOutlet weak var backLabel: UILabel!
    
    @IBOutlet weak var midLabel02: UILabel!
    
    
  @IBAction func answerButton(_ sender: Any) {
        
        print("tapped button")
     
        if(midLabel01.isHidden == false || midLabel02.isHidden == false){
            frontLabel.isHidden = true
                midLabel01.isHidden = true
            midLabel02.isHidden = true
            backLabel.isHidden = false
        }
        else{
            frontLabel.isHidden = true
                midLabel01.isHidden = true
            midLabel02.isHidden = true
        }
       
    }
    
    @IBAction func answerButton02(_ sender: UIButton) {
        print("tapped button 2")
        if(backLabel.isHidden == false || midLabel02.isHidden == false) {
            frontLabel.isHidden = true
            backLabel.isHidden = true
            midLabel02.isHidden = true
            midLabel01.isHidden = false
        }
        else {
            frontLabel.isHidden = true
            backLabel.isHidden = true
            midLabel02.isHidden = true
        }
        
    }
    
    @IBAction func answerButton03(_ sender: UIButton) {
        print("tapped button 3")
        if(backLabel.isHidden == false || midLabel01.isHidden == false) {
            frontLabel.isHidden = true
            backLabel.isHidden = true
            midLabel01.isHidden = true
            midLabel02.isHidden = false
        }
        else {
            frontLabel.isHidden = true
            backLabel.isHidden = true
            midLabel01.isHidden = true
        }
    }
    
    @IBAction func defaultButton(_ sender: UIButton) {
        print("default tapped")
        frontLabel.isHidden = false
    }
    
 
    
    
}

