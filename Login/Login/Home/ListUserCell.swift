//
//  ListUserCell.swift
//  Login
//
//  Created by Christian Adiputra on 08/04/23.
//

import UIKit
import DesignKit
import NetworkKit

class ListUserCell: UITableViewCell {
    
    var avatar: UIImageView = {
        let image = UIImageView()
        image.image = ImageProvider.image(named: "bulbasaur")
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.text = "bulbasur"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(avatar)
        addSubview(nameLabel)
        
        avatar.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.height.width.equalTo(50)
            make.centerY.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(avatar.snp.right).offset(8)
            make.centerY.equalToSuperview()
        }
    }
    
    func updateView(user: UserModel) {
        guard let fname = user.firstName, let lname = user.lastName, let avatar = user.avatar else { return }
        nameLabel.text = "\(fname) \(lname)"
        self.avatar.kf.setImage(with: URL(string: avatar))
    }
}

