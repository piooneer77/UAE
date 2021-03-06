//
//  LoginPageView.swift
//  UAE
//
//  Created by Apple on 2/14/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit
import LocalAuthentication

class LoginPageViewController: UIViewController {
    
    private var isChecked: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewsConstraints()
        rememberMeTapped()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setViewsConstraints(){
        addSubViewsInsideMainViews()
        setLoginBackgroundImageView(image: loginBackgroundImageView)
        setDubaiGovBackgroundImageView(image: dubaiGovBackgroundImageView)
        setEmailTextViewConstraints(text: emailTextView)
        setEmailSeperatorViewLayoutConstraints(view: emailSeperatorView)
        setMagicTextViewConstraints(text: magicTextView)
        setMagicSeperatorViewLayoutConstraints(view: magicSeperatorView)
        setLoginButtonConstraints(button: loginButton)
        setLeftLinkSeperatorViewLayoutConstraints(view: leftLinkSeperatorView)
        setRightLinkSeperatorViewLayoutConstraints(view: rightLinkSeperatorView)
        setLoginLinkLabelConstraints(label: loginLinkLabel)
        setFaceRecognitionBackgroundButtonView(button: faceRecognitionButtonView)
        setFingerPrintBackgroundButtonView(button: fingerPrintButtonView)
        setLoginOptionsStackView(stack: loginOptionsStackView)
        setRememberMeCheckBoxViewLayoutConstraints(button: remeberMeButton)
        setRememberMeLabelConstraints(label: rememberMeButtonLabel)
        setRememberMeStackView(stack: rememberMeStackView)
        setForgetPasswordButtonConstraints(button: forgetPasswordButton)
    }
    
    private func addSubViewsInsideMainViews(){
        view.addSubview(loginBackgroundImageView)
        view.addSubview(dubaiGovBackgroundImageView)
        view.addSubview(emailTextView)
        view.addSubview(emailSeperatorView)
        view.addSubview(magicTextView)
        view.addSubview(magicSeperatorView)
        view.addSubview(loginButton)
        view.addSubview(loginLinkLabel)
        view.addSubview(leftLinkSeperatorView)
        view.addSubview(rightLinkSeperatorView)
        view.addSubview(loginOptionsStackView)
        view.addSubview(remeberMeButton)
        view.addSubview(rememberMeButtonLabel)
        view.addSubview(rememberMeStackView)
        view.addSubview(forgetPasswordButton)
    }
    
