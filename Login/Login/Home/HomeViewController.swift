//
//  HomeViewController.swift
//  Login
//
//  Created by Christian Adiputra on 08/04/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class HomeViewController: UIViewController {
    
    var tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()

    // MARK: - Public properties -

    var presenter: HomePresenterInterface!

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        presenter.getListUserInfo()
        view.backgroundColor = .red
    }
    
    private func setupView() {
        view.addSubview(tableView)
        
        tableView.register(ListUserCell.self, forCellReuseIdentifier: "ListUserCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        tableView.snp.makeConstraints { make in
            make.right.top.bottom.left.equalToSuperview()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = true
    }


}

// MARK: - Extensions -

extension HomeViewController: HomeViewInterface {
    
    func updateView() {
        tableView.reloadData()
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.users?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListUserCell", for: indexPath) as? ListUserCell else { return UITableViewCell() }
        guard let user = presenter.users?[indexPath.row] else { return UITableViewCell()}

        cell.updateView(user: user)
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
}
