//
//  Meeting.swift
//  UAE
//
//  Created by Apple on 2/14/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

class MeetingCell : UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = .purple
        self.backgroundColor = .cyan
        setLayoutConstraints()
    }
    
    private func setLayoutConstraints(){
        addSubViewsInsideMainViews()
        setMeetingTitleLabelConstraints(label: meetingTitleLabel)
        setProfileIconConstraints(image: profileIcon)
        setCalenderIconConstraints(image: calenderIcon)
        setTimeIconConstraints(image: timeIcon)
        setLocationIconConstraints(image: locationIcon)
        setAttendeesIconConstraints(image: attendeesIcon)
        setProfileNameLabelConstraints(label: profileNameLabel)
        setCalenderLabelConstraints(label: calenderLabel)
        setTimeLabelConstraints(label: timeLabel)
        setLocationLabelConstraints(label: locationLabel)
        setAttendeesLabelConstraints(label: attendeesLabel)
        setAcceptButtonConstraints(button: acceptButton)
        setDeclineButtonConstraints(button: declineButton)
    }
    
    private func addSubViewsInsideMainViews(){
        addSubview(meetingTitleLabel)
        addSubview(profileIcon)
        addSubview(calenderIcon)
        addSubview(timeIcon)
        addSubview(locationIcon)
        addSubview(attendeesIcon)
        addSubview(profileNameLabel)
        addSubview(calenderLabel)
        addSubview(timeLabel)
        addSubview(locationLabel)
        addSubview(attendeesLabel)
        addSubview(acceptButton)
        addSubview(declineButton)
    }
    
    private let meetingTitleLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Testing"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.backgroundColor = UIColor.green
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        return label
    }()
    
    private func setMeetingTitleLabelConstraints(label : UILabel){
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            label.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private let profileIcon : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
//        image.image = #imageLiteral(resourceName: "iu")
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
        image.backgroundColor = .red
        return image
    }()
    
    private func setProfileIconConstraints(image : UIImageView){
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: meetingTitleLabel.bottomAnchor, constant: 10),
            image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            image.widthAnchor.constraint(equalToConstant: 30),
            image.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private let profileNameLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name"
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        return label
    }()
    
    private func setProfileNameLabelConstraints(label : UILabel){
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: meetingTitleLabel.bottomAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: profileIcon.leadingAnchor, constant: -10),
            label.heightAnchor.constraint(equalTo: profileIcon.heightAnchor, multiplier: 1)
        ])
    }
    
    private let calenderIcon : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        //        image.image = #imageLiteral(resourceName: "iu")
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
        image.backgroundColor = .red
        return image
    }()
    
    private func setCalenderIconConstraints(image : UIImageView){
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: profileIcon.bottomAnchor, constant: 10),
            image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            image.widthAnchor.constraint(equalToConstant: 30),
            image.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private let calenderLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name"
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        return label
    }()
    
    private func setCalenderLabelConstraints(label : UILabel){
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: profileNameLabel.bottomAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: calenderIcon.leadingAnchor, constant: -10),
            label.heightAnchor.constraint(equalTo: calenderIcon.heightAnchor, multiplier: 1)
        ])
    }
    
    private let timeIcon : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        //        image.image = #imageLiteral(resourceName: "iu")
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
        image.backgroundColor = .red
        return image
    }()
    
    private func setTimeIconConstraints(image : UIImageView){
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: calenderIcon.bottomAnchor, constant: 10),
            image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            image.widthAnchor.constraint(equalToConstant: 30),
            image.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private let timeLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name"
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        return label
    }()
    
    private func setTimeLabelConstraints(label : UILabel){
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: calenderLabel.bottomAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: timeIcon.leadingAnchor, constant: -10),
            label.heightAnchor.constraint(equalTo: timeIcon.heightAnchor, multiplier: 1)
            ])
    }
    
    private let locationIcon : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        //        image.image = #imageLiteral(resourceName: "iu")
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
        image.backgroundColor = .red
        return image
    }()
    
    private func setLocationIconConstraints(image : UIImageView){
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: timeIcon.bottomAnchor, constant: 12),
            image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            image.widthAnchor.constraint(equalToConstant: 30),
            image.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private let locationLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name"
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        return label
    }()
    
    private func setLocationLabelConstraints(label : UILabel){
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: timeIcon.leadingAnchor, constant: -10),
            label.heightAnchor.constraint(equalTo: timeIcon.heightAnchor, multiplier: 1)
        ])
    }
    
    private let attendeesIcon : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        //        image.image = #imageLiteral(resourceName: "iu")
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
        image.backgroundColor = .red
        return image
    }()
    
    private func setAttendeesIconConstraints(image : UIImageView){
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: locationIcon.bottomAnchor, constant: 12),
            image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            image.widthAnchor.constraint(equalToConstant: 30),
            image.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private let attendeesLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name"
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        return label
    }()
    
    private func setAttendeesLabelConstraints(label : UILabel){
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: attendeesIcon.leadingAnchor, constant: -10),
            label.heightAnchor.constraint(equalTo: attendeesIcon.heightAnchor, multiplier: 1)
        ])
    }
    
    private let acceptButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Accept", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.backgroundColor = .brown
        return button
    }()
    
    private func setAcceptButtonConstraints(button : UIButton){
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 30),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            button.topAnchor.constraint(equalTo: attendeesLabel.bottomAnchor, constant: 10),
            button.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private let declineButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Decline", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.backgroundColor = .brown
        return button
    }()
    
    private func setDeclineButtonConstraints(button : UIButton){
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 30),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            button.topAnchor.constraint(equalTo: attendeesLabel.bottomAnchor, constant: 10),
            button.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
