//
//  LoginFeatureProvider.swift
//  Login
//
//  Created by Christian Adiputra on 08/04/23.
//

import Foundation
import UIKit
import Provider
import NetworkKit

public class LoginFeatureProvider: LoginInterface {
    
    public init() {}
    
    public func createLoginScreenVC() -> UIViewController {
        return LoginWireframe().viewController
    }

}
