//
//  Node+Posts.swift
//  
//
//  Created by Deniz Mersinlioğlu on 2/16/20.
//

import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func posts(for items: [Item<DevelopmentHouse>], on site: DevelopmentHouse, title: String) -> Node {
        return .pageContent(
            .div(
                .class("posts"),
                .h1(.class("content-subhead"), .text(title)),
                .forEach(items) { item in
                    .postExcerpt(for: item, on: site)
                }
            )
        )
    }
}
