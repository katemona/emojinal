//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var customMessages = [
        "You Should Get..." : ["McDonald's", "Culver's", "Taco Bell"],
        "You Should Try..." : ["Cheesecake Factory", "River Roast", "Greek Islands"]
]

    let emojis = ["🥡" : "You Should Get...", "🍽" : "You Should Try..."]
    
    override func viewDidLoad()
{
        super.viewDidLoad()
        // Do any additional setup after loading the view.
}

    @IBAction func showMessage(sender: UIButton)
{

        let selectedEmotion = sender.titleLabel?.text
    
    let random: UInt32 = arc4random_uniform(3)
    
    let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int(random)]

        
    let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
            present(alertController, animated: true, completion: nil)
    
}

    @IBAction func showSecond(sender: UIButton)
{
    let selectedEmotion = sender.titleLabel?.text

    let random: UInt32 = arc4random_uniform(3)
    
    let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int(random)]
        
    let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
}

    
}

