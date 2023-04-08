//
//  HomePresenter.swift
//  Login
//
//  Created by Christian Adiputra on 08/04/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import NetworkKit
import DesignKit

final class HomePresenter {

    // MARK: - Private properties -

    private unowned let view: HomeViewInterface
    private let interactor: HomeInteractorInterface
    private let wireframe: HomeWireframeInterface
    var users: [UserModel]?

    // MARK: - Lifecycle -

    init(
        view: HomeViewInterface,
        interactor: HomeInteractorInterface,
        wireframe: HomeWireframeInterface
    ) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension HomePresenter: HomePresenterInterface {
    
    func getListUserInfo() {
        interactor.getListUserInfo()
    }
    
}

extension HomePresenter: HomeInteractorOutputInterface {
    
    func successGetListUser(users: [UserModel]) {
        self.users = users
        view.updateView()
    }
    
    
    
}