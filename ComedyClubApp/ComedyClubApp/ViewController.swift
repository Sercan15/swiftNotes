//
//  ViewController.swift
//  ComedyClubApp
//
//  Created by Sercan Yeşilyurt on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.black.withAlphaComponent(0.95)
    
        let clubNameLabel = UILabel(frame: CGRect(x: 0, y: 120, width: screenWidth, height: 50))
        clubNameLabel.text = "The Laughing Lounge "
        clubNameLabel.font = UIFont.boldSystemFont(ofSize: 28)
        clubNameLabel.textAlignment = .center
        clubNameLabel.textColor = .white
        clubNameLabel.layer.shadowColor = UIColor.red.cgColor
        clubNameLabel.layer.shadowOffset = CGSize(width: 0, height: 2)
        clubNameLabel.layer.shadowOpacity = 0.8
        clubNameLabel.layer.shadowRadius = 3
        view.addSubview(clubNameLabel)
        
        
        let clubImageView = UIImageView(frame: CGRect(x: screenWidth * 0.1, y: clubNameLabel.frame.maxY + 20, width: screenWidth * 0.8, height: screenHeight * 0.25))
        clubImageView.image = UIImage(named: "comedyImage")
        clubImageView.contentMode = .scaleAspectFill
        clubImageView.clipsToBounds = true
        clubImageView.layer.cornerRadius = 15
        clubImageView.layer.borderWidth = 4
        clubImageView.layer.borderColor = UIColor.yellow.cgColor
        clubImageView.layer.shadowColor = UIColor.gray.cgColor
        clubImageView.layer.shadowOffset = CGSize(width: 0, height: 5)
        clubImageView.layer.shadowOpacity = 0.5
        clubImageView.layer.shadowRadius = 4
        view.addSubview(clubImageView)
        
        let upcomingShowsView = UIView(frame: CGRect(x: 20, y: clubImageView.frame.maxY + 30, width: screenWidth - 40, height: screenHeight * 0.25))
        upcomingShowsView.backgroundColor = UIColor.darkGray.withAlphaComponent(0.8)
        upcomingShowsView.layer.cornerRadius = 20
        upcomingShowsView.layer.borderWidth = 2
        upcomingShowsView.layer.borderColor = UIColor.yellow.cgColor
        upcomingShowsView.layer.shadowColor = UIColor.black.cgColor
        upcomingShowsView.layer.shadowOffset = CGSize(width: 0, height: 3)
        upcomingShowsView.layer.shadowOpacity = 0.5
        upcomingShowsView.layer.shadowRadius = 4
        view.addSubview(upcomingShowsView)
        
        
        let showsImageView = UIImageView(frame: CGRect(x: 15, y: 15, width: 70, height: 70))
        showsImageView.image = UIImage(named: "comedyImage")
        showsImageView.contentMode = .scaleAspectFit
        showsImageView.layer.cornerRadius = 35
        showsImageView.clipsToBounds = true
        showsImageView.layer.borderWidth = 2
        showsImageView.layer.borderColor = UIColor.yellow.cgColor
        upcomingShowsView.addSubview(showsImageView)
        
        
        let showsLabel = UILabel(frame: CGRect(x: showsImageView.frame.maxX + 15, y: 15, width: upcomingShowsView.frame.width - showsImageView.frame.width - 30, height: 70))
        showsLabel.text = """
            Upcoming Shows 
        1. Laugh Fest - Nov 25
        2. Open Mic Night - Dec 2
        """
        showsLabel.numberOfLines = 0
        showsLabel.font = UIFont.systemFont(ofSize: 16)
        showsLabel.textColor = .white
        upcomingShowsView.addSubview(showsLabel)
        
        
        let ticketLabel = UILabel(frame: CGRect(x: 10, y: showsImageView.frame.maxY + 20, width: upcomingShowsView.frame.width - 20, height: 40))
        ticketLabel.text = "Get your tickets now!"
        ticketLabel.font = UIFont.italicSystemFont(ofSize: 18)
        ticketLabel.textColor = .yellow
        ticketLabel.textAlignment = .center
        ticketLabel.layer.shadowColor = UIColor.black.cgColor
        ticketLabel.layer.shadowOffset = CGSize(width: 0, height: 2)
        ticketLabel.layer.shadowOpacity = 0.8
        ticketLabel.layer.shadowRadius = 2
        upcomingShowsView.addSubview(ticketLabel)
    }
}
