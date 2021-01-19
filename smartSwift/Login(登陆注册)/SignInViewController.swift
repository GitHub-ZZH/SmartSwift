//
//  SignInViewController.swift
//  smartSwift
//
//  Created by abovelink on 2020/11/19.
//

import UIKit

class SignInViewController: BaseViewController {
    
    let accountField = UITextField()
    let passwordField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "登录"
        
        buildTextField()
        buildSignButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
}

// UI
extension SignInViewController {
    func buildTextField() {
        self.view.addSubview(accountField)
        accountField.delegate = self
        accountField.backgroundColor = .blue
        accountField.snp_makeConstraints { (make) in
            make.left.equalTo(self.view).offset(kSpace_J4)
            make.right.equalTo(self.view).offset(-kSpace_J4)
            make.top.equalTo(self.view).offset(200)
            make.height.equalTo(kSpace_J1);
        }
        
        self.view.addSubview(passwordField)
        passwordField.delegate = self
        passwordField.backgroundColor = .blue
        passwordField.snp_makeConstraints { (make) in
            make.left.right.height.equalTo(accountField)
            make.top.equalTo(accountField.snp_bottom).offset(kSpace_J3);
        }
    }
    
    func buildSignButton() -> Void {
        let buttonSignIn : UIButton = UIButton(type: .custom)
        self.view.addSubview(buttonSignIn)
        buttonSignIn.setTitle("登陆", for: .normal)
        buttonSignIn.backgroundColor = .green
        buttonSignIn.addTarget(self, action: #selector(buttonSignInClicked), for: .touchUpInside)
        buttonSignIn.snp_makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.bottom.equalTo(self.view).offset(-kSpace_J3)
            make.size.equalTo(CGSize.init(width: 200, height: 50))
        }
    }
}

// Action
extension SignInViewController {
    @objc func buttonSignInClicked() {
        print("点击登录")
        
        guard accountField.text?.isEmpty == false else {
            print("account is 0")
            return
        }
        
        guard passwordField.text?.isEmpty == false else {
            print("password is nil")
            return
        }
        
        let str = accountField.text
        
        if let string = str {
            print(string)
        }
        
        guard (str != nil) else {
            print("xxx")
            return
        }
        
        let tabBarVc = MainTabBarController()
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = tabBarVc
    }
}

// UITextFieldDelegate
extension SignInViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
