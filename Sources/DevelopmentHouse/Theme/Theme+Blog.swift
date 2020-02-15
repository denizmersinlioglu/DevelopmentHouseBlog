//
//  Theme+Blog.swift
//  
//
//  Created by Deniz Mersinlioğlu on 2/16/20.
//

import Publish
import Plot

extension Theme where Site == DevelopmentHouse {
    static var blog: Self {
        Theme(htmlFactory: BlogHTMLFactory())
    }
}
