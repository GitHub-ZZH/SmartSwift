//
//  ViewController.swift
//  smartSwift
//
//  Created by abovelink on 2020/9/17.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buildBackgroundImage()
        buildLogoImage()
        buildSignButton()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
}

// UI
extension ViewController {
    func buildBackgroundImage() -> Void {
        let image: UIImage = UIImage(named: "signin_background")!
        let backgroundImage : UIImageView = UIImageView(image: image)
        self.view.addSubview(backgroundImage)
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.snp_makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }
    
    func buildLogoImage() {
        let logoImage = UIImage(named: "signin_icon")
        let logoView = UIImageView(image: logoImage)
        self.view.addSubview(logoView)
        logoView.snp_makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(self.view).offset(130+kTopSafeArea)
            make.size.equalTo(CGSize(width: 108, height: 105))
        }
    }

    func buildSignButton() -> Void {
        let buttonSignUp : UIButton = UIButton(type: .custom)
        self.view.addSubview(buttonSignUp)
        buttonSignUp.setTitle("注册", for: .normal)
        buttonSignUp.setTitleColor(.white, for: .normal)
        buttonSignUp.backgroundColor = kColor_C1
        buttonSignUp.addTarget(self, action: #selector(buttonSignUpClicked), for: .touchUpInside)
        buttonSignUp.layer.cornerRadius = CGFloat(kSpace_J1)/2.0
        buttonSignUp.snp_makeConstraints { (make) in
            make.left.equalTo(self.view).offset(kSpace_J2)
            make.right.equalTo(self.view).offset(-kSpace_J2)
            make.bottom.equalTo(self.view).offset(-CGFloat(kSpace_J4)-kBottomSafeArea)
            make.height.equalTo(kSpace_J1)
        }
        
        let buttonSignIn : UIButton = UIButton(type: .custom)
        self.view.addSubview(buttonSignIn)
        buttonSignIn.setTitle("登陆", for: .normal)
        buttonSignIn.setTitleColor(kColor_C1, for: .normal)
        buttonSignIn.backgroundColor = .clear
        buttonSignIn.addTarget(self, action: #selector(buttonSignInClicked), for: .touchUpInside)
        buttonSignIn.layer.cornerRadius = CGFloat(kSpace_J1)/2.0
        buttonSignIn.layer.borderWidth = 1
        buttonSignIn.layer.borderColor = kColor_C1.cgColor
        buttonSignIn.snp_makeConstraints { (make) in
            make.left.right.height.equalTo(buttonSignUp)
            make.bottom.equalTo(buttonSignUp.snp_top).offset(-kSpace_J5)
        }
        print(buttonSignUp.title(for: .normal)!, buttonSignIn.title(for: .normal)!)
        print(buttonSignUp.title(for: .normal)!, buttonSignIn.title(for: .normal)!, separator:" ---- ")
        print(buttonSignUp.title(for: .normal)!, buttonSignIn.title(for: .normal)!, separator:" +++ ", terminator:"xxx")
        
    }
}

// Action
extension ViewController {
    @objc func buttonSignInClicked() {
        print("点击登录")
        let signInVc = SignInViewController()
        self.navigationController?.pushViewController(signInVc, animated: true)
    }
    
    @objc func buttonSignUpClicked() {
        print("点击注册")
//        let signUpVc = SignUpViewController()
//        self.navigationController?.pushViewController(signUpVc, animated: true)
        
        var string: String? = nil
        string = "hello, world"
        let newStr = string?.uppercased()
        print(newStr?.uppercased())
        
        
        let arr = [1,2,3,4,5,6,7]
        let arr1: [Int] = []
        let arr11: Array<Int> = []
        let arr2 = [Int]()
        let arr3 = Array<Int>()
        
        
        for num in arr {
            print(num)
        }
        
        for (index, num) in arr.enumerated() {
            print(index)
            print(num)
        }
        arr.contains(1)
        
        
    }
}
