//
//  ViewController.swift
//  notification-Center
//
//  Created by Sercan Yeşilyurt on 13.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var decryptButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func decryptButtonTapped(_ sender: UIButton) {
        
        guard let enteredCode = codeTextField.text, enteredCode == "1234" else {
            let alert = UIAlertController(title: "Incorrect Code", message: "Please enter the correct code to proceed.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
            let message = "Decoded Secret Message"
            NotificationCenter.default.post(name: NSNotification.Name("DecryptionComplete"), object: nil, userInfo: ["message": message])
        }
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

