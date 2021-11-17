//
//  LoginUser.swift
//  LoginWithMVVM
//
//  Created by macmini17 on 11/11/21.
//

import Foundation
import UIKit

protocol LoginViewModelProtocol: class {
    func authnicateUser(authicate: Bool)
}

class LoginViewModel {
    weak var delegate:LoginViewModelProtocol?
    func authnicateUser(userEmail: String, userPassword: String) {
         if (userEmail == "vishal@gmail.com" || userPassword == "1234")
        {
             delegate?.authnicateUser(authicate: true)
         } else {
             delegate?.authnicateUser(authicate: false)
         }
    }
}


