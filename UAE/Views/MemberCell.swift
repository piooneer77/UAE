//
//  AttendeeCell.swift
//  UAE
//
//  Created by Apple on 2/18/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

class MemberCell : UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayoutConstraints()
    }
    
    private func setLayoutConstraints(){
        addSubViewsInsideMainViews()
        setProfileImageConstraints(image: profileImage)
        setAttendeeNameLabelConstraints(label: attendeeNameLabel)
    }
    
    private func addSubViewsInsideMainViews(){
        addSubview(profileImage)
        addSubview(attendeeNameLabel)
    }
    
    private let profileImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 20
        image.layer.masksToBounds = true
        image.contentMode = .scaleToFill
        image.backgroundColor = .red
        return image
    }()
    
    private func setProfileImageConstraints(image : UIImageView){
        NSLayoutConstraint.activate([
            image.heightAnchor.constraint(equalToConstant: 40),
            image.widthAnchor.constraint(equalToConstant: 40),
            image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            image.topAnchor.constraint(equalTo: self.topAnchor, constant: 20)
        ])
    }
    
    private let attendeeNameLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name"
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = .white
        label.layer.cornerRadius = 20
        label.layer.masksToBounds = true
        return label
    }()
    
    private func setAttendeeNameLabelConstraints(label : UILabel){
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: profileImage.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: profileImage.leadingAnchor, constant: -20),
            label.heightAnchor.constraint(equalTo: profileImage.heightAnchor, multiplier: 1)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
