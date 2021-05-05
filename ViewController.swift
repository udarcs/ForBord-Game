//
//  ViewController.swift
//  ForBord
//
//  Created by mikhail on 03.05.2021.
//

import UIKit

class ViewController: UIViewController {

    
    var touche = 0  {
        didSet{
            toucheLabel.text = "Touche: \(touche)"
            
        }
    }
    
    
    func flipButton(emoji: String, button: UIButton)  {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

    let emojiCollection = ["🐳","🦑","🐳","🦑"]
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var toucheLabel: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touche += 1
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
            flipButton(emoji: emojiCollection[buttonIndex], button: sender)
        }
    }
    
}
