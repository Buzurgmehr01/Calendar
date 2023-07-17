//
//  ViewController.swift
//  Calendar
//
//  Created by Majidov Buzurgmehr on 17/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    let mainScreeneeView = MainScreenView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        mainScreeneeView.dateViewCompletion = openVC
    }
    
    func openVC(){
        let vc = CalendarVC()
        navigationController?.present(vc, animated: true)
    }

    func configure(){
        view.backgroundColor = .white
        view.addSubview(mainScreeneeView)
        
        mainScreeneeView.snp.makeConstraints {
            $0.top.left.right.equalToSuperview()
            $0.width.equalTo(view)
            $0.height.equalTo(300)
        }
    }
}

