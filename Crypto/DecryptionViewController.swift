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
    

