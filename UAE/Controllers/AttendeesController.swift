//
//  AttendeesController.swift
//  UAE
//
//  Created by Apple on 2/18/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

class AttendeesController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let memberCellId : String? = "memberCellId"
    let guestCellId : String? = "guestCellId"
    var currentCellId : String? = "memberCellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMembersAndGuestsegmentControlConstraints(segment: membersAndGuestsegmentControl)
        collectionView?.register(MemberCell.self, forCellWithReuseIdentifier: memberCellId!)
        collectionView?.register(GuestCell.self, forCellWithReuseIdentifier: guestCellId!)
        setNavigationItems()
    }
    
    private let membersAndGuestsegmentControl : UISegmentedControl = {
        let segment = UISegmentedControl(items: ["الضيوف", "الاعضاء"])
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.backgroundColor = .white
        segment.layer.cornerRadius = 15
        segment.layer.masksToBounds = true
        segment.addTarget(self, action: #selector(didTabOnSegmentControl), for: .valueChanged)
        return segment
    }()
    
    private func setMembersAndGuestsegmentControlConstraints (segment : UISegmentedControl){
        view.addSubview(membersAndGuestsegmentControl)
        NSLayoutConstraint.activate([
            segment.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            segment.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            segment.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            segment.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    @objc private func didTabOnSegmentControl (){
        switch membersAndGuestsegmentControl.selectedSegmentIndex {
        case 0:
            currentCellId = guestCellId!
            collectionView?.reloadData()
        case 1:
            currentCellId = memberCellId!
            collectionView?.reloadData()
        default:
            return
        }
    }
    
    private func setNavigationItems(){
        navigationItem.title = "الحضور"
        let backButton = UIButton(type: .system)
        backButton.setTitle("الرجوع", for: .normal)
//        backButton.setImage(#imageLiteral(resourceName: "back"), for: .normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 30)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: currentCellId!, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
}
