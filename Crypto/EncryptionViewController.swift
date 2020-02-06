//
//  EncryptionViewController.swift
//  Crypto
//
//  Created by Rajkishore on 06/02/20.
//  Copyright © 2020 Rajkishore. All rights reserved.
//

import UIKit

class EncryptionViewController: UIViewController {
    @IBOutlet weak var normalTextField: UITextField!
    @IBOutlet weak var encrytedTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func encryptedButton(_ sender: Any) {
      let normalText = normalTextField.text
      let letterArray = Array(normalText!)
      var returnValue = ""
      var letterCounter = 0
                for i in 0 ..< letterArray.count {
                    letterCounter += 1
                    if i + 1 == letterArray.count || letterArray[i] !=
                        letterArray[i + 1] {
                        returnValue += "\(letterArray[i])\(letterCounter)"
                        letterCounter = 0
           
                        
                    }
               }
         encrytedTextLabel.text = returnValue
        }
    }
    