    @objc func rememberMeTapped(){
        isChecked = !isChecked
        if isChecked {
            remeberMeButton.setBackgroundImage(#imageLiteral(resourceName: "unchecked"), for: .normal)
        } else {
            remeberMeButton.setBackgroundImage(#imageLiteral(resourceName: "checked"), for: .normal)
        }
    }
    
    @objc func authenticateWithTouchID(){
        TouchIDAuthentication.AuthenticateWithTouchID()
    }
    
    private let dubaiGovBackgroundImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = #imageLiteral(resourceName: "dubaiGovernment2")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private func setDubaiGovBackgroundImageView(image: UIImageView){
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            image.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private let emailTextView : UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.systemFont(ofSize: 15)
        text.backgroundColor = .clear
        let attributes = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 15),
                          NSAttributedStringKey.foregroundColor: UIColor.white]
        text.attributedPlaceholder = NSAttributedString(string: "البريد الإلكتروني", attributes: attributes)
        return text
    }()
    
    private func setEmailTextViewConstraints(text : UITextField){
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: dubaiGovBackgroundImageView.bottomAnchor, constant: 50),
            text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            text.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            text.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private let emailSeperatorView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    private func setEmailSeperatorViewLayoutConstraints(view : UIView){
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: emailTextView.bottomAnchor, constant: 0),
            view.leadingAnchor.constraint(equalTo: emailTextView.leadingAnchor, constant: 0),
            view.trailingAnchor.constraint(equalTo: emailTextView.trailingAnchor, constant: 0),
            view.heightAnchor.constraint(equalToConstant: 2)
        ])
    }
    
    private let magicTextView : UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.systemFont(ofSize: 15)
        text.backgroundColor = .clear
        let attributes = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 15),
                          NSAttributedStringKey.foregroundColor: UIColor.white]
        text.attributedPlaceholder = NSAttributedString(string: "كلمة المرور ", attributes: attributes)
        text.isSecureTextEntry = true
        return text
    }()
    
    private func setMagicTextViewConstraints(text : UITextField){
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: emailSeperatorView.bottomAnchor, constant: 12),
            text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            text.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            text.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private let magicSeperatorView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    private func setMagicSeperatorViewLayoutConstraints(view : UIView){
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: magicTextView.bottomAnchor, constant: 0),
            view.leadingAnchor.constraint(equalTo: magicTextView.leadingAnchor, constant: 0),
            view.trailingAnchor.constraint(equalTo: magicTextView.trailingAnchor, constant: 0),
            view.heightAnchor.constraint(equalToConstant: 2)
        ])
    }
    
    private let remeberMeButton : UIButton = {
        let checkBox = UIButton()
        checkBox.translatesAutoresizingMaskIntoConstraints = false
        checkBox.addTarget(self, action: #selector(rememberMeTapped), for: .touchUpInside)
        checkBox.backgroundColor = .white
        return checkBox
    }()
    
    private func setRememberMeCheckBoxViewLayoutConstraints(button : UIButton){
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 30),
            button.widthAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private let rememberMeButtonLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "تذكرني"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        label.backgroundColor = .clear
        label.textAlignment = .center
        return label
    }()
    
    private func setRememberMeLabelConstraints(label : UILabel){
        NSLayoutConstraint.activate([
            label.widthAnchor.constraint(equalTo: loginButton.widthAnchor, multiplier: 0.3),
            label.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private lazy var rememberMeStackView : UIStackView = {
        let stack = UIStackView(arrangedSubviews: [rememberMeButtonLabel, remeberMeButton])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 25
        stack.alignment = .center
        return stack
    }()
    
    private func setRememberMeStackView(stack: UIStackView){
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stack.topAnchor.constraint(equalTo: magicSeperatorView.bottomAnchor, constant: 20),
            stack.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private var forgetPasswordButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("نسيت كلمة المرور", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.backgroundColor = UIColor.clear
        return button
    }()
    
    private func setForgetPasswordButtonConstraints(button : UIButton){
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: rememberMeStackView.bottomAnchor, constant: 20),
            button.heightAnchor.constraint(equalToConstant: 30),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private var loginButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("دخول", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.layer.cornerRadius = 23
        button.layer.masksToBounds = true
        button.backgroundColor = UIColor(displayP3Red: 0.3, green: 0.6, blue: 0.9, alpha: 1)
        return button
    }()
    
    private func setLoginButtonConstraints(button : UIButton){
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: forgetPasswordButton.bottomAnchor, constant: 30),
            button.heightAnchor.constraint(equalToConstant: 46),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalTo: magicSeperatorView.widthAnchor, multiplier: 1)
        ])
    }
    
    private let loginBackgroundImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = #imageLiteral(resourceName: "bg")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private func setLoginBackgroundImageView(image: UIImageView){
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    
    private let loginLinkLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ربط عن طريق"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        label.backgroundColor = .clear
        label.textAlignment = .center
        return label
    }()
    
    private func setLoginLinkLabelConstraints(label : UILabel){
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 15),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalTo: loginButton.widthAnchor, multiplier: 0.3),
            label.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private let leftLinkSeperatorView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    private func setLeftLinkSeperatorViewLayoutConstraints(view : UIView){
        NSLayoutConstraint.activate([
            view.centerYAnchor.constraint(equalTo: loginLinkLabel.centerYAnchor),
            view.leadingAnchor.constraint(equalTo: magicSeperatorView.leadingAnchor, constant: 0),
            view.trailingAnchor.constraint(equalTo: loginLinkLabel.leadingAnchor, constant: -5),
            view.heightAnchor.constraint(equalToConstant: 2)
        ])
    }
    
    private let rightLinkSeperatorView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    private func setRightLinkSeperatorViewLayoutConstraints(view : UIView){
        NSLayoutConstraint.activate([
            view.centerYAnchor.constraint(equalTo: loginLinkLabel.centerYAnchor, constant: 0),
            view.leadingAnchor.constraint(equalTo: loginLinkLabel.trailingAnchor, constant: 5),
            view.trailingAnchor.constraint(equalTo: magicSeperatorView.trailingAnchor, constant: 0),
            view.heightAnchor.constraint(equalToConstant: 2)
        ])
    }
    
    private lazy var loginOptionsStackView : UIStackView = {
       let stack = UIStackView(arrangedSubviews: [faceRecognitionButtonView, fingerPrintButtonView])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 50
        stack.alignment = .center
        return stack
    }()
    
    private func setLoginOptionsStackView(stack: UIStackView){
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stack.topAnchor.constraint(equalTo: loginLinkLabel.bottomAnchor, constant: 50),
            stack.widthAnchor.constraint(equalToConstant: 120),
            stack.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private let faceRecognitionButtonView : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(#imageLiteral(resourceName: "faceRecognition"), for: .normal)
        button.contentMode = .scaleAspectFill
        return button
    }()
    
    private func setFaceRecognitionBackgroundButtonView(button: UIButton){
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private let fingerPrintButtonView : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(#imageLiteral(resourceName: "fingerPrint"), for: .normal)
        button.contentMode = .scaleAspectFill
        button.addTarget(self, action: #selector(authenticateWithTouchID), for: .touchUpInside)
        return button
    }()
    
    private func setFingerPrintBackgroundButtonView(button: UIButton){
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}
