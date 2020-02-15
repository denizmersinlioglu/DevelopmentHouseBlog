//
//  BlogDateFormatter.swift
//  
//
//  Created by Deniz Mersinlioğlu on 2/16/20.
//

import Foundation

extension DateFormatter {
    static var blog: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
}
