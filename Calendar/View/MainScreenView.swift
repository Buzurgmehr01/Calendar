//
//  MainScreenView.swift
//  Calendar
//
//  Created by Majidov Buzurgmehr on 17/07/23.
//

import UIKit
import SnapKit

class MainScreenView: UIView {

    let titleLabel = UILabel()
    let dateView = UIView()
    let dateImageView = UIImageView()
    let dateLabel = UILabel()

    var dateViewCompletion: () -> Void = {}
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configuration()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configuration(){
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(openCalendarVC))
        
        self.backgroundColor = .systemBlue
        self.addSubview(titleLabel)
        self.addSubview(dateView)
        dateView.addSubview(dateImageView)
        dateView.addSubview(dateLabel)
        dateView.addGestureRecognizer(tapGesture)
        
        titleLabel.text = "Поиск дешёвых авиабилетов"
        titleLabel.textColor = .white
        titleLabel.numberOfLines = 2
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.left.right.equalToSuperview().inset(24)
        }
        
        dateView.backgroundColor = .white
        dateView.layer.cornerRadius = 10
        
        dateView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(50)
            $0.left.equalToSuperview().offset(30)
            $0.width.equalTo(80)
            $0.height.equalTo(40)
        }
        
        dateImageView.image = UIImage(named: "calendar")
        dateImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.left.equalToSuperview().offset(5)
            $0.width.height.equalTo(20)
        }
             
        dateLabel.text = "Даты"
        dateLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.left.equalTo(dateImageView.snp.right).offset(5)
        }
    }
    
    @objc func openCalendarVC(){
        self.dateViewCompletion()
    }
}



