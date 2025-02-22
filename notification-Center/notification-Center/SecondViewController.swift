//
//  SecondViewController.swift
//  notification-Center
//
//  Created by Sercan Yeşilyurt on 13.11.2024.
//
import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    var countdownTimer: Timer?
    var countdown = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startCountdown()
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleDecryptionComplete(_:)), name: NSNotification.Name("DecryptionComplete"), object: nil)
    }
    func startCountdown() {
        countdownTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCountdown), userInfo: nil, repeats: true)
    }
    
    @objc func updateCountdown() {
        if countdown > 0 {
            messageLabel.text = "Decryption in progress... \(countdown) seconds left"
            countdown -= 1
        } else {
            countdownTimer?.invalidate()
        }
    }

    @objc func handleDecryptionComplete(_ notification: Notification) {
        if let userInfo = notification.userInfo, let decryptedMessage = userInfo["message"] as? String {
            messageLabel.text = decryptedMessage
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.messageLabel.text = ""
            }
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
        countdownTimer?.invalidate()
    }
}
