//
//  NowDate.swift
//  TimeDDaeng
//
//  Created by 박지은 on 21/05/2020.
//  Copyright © 2020 박지은. All rights reserved.
//

import Foundation

var date = Date()
var cal = Calendar.current
var day=["일","월","화","수","목","금","토"]
var currentYear=cal.component(.year, from: date)
var currentMonth=cal.component(.month, from: date)
var currentDay=cal.component(.day, from: date)

//일요일1-토요일7
var currentWeekday=cal.component(.weekday, from: date)

func weekDay(_ cur:Int) -> String{
    return day[cur-1]
}
