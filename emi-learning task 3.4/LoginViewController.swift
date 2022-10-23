//
//  LoginViewController.swift
//  emi-learning task 3.4
//
//  Created by jeovane.barbosa on 23/10/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        let title = "Logando"
        let message = "Fazendo login na sua conta.."
        showAlert(withTitle: title, andMessage: message)
        
    }
    
    
    @IBAction func passwordRecoveryButtonPressed(_ sender: UIButton) {
        let title = "Redefinir senha"
        let message = "Enviamos um email para \(emailTextField.text!). Siga as instruções para criar uma nova senha segura."
        
        showAlert(withTitle: title, andMessage: message)
    }
    
    func showAlert(withTitle title: String, andMessage message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
