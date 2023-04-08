//
//  HomeInteractor.swift
//  Login
//
//  Created by Christian Adiputra on 08/04/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import NetworkKit

final class HomeInteractor {
    weak var presenter: HomeInteractorOutputInterface?
    let authService: AuthService = AuthService()
}

// MARK: - Extensions -

extension HomeInteractor: HomeInteractorInterface {
    
    func getListUserInfo() {
        authService.getListUser { [weak self] response in
            guard let data = response.data else { return }
            print(response.data)
            self?.presenter?.successGetListUser(users: data)
        } onFailure: { [weak self] error in
            print(error.localizedDescription)
        }

    }
    
}
