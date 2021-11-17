//
//  ViewController.swift
//  LoginWithMVVM
//
//  Created by macmini17 on 11/11/21.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet  private weak var txtEmail: UITextField!
    @IBOutlet  private weak var txtPassword: UITextField!
    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func btnLogin(_ sender: Any) {
        if let email = txtEmail.text, let password = txtPassword.text {
            viewModel.authnicateUser(userEmail: email, userPassword: password)
            
        }
    }
}
extension LoginViewController:LoginViewModelProtocol {
    func authnicateUser(authicate: Bool) {
        if authicate {
            let homeVM = HomeViewModel(name: "vishal")
            
             var homeVC =  self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            homeVC.viewModel = homeVM
            self.navigationController?.pushViewController(homeVC, animated: true )
        } else {
            let alertController = UIAlertController(title: "Invaid email and password", message: "Message", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
            }
            alertController.addAction(OKAction)
            present(alertController, animated: true)
        }
    }
    
}

