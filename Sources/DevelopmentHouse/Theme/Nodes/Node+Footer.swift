//
//  Node+Footer.swift
//  
//
//  Created by Deniz Mersinlioğlu on 2/16/20.
//

import Plot

extension Node where Context == HTML.BodyContext {
    static func footer(for site: DevelopmentHouse) -> Node {
        return .div(
            .class("footer pure-u-1"),
            .div(
                .class("pure-u-1"),
                .text("© 2020 \(site.name)")
            ),
            .div(
                .class("pure-u-1"),
                .text("Generated using "),
                .a(
                    .text("Publish"),
                    .href("https://github.com/johnsundell/publish")
                ),
                .text(". Written in Swift")
            ),
            .div(
                .class("pure-u-1"),
                .a(
                    .text("RSS feed"),
                    .href("/feed.rss")
                )
            )
        )
    }
}
