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
    @IBOutlet weak var buttonEncrypt: UIButton!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        normalTextField.delegate = self
        buttonEncrypt.isEnabled = false
    }
    
    // MARK:-
   
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

// MARK:-

extension EncryptionViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var finalText = textField.text! as NSString
        finalText = finalText.replacingCharacters(in: range, with: string) as NSString
        self.encrytedTextLabel.text = ""
        buttonEncrypt.isEnabled = (finalText.length != 0)
        return true
    }
    
    
}
