//
//  LoginViewController.swift
//  MetroLinxDemo
//
//  Created by sriharsha.machani on 22/01/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var email_pnTF: UITextField!
    @IBOutlet weak var forgotBtn: UIButton!
    @IBOutlet weak var logInBtn: UIButton!
    @IBOutlet weak var passTF: UITextField!
    
    @IBOutlet weak var createAccBtn: UIButton!
    @IBOutlet weak var registrationLbl: UILabel!
    @IBOutlet weak var orLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        // Do any additional setup after loading the view.
    }
    
    func setUpUI(){
        self.email_pnTF.layer.borderWidth = 1
        self.email_pnTF.layer.borderColor = UIColor(named: "borderColor")?.cgColor
        self.email_pnTF.layer.cornerRadius = 12
        self.email_pnTF.backgroundColor = .clear
        
        self.passTF.layer.borderWidth = 1
        self.passTF.layer.borderColor = UIColor(named: "borderColor")?.cgColor
        self.passTF.layer.cornerRadius = 12
        self.passTF.backgroundColor = .clear
        
        self.logInBtn.layer.cornerRadius = 12

        
        self.orLbl.font = UIFont.poppinsBold(size: 16)
        self.registrationLbl.font = UIFont(name: "Don’t have an account ? Registration is easy.", size: 16)
        
        let leftVeiwView = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 40))
        email_pnTF.leftView = leftVeiwView
        email_pnTF.leftViewMode = .always
        let iconImage = UIImageView(frame: CGRect(x: 10, y: 5, width: 27, height: 27))
        iconImage.image = UIImage(named: "emailLogo")
        leftVeiwView.addSubview(iconImage)
        
       
        let passleftVeiwView = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 40))
        passTF.leftView = passleftVeiwView
        passTF.leftViewMode = .always
        let passiconImage = UIImageView(frame: CGRect(x: 10, y: 5, width: 27, height: 27))
        passiconImage.image = UIImage(named: "passLogo")
        passleftVeiwView.addSubview(passiconImage)
       
    }
    

}
