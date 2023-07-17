//
//  CalendarVC.swift
//  Calendar
//
//  Created by Majidov Buzurgmehr on 17/07/23.
//

import UIKit
import SnapKit

class CalendarVC: UIViewController {

    let viewCalendar = CalendarView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        configureCalendar()

    }
    
    func configureCalendar(){
        view.backgroundColor = .systemGray6
        view.addSubview(viewCalendar)
        
        
        let calendarView = UICalendarView()
        let calendar = Calendar.current
        let currentDate = Date()
        let startDate = calendar.date(byAdding: .month, value: -12, to: currentDate) ?? calendar.startOfDay(for: .distantPast)
        
        calendarView.calendar = .current
        calendarView.locale = .current
        calendarView.availableDateRange = DateInterval(start: startDate, end: currentDate)
        calendarView.layer.cornerRadius = 15
        calendarView.backgroundColor = .white
        calendarView.fontDesign = .rounded
        
        view.addSubview(calendarView)
        calendarView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.left.right.equalToSuperview().inset(24)
        }
        
        viewCalendar.snp.makeConstraints {
            $0.top.left.right.equalToSuperview()
        }
    }
}
