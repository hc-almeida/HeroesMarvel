//
//  CharacterCell.swift
//  HeroesMavel
//
//  Created by Hellen on 19/10/21.
//

import UIKit
import SnapKit

class CharacterCell: UITableViewCell {
        
    // MARK: - User Interface Components
    
    private lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .blueDark
        return view
    }()
    
    private lazy var characterImage: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 6
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.customRed.cgColor
        return imageView
    }()
    
    private lazy var name: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 18)
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    // MARK: - Public Properties
    
    static let identifier = String(describing: CharacterCell.self)
    
    // MARK: - Inits
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Functions

    func setup(name2: String, image2: UIImage) {
        name.text = name2
        characterImage.image = image2
    }
}

// MARK: - ViewCodeProtocol Extension

extension CharacterCell: ViewCodeProtocol {

    func setupSubviews() {
        addSubview(cardView)
        cardView.addSubview(characterImage)
        addSubview(name)
    }
    
    func setupConstraints() {

        cardView.snp.makeConstraints { make in
            make.height.equalTo(180)
            make.width.equalTo(120)
            make.top.left.equalToSuperview().offset(16)
            make.bottom.equalToSuperview().inset(16)
        }
        
        characterImage.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }

        name.snp.makeConstraints { make in
            make.left.equalTo(cardView.snp.right).offset(16)
            make.top.equalToSuperview().inset(24)
        }
    }
    
    func setupComponents() {
        backgroundColor = .blueDark
        selectionStyle = .none
    }
}
