//
//  CalendarView.swift
//  Calendar
//
//  Created by Majidov Buzurgmehr on 17/07/23.
//

import UIKit
import SnapKit

class CalendarView: UIView {
    
    let titleLabel = UILabel()
    let resetButton = UIButton()
    var weekStackView = UIStackView()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        
        self.backgroundColor = .blue
        self.addSubview(titleLabel)
        self.addSubview(resetButton)
        self.addSubview(weekStackView)
        
        
        
        titleLabel.text = "Когда"
        titleLabel.textAlignment = .center
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(15)
            $0.left.right.equalToSuperview().inset(26)
        }
        
        resetButton.setTitle("Сбросить", for: .normal)
        resetButton.setTitleColor(.systemBlue, for: .normal)
        resetButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.right.equalToSuperview().inset(26)
        }
        
        weekStackView.axis = .horizontal
        weekStackView.spacing = 6
        weekStackView.distribution = .fillProportionally
        weekStackView.layoutMargins = UIEdgeInsets(top: 0, left: 26, bottom: 0, right: 26)
        weekStackView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(10)
            $0.left.right.equalToSuperview().offset(26)
        }
    }
}


class WeekView: UIView{
    
    let weekLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(weekLabel)
        
        weekLabel.font = UIFont(name: "Avenir-Light", size: 10)
        
        weekLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(5)
            $0.left.equalToSuperview().inset(10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
