//
//  SignUpViewController.swift
//  MetroLinxDemo
//
//  Created by sriharsha.machani on 22/01/24.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var email_pnTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    @IBOutlet weak var conPassTF: UITextField!
    @IBOutlet weak var fullNameTF: UITextField!
    @IBOutlet weak var compTF: UITextField!
    
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var appleBtn: UIButton!
    @IBOutlet weak var facebookBtn: UIButton!
    @IBOutlet weak var googleBtn: UIButton!
    @IBOutlet weak var extraBtn: UIButton!
    
    @IBOutlet weak var signupLbl: UILabel!
    @IBOutlet weak var orLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        
        email_pnTF.delegate = self
        passTF.delegate = self
        fullNameTF.delegate = self
        compTF.delegate = self
        conPassTF.delegate = self
    }
    @IBAction func hide_showPassAction(_ sender: Any) {
        
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
        
        self.compTF.layer.borderWidth = 1
        self.compTF.layer.borderColor = UIColor(named: "borderColor")?.cgColor
        self.compTF.layer.cornerRadius = 12
        self.compTF.backgroundColor = .clear
        
        self.fullNameTF.layer.borderWidth = 1
        self.fullNameTF.layer.borderColor = UIColor(named: "borderColor")?.cgColor
        self.fullNameTF.layer.cornerRadius = 12
        self.fullNameTF.backgroundColor = .clear
        
        self.conPassTF.layer.borderWidth = 1
        self.conPassTF.layer.borderColor = UIColor(named: "borderColor")?.cgColor
        self.conPassTF.layer.cornerRadius = 12
        self.conPassTF.backgroundColor = .clear
        
        self.createBtn.layer.cornerRadius = 12

        
        self.orLbl.font = UIFont.poppinsBold(size: 16)
        signupLbl.font = .poppinsRegular(size: 16)
        
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
        
        let con_passleftVeiwView = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 40))
        conPassTF.leftView = con_passleftVeiwView
        conPassTF.leftViewMode = .always
        let con_passiconImage = UIImageView(frame: CGRect(x: 15, y: 5, width: 27, height: 27))
        con_passiconImage.image = UIImage(named: "passLogo")
        con_passleftVeiwView.addSubview(con_passiconImage)
        
        
        let fullnameVeiwView = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 40))
        fullNameTF.leftView = fullnameVeiwView
        fullNameTF.leftViewMode = .always
        let fullnameiconImage = UIImageView(frame: CGRect(x: 15, y: 5, width: 27, height: 27))
        fullnameiconImage.image = UIImage(named: "familyLogo")
        fullnameVeiwView.addSubview(fullnameiconImage)
        
        let companyleftVeiwView = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 40))
        compTF.leftView = companyleftVeiwView
        compTF.leftViewMode = .always
        let companyiconImage = UIImageView(frame: CGRect(x: 15, y: 5, width: 27, height: 27))
        companyiconImage.image = UIImage(named: "familyLogo")
        companyleftVeiwView.addSubview(companyiconImage)
       
    }
    

}
extension SignUpViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == email_pnTF {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = HexColor("#8BB8E8").cgColor
        } else if textField == passTF {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = HexColor("#8BB8E8").cgColor
        } else if textField == fullNameTF {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = HexColor("#8BB8E8").cgColor
        } else if textField == compTF {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = HexColor("#8BB8E8").cgColor
        } else if textField == conPassTF {
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
