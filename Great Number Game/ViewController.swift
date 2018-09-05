//
//  ViewController.swift
//  Great Number Game
//
//  Created by Tiange Wang on 9/4/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputField: UITextField!
    var target: Int = 0
    
    @IBAction func getResult(_ sender: UIButton) {
        if let userEntered = inputField.text {
            if let actual = Int(userEntered) {
                if actual > target {
                    let alert = UIAlertController(title: "Incorrect", message: "\n\(actual) is too high", preferredStyle: .alert)
                    alert.view.backgroundColor = UIColor.red
                    alert.addAction(UIAlertAction(title: NSLocalizedString("Guess Again", comment: "Default action"), style: .default, handler: nil
                    ))
                    self.present(alert, animated: true, completion: nil)
                } else if actual < target {
                    let alert = UIAlertController(title: "Incorrect", message: "\n\(actual) is too low", preferredStyle: .alert)
                    alert.view.backgroundColor = UIColor.red
                    alert.addAction(UIAlertAction(title: NSLocalizedString("Guess Again", comment: "Default action"), style: .default, handler: nil
                    ))
                    self.present(alert, animated: true, completion: nil)
                } else {
                    let alert = UIAlertController(title: "Correct", message: "\n\(actual) is correct!!!", preferredStyle: .alert)
                    alert.view.backgroundColor = UIColor.green
                    alert.addAction(UIAlertAction(title: NSLocalizedString("Play Again", comment: "Default action"), style: .default, handler: nil
                    ))
                    self.present(alert, animated: true, completion: nil)
                    target = Int(1 + arc4random_uniform(100))
                }
            } else {
                let alert = UIAlertController(title: "Not a number", message: "\nPlease enter a number", preferredStyle: .alert)
                alert.view.backgroundColor = UIColor.red
                alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil
                ))
                self.present(alert, animated: true, completion: nil)
            }
        } else {
            let alert = UIAlertController(title: "Empty", message: "\nPlease enter a number", preferredStyle: .alert)
            alert.view.backgroundColor = UIColor.red
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil
            ))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        target = Int(1 + arc4random_uniform(100))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

