//
//  LoginWireframe.swift
//  Login
//
//  Created by Christian Adiputra on 08/04/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import DesignKit

final class LoginWireframe: BaseWireframe<LoginViewController> {

    // MARK: - Private properties -

    // MARK: - Module setup -

    init() {
        let moduleViewController = LoginViewController()
        super.init(viewController: moduleViewController)

        let interactor = LoginInteractor()
        let presenter = LoginPresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        interactor.presenter = presenter
        moduleViewController.presenter = presenter
        
    }

}

// MARK: - Extensions -

extension LoginWireframe: LoginWireframeInterface {
    
    func goToHome() {
        navigationController?.pushWireframe(HomeWireframe())
    }
}
