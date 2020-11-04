//
//  ViewController.swift
//  smartSwift
//
//  Created by abovelink on 2020/9/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let image : UIImage = UIImage(named: "startuppage_background1")!
        
        let backgroundImage : UIImageView = UIImageView(image: image)
        self.view.addSubview(backgroundImage)
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        
        let buttonSignUp : UIButton = UIButton(type: .custom)
        self.view.addSubview(buttonSignUp)
        buttonSignUp.setTitle("注册", for: .normal)
        buttonSignUp.frame = CGRect.init(x: 100, y: 500, width: 100, height: 50)
        
        let buttonSignIn : UIButton = UIButton(type: .custom)
        self.view.addSubview(buttonSignIn)
        buttonSignIn.setTitle("登陆", for: .normal)
        buttonSignIn.frame = CGRect.init(x: 300, y: 500, width: 100, height: 50)
        
    }


}

