//
//  GuestCell.swift
//  UAE
//
//  Created by Apple on 2/18/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

class GuestCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayoutConstraints()
    }
    
    private func setLayoutConstraints(){
        addSubViewsInsideMainViews()
        setAttendeeNameLabelConstraints(label: attendeeNameLabel)
    }

    private func addSubViewsInsideMainViews(){
        addSubview(attendeeNameLabel)
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
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            label.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
