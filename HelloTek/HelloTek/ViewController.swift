//
//  ViewController.swift
//  HelloTek
//
//  Created by Alejandro Pérez Gómez on 12/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(_ sender: UIButton) {
        var emojiDict = ["👽":"Alien", "🤖":"Robot", "🦜":"Parrot"]
                
                let selectedButton = sender
                
                if let wordToLookup = selectedButton.titleLabel?.text {
                    
                    let meaning = emojiDict[wordToLookup]
                    
                    let alertController = UIAlertController(title: "Meaning", message: "Hello " + meaning!, preferredStyle: UIAlertController.Style.alert)
                    
                    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    present(alertController, animated: true, completion: nil)
                }

    }
    
}

