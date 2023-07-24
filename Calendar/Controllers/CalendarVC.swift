//
//  CalendarVC.swift
//  Calendar
//
//  Created by Majidov Buzurgmehr on 17/07/23.
//

import UIKit
import SnapKit

class CalendarVC: UIViewController {
    
    let weekArray = ["ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ", "ВС"]
    
    let viewCalendar = CalendarView()
    let calendarView = UICalendarView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCalendar()
        configureWeekStackView()
    }

    func configureWeekStackView(){
        
        for i in weekArray{
            let req = WeekView()
            req.weekLabel.text = i
            if (i == "СБ") || (i == "ВС") {
                req.weekLabel.textColor = .red
            }
            req.snp.makeConstraints { make in
                make.width.equalTo(40)
                make.height.equalTo(20)
            }
            viewCalendar.weekStackView.addArrangedSubview(req)
        }
    }
    
    func configureCalendar(){
        view.backgroundColor = .systemGray6
        view.addSubview(viewCalendar)
 
        let calendar = Calendar.current
        let currentDate = Date()
        let startDate = calendar.date(byAdding: .month, value: -12, to: currentDate) ?? calendar.startOfDay(for: .distantPast)
        
        calendarView.calendar = .current
        calendarView.locale = .current
        calendarView.availableDateRange = DateInterval(start: startDate, end: currentDate)
        calendarView.layer.cornerRadius = 15
        calendarView.backgroundColor = .white
        calendarView.fontDesign = .rounded
        calendarView.delegate = self
        
        let dateSelection = UICalendarSelectionMultiDate(delegate: self)
        calendarView.selectionBehavior = dateSelection
        
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


extension CalendarVC: UICalendarViewDelegate, UICalendarSelectionMultiDateDelegate{
    
    func multiDateSelection(_ selection: UICalendarSelectionMultiDate, didSelectDate dateComponents: DateComponents) {
       
    }

    func multiDateSelection(_ selection: UICalendarSelectionMultiDate, didDeselectDate dateComponents: DateComponents) {
     
    }
}
