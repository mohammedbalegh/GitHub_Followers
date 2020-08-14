//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by mohammed balegh on 8/13/20.
//  Copyright © 2020 mohammed balegh. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
    
}
