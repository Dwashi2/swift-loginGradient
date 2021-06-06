//
//  ViewController.swift
//  gradient
//
//  Created by Daniel Washington Ignacio on 06/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var signButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.purple.cgColor, UIColor.white.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        userName.layer.cornerRadius = 10
        password.layer.cornerRadius = 10
        signButton.layer.cornerRadius = 10
        continueButton.layer.cornerRadius = 10
        
        userName.layer.isHidden = true
        password.layer.isHidden = true
        continueButton.layer.isHidden = true
        
    }
    @IBAction func continueButton(_ sender: UIButton) {
        userName.layer.isHidden = false
        password.layer.isHidden = false
        continueButton.layer.isHidden = false
        signButton.layer.isHidden = true
        
    }

}

