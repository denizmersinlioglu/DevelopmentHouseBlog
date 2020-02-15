//
//  Node+PostExcerpt.swift
//  
//
//  Created by Deniz Mersinlioğlu on 2/16/20.
//

import Foundation
import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func postExcerpt(for item: Item<DevelopmentHouse>, on site: DevelopmentHouse) -> Node {
        return .section(
            .class("post"),
            .header(
                .class("post-header"),
                .h2(
                    .class("post-title"),
                    .a(
                        .href(item.path),
                        .text(item.title)
                    )
                ),
                .p(
                    .class("post-meta"),
                    .text(DateFormatter.blog.string(from: item.date)),
                    tagList(for: item, on: site)
                )
            ),
            .div(
                .class("post-description"),
                .p(.text(item.metadata.excerpt))
            )
        )
    }
}
