//
//  ViewController.swift
//  SnapKitt
//
//  Created by Sercan Yeşilyurt on 13.11.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let futureTechLabel = UILabel()
    
    let robotView = UIView()
    let robotImageView = UIImageView()
    let robotLabel = UILabel()
    let robotButton = UIButton()
    let robotView2 = UIView()
    let robotImageView2 = UIImageView()
    let robotLabel2 = UILabel()
    let robotButton2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(futureTechLabel)
        futureTechLabel.text = "Future Tech"
        futureTechLabel.textColor = .blue
        futureTechLabel.font = .systemFont(ofSize: 30)
        futureTechLabel.textAlignment = .center
        futureTechLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(90)
        }
        
        view.addSubview(robotView)
        robotView.backgroundColor = .gray
        robotView.layer.cornerRadius = 10
        robotView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(futureTechLabel.snp.bottom).offset(40)
            make.width.equalTo(200)
            make.height.equalTo(150)
        }
        
        robotView.addSubview(robotLabel)
        robotLabel.text = "Robot 1"
        robotLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        robotLabel.textColor = .black
        robotLabel.textAlignment = .center
        robotLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.centerX.equalToSuperview()
        }
        
     
        robotView.addSubview(robotImageView)
        robotImageView.image = UIImage(named: "robot")
        robotImageView.contentMode = .scaleAspectFit
        robotImageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(80)
        }
        
        robotView.addSubview(robotButton)
        robotButton.setTitle("Turn On", for: .normal)
        robotButton.backgroundColor = .green
        robotButton.layer.cornerRadius = 10
        robotButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-10)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        
        robotButton.addTarget(self, action: #selector(robotButtonTapped), for: .touchUpInside)
        
        
        view.addSubview(robotView2)
        robotView2.backgroundColor = .lightGray
        robotView2.layer.cornerRadius = 10
        robotView2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(robotView.snp.bottom).offset(20)
            make.width.equalTo(200)
            make.height.equalTo(150)
        }
        
        
        robotView2.addSubview(robotLabel2)
        robotLabel2.text = "Robot2"
        robotLabel2.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        robotLabel2.textColor = .black
        robotLabel2.textAlignment = .center
        robotLabel2.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.centerX.equalToSuperview()
        }
        
        
        robotView2.addSubview(robotImageView2)
        robotImageView2.image = UIImage(named: "robot2")
        robotImageView2.contentMode = .scaleAspectFit
        robotImageView2.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(80)
        }
        
        
        robotView2.addSubview(robotButton2)
        robotButton2.setTitle("Turn On", for: .normal)
        robotButton2.backgroundColor = .green
        robotButton2.layer.cornerRadius = 10
        robotButton2.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-10)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        robotButton2.addTarget(self, action: #selector(robotButton2Tapped), for: .touchUpInside)
    }
    
    @objc func robotButtonTapped() {
            if robotButton.title(for: .normal) == "Turn On" {
                robotButton.setTitle("Turn Off", for: .normal)
                robotButton.backgroundColor = .red
            } else {
                robotButton.setTitle("Turn On", for: .normal)
                robotButton.backgroundColor = .green
            }
        }
        
        
    @objc func robotButton2Tapped() {
            if robotButton2.title(for: .normal) == "Turn On" {
                robotButton2.setTitle("Turn Off", for: .normal)
                robotButton2.backgroundColor = .red
            } else {
                robotButton2.setTitle("Turn On", for: .normal)
                robotButton2.backgroundColor = .green
            }
        }
}
