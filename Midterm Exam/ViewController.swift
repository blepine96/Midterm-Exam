//
//  ViewController.swift
//  Midterm Exam
//
//  Created by Brandon Lepine on 10/28/21.
//

import UIKit
import Foundation
import AVFoundation

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameImage: UIImageView!

    @IBOutlet weak var doneButtonOutlet: UIButton!
    var audioPlayer: AVAudioPlayer!
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        let text = nameText.text!
        doneButtonOutlet.isEnabled = !(text.isEmpty)
        //Disables Done Button
    }
    
    
    
    
    @IBAction func nameTextChanged(_ sender: UITextField) {
        let text = nameText.text!
        doneButtonOutlet.isEnabled = !(text.isEmpty)
        //Enables Done Button If Text is Entered into Text Field
    }

    @IBAction func doneKeyPressed(_ sender: UITextField) {
        //this function will dismiss the keyboard
        nameText.resignFirstResponder()
        
    }
  
    
        
    @IBAction func doneButton(_ sender: Any) {
        
        nameText.resignFirstResponder()
        //this function will dismiss the keyboard
        
        let secretCode = Int.random(in: 1...100)
        //generates integer aspect of secretCode

        let charCount = nameText.text!.count
        //counts number of characters in name string
       
        let exclaimString = String(repeating: "!", count: charCount)
        //creates string of "!" for each input character.
        
        nameLabel.text = "Hello \(nameText.text!)- your secret code is \(secretCode)" + exclaimString
        //Displays the input name from textbox with generated secret code
        
        nameImage.image = UIImage(named: "ThumbsUp")
        //Displays the thumbs up image
        
        if let sound = NSDataAsset(name: "sound0") {
            do { try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
                
            }catch{print("ERROR: \(error.localizedDescription)")
            }
            
          
            
        }else {print("ERROR 404: Sound Asset Could Not Be Found")}
    }
   
 
    
    
    
    @IBAction func luckyButton(_ sender: Any) {
        
    }

    @IBAction func nextButton(_ sender: Any) {
        
    }

    @IBAction func infoButton(_ sender: Any) {
        
    }

}




