//
//  Node+Grid.swift
//  
//
//  Created by Deniz Mersinlioğlu on 2/16/20.
//

import Plot

extension Node where Context == HTML.BodyContext {
    static func grid(_ nodes: Node...) -> Node {
        .div(
            .id("layout"),
            .class("pure-g"),
            .group(nodes)
        )
    }
}
