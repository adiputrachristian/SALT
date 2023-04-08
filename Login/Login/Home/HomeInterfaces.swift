//
//  HomeInterfaces.swift
//  Login
//
//  Created by Christian Adiputra on 08/04/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import DesignKit
import NetworkKit

protocol HomeWireframeInterface: WireframeInterface {
}

protocol HomeViewInterface: ViewInterface {
    func updateView()
}

protocol HomePresenterInterface: PresenterInterface {
    var users: [UserModel]? {
        get
    }
    func getListUserInfo()
}

protocol HomeInteractorInterface: InteractorInterface {
    func getListUserInfo()
}

protocol HomeInteractorOutputInterface: InteractorOutputInterface {
    func successGetListUser(users: [UserModel])
}
