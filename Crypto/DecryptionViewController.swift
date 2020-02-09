//
//  DecryptionViewController.swift
//  Crypto
//
//  Created by Rajkishore on 06/02/20.
//  Copyright © 2020 Rajkishore. All rights reserved.
//

import UIKit

class DecryptionViewController: UIViewController {

    @IBOutlet weak var encryptedTextField: UITextField!
    @IBOutlet weak var normalTextLabel: UILabel!
    @IBOutlet weak var decryptionButtion: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
            encryptedTextField.delegate = self
           decryptionButtion.isEnabled = false
        
    }
    
     //  MARK: -

    @IBAction func decryptedButton(_ sender: Any) {
        let encryptdText = encryptedTextField.text
        let containArray = Array(encryptdText ?? "")
        var resultArray = ""
        for element in stride(from: 1, to: containArray.count, by: 2) {
            let elementCount = Int(String(containArray[element])) ?? 0
            var tempStoreEle = ""
            for _ in 1...elementCount {
                tempStoreEle.append(containArray[element - 1])
            }
            resultArray.append(contentsOf: tempStoreEle)
        }
        normalTextLabel.text = resultArray
    }
}

// MARK: -

extension DecryptionViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var finalText = textField.text! as NSString
        finalText = finalText.replacingCharacters(in:range, with: string) as NSString
        self.normalTextLabel.text = ""
        decryptionButtion.isEnabled = (finalText.length != 0)
        return true
    }
}
