//
//  CalendarView.swift
//  Calendar
//
//  Created by Majidov Buzurgmehr on 17/07/23.
//

import UIKit

class CalendarView: UIView {
    
    let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        
        self.backgroundColor = .systemGray6
        self.addSubview(titleLabel)
        
        
        titleLabel.text = "Когда"
        titleLabel.textAlignment = .center
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.left.right.equalToSuperview().inset(26)
        }
    }
}
