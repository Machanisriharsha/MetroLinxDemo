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
        email_pnTF.delegate = self
        passTF.delegate = self
    }
    @IBAction func gotoCreateAccount(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: false, completion: nil)
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
        let iconImage = UIImageView(frame: CGRect(x: 15, y: 5, width: 27, height: 27))
        iconImage.image = UIImage(named: "emailLogo")
        leftVeiwView.addSubview(iconImage)
        
        
        let passleftVeiwView = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 40))
        passTF.leftView = passleftVeiwView
        passTF.leftViewMode = .always
        let passiconImage = UIImageView(frame: CGRect(x: 15, y: 5, width: 27, height: 27))
        passiconImage.image = UIImage(named: "passLogo")
        passleftVeiwView.addSubview(passiconImage)
        
        forgotBtn.titleLabel?.font = .poppinsBold(size: 14)
        logInBtn.titleLabel?.font = .poppinsBold(size: 16)
        
        registrationLbl.font = .poppinsRegular(size: 16)
        registrationLbl.textColor = HexColor("#9B9B9B")
        
        
    }
    
    
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == email_pnTF {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = HexColor("#8BB8E8").cgColor
        } else if textField == passTF {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = HexColor("#8BB8E8").cgColor
        }
        else {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = HexColor("#E3E3E3").cgColor
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = HexColor("#E3E3E3").cgColor
    }
}
