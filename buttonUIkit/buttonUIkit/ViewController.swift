//
//  ViewController.swift
//  buttonUIkit
//
//  Created by Sercan Yeşilyurt on 14.11.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    let sheriffButton: UIButton = UIButton(type: .system)
    let dropdownView: UIStackView = UIStackView()
    let saloonButton: UIButton = UIButton(type: .system)
    let vigilanteButton: UIButton = UIButton(type: .system)
    let blacksmithButton: UIButton = UIButton(type: .system)
    let toggleButton: UIButton = UIButton(type: .system)
    let robberButton: UIButton = UIButton(type: .system)
    let messageLabel: UILabel = UILabel()
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSheriffButton()
        setupDropdownMenu()
        setupSaloonButton()
        setupMessageLabel()
        setupVigilanteButton()
        setupBlacksmithButton()
        setupRobberButton()
        
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "vault_sound", withExtension: "mp3") else { return }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch let error {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }
    
    func setupSheriffButton() {
        sheriffButton.setTitle("Sheriff Actions", for: .normal)
        sheriffButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        sheriffButton.backgroundColor = .brown
        sheriffButton.tintColor = .white
        sheriffButton.layer.cornerRadius = 10
        sheriffButton.addTarget(self, action: #selector(toggleDropdownMenu), for: .touchUpInside)
        sheriffButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sheriffButton)
        NSLayoutConstraint.activate([
            sheriffButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sheriffButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -250),
            sheriffButton.widthAnchor.constraint(equalToConstant: 200),
            sheriffButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupDropdownMenu() {
        dropdownView.axis = .vertical
        dropdownView.spacing = 8
        dropdownView.alignment = .center
        dropdownView.distribution = .fillEqually
        dropdownView.isHidden = true
        
        let backupButton = UIButton(type: .system)
        backupButton.setTitle("Call Backup", for: .normal)
        backupButton.addTarget(self, action: #selector(callBackup), for: .touchUpInside)
        
        let warnButton = UIButton(type: .system)
        warnButton.setTitle("Issue Warning", for: .normal)
        warnButton.addTarget(self, action: #selector(issueWarning), for: .touchUpInside)
        
        dropdownView.addArrangedSubview(backupButton)
        dropdownView.addArrangedSubview(warnButton)
        
        dropdownView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dropdownView)
        
        NSLayoutConstraint.activate([
            dropdownView.topAnchor.constraint(equalTo: sheriffButton.bottomAnchor, constant: 8),
            dropdownView.centerXAnchor.constraint(equalTo: sheriffButton.centerXAnchor),
            dropdownView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func setupSaloonButton() {
        saloonButton.setTitle("Show Daily Specials", for: .normal)
        saloonButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        saloonButton.titleLabel?.textAlignment = .center
        saloonButton.setBackgroundImage(UIImage(named: "saloon_background"), for: .normal)
        saloonButton.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        saloonButton.layer.cornerRadius = 10
        saloonButton.layer.borderWidth = 2
        saloonButton.layer.borderColor = UIColor.blue.cgColor
        saloonButton.layer.shadowColor = UIColor.black.cgColor
        saloonButton.layer.shadowOffset = CGSize(width: 3, height: 3)
        saloonButton.layer.shadowOpacity = 0.7
        saloonButton.layer.shadowRadius = 4
        saloonButton.addTarget(self, action: #selector(showDailySpecials), for: .touchUpInside)
        saloonButton.translatesAutoresizingMaskIntoConstraints = false
        saloonButton.clipsToBounds = true
        view.addSubview(saloonButton)
        
        NSLayoutConstraint.activate([
            saloonButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saloonButton.topAnchor.constraint(equalTo: dropdownView.bottomAnchor, constant: 30),
            saloonButton.widthAnchor.constraint(equalToConstant: 250),
            saloonButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    func setupVigilanteButton() {
        vigilanteButton.setTitle("Vigilante Alert", for: .normal)
        vigilanteButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        vigilanteButton.setImage(UIImage(systemName: "star"), for: .normal)
        vigilanteButton.tintColor = .purple
        vigilanteButton.backgroundColor = .clear // İlk renk
        vigilanteButton.addTarget(self, action: #selector(vigilanteButtonTapped), for: .touchDown)
        vigilanteButton.addTarget(self, action: #selector(vigilanteButtonReleased), for: [.touchUpInside, .touchCancel])
        vigilanteButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vigilanteButton)
        
        NSLayoutConstraint.activate([
            vigilanteButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vigilanteButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 20),
            vigilanteButton.widthAnchor.constraint(equalToConstant: 200),
            vigilanteButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    func setupBlacksmithButton() {
        blacksmithButton.setTitle("Blacksmith Action", for: .normal)
        blacksmithButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        blacksmithButton.backgroundColor = .gray
        blacksmithButton.tintColor = .white
        blacksmithButton.addTarget(self, action: #selector(toggleButtonState), for: .touchUpInside)
        
        toggleButton.setTitle("Tool Button", for: .normal)
        toggleButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        toggleButton.backgroundColor = .lightGray
        toggleButton.isEnabled = false // İlk başta pasif
        
        blacksmithButton.translatesAutoresizingMaskIntoConstraints = false
        toggleButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blacksmithButton)
        view.addSubview(toggleButton)
        
        NSLayoutConstraint.activate([
            blacksmithButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blacksmithButton.topAnchor.constraint(equalTo: vigilanteButton.bottomAnchor, constant: 20),
            blacksmithButton.widthAnchor.constraint(equalToConstant: 200),
            blacksmithButton.heightAnchor.constraint(equalToConstant: 50),
            
            toggleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toggleButton.topAnchor.constraint(equalTo: blacksmithButton.bottomAnchor, constant: 10),
            toggleButton.widthAnchor.constraint(equalToConstant: 200),
            toggleButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    func setupRobberButton() {
        robberButton.setTitle("Rob the Bank", for: .normal)
        robberButton.setImage(UIImage(systemName: "lock.shield"), for: .normal)
        robberButton.setImage(UIImage(systemName: "lock.open"), for: .highlighted)
        robberButton.tintColor = .white
        robberButton.backgroundColor = .darkGray
        robberButton.layer.cornerRadius = 10
        robberButton.addTarget(self, action: #selector(robTheBank), for: .touchUpInside)
        
        robberButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(robberButton)
        
        NSLayoutConstraint.activate([
            robberButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            robberButton.topAnchor.constraint(equalTo: toggleButton.bottomAnchor, constant: 20),
            robberButton.widthAnchor.constraint(equalToConstant: 200),
            robberButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupMessageLabel() {
        messageLabel.text = "Choose an action"
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        messageLabel.textColor = .darkGray
        messageLabel.numberOfLines = 0
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(messageLabel)
        
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: saloonButton.bottomAnchor, constant: 16),
            messageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            messageLabel.widthAnchor.constraint(equalToConstant: 250),
            messageLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    
    @objc func toggleButtonState() {
        toggleButton.isEnabled.toggle()
        toggleButton.backgroundColor = toggleButton.isEnabled ? .green : .lightGray
    }
    @objc func robTheBank() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: .linear)
        animation.values = [-10, 10, -10, 10, -5, 5, 0]
        animation.duration = 0.6
        robberButton.layer.add(animation, forKey: "shake")
        playSound()
    }
    
    @objc func vigilanteButtonTapped() {
        vigilanteButton.backgroundColor = .yellow
    }
    
    @objc func vigilanteButtonReleased() {
        vigilanteButton.backgroundColor = .clear
    }
    
    @objc func toggleDropdownMenu() {
        dropdownView.isHidden.toggle()
    }
    
    @objc func callBackup() {
        messageLabel.text = "Backup called!"
    }
    
    @objc func issueWarning() {
        messageLabel.text = "Warning issued to townspeople!"
    }
    
    @objc func showDailySpecials() {
        messageLabel.text = "Today's Specials:\n- Whiskey\n- Steak\n- Beans"
    }
}
