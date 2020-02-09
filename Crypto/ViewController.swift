//
//  ViewController.swift
//  Crypto
//
//  Created by Rajkishore on 04/02/20.
//  Copyright © 2020 Rajkishore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onClickEncryptionButton(_ sender: UIButton) {
        let EncryptionVC = storyboard?.instantiateViewController(withIdentifier: "EncryptionViewController") as! EncryptionViewController
        navigationController?.pushViewController(EncryptionVC, animated: true)
    }
    @IBAction func onClickDecryptionButton(_ sender: UIButton) {
        let DecryptionVC = storyboard?.instantiateViewController(withIdentifier: "DecryptionViewController") as! DecryptionViewController
        navigationController?.pushViewController(DecryptionVC, animated: true)
    }

}

