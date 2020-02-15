//
//  Node+Page.swift
//  
//
//  Created by Deniz Mersinlioğlu on 2/16/20.
//

import Foundation
import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func page(for page: Page, on site: DevelopmentHouse) -> Node {
        return .pageContent(
            .h2(
                .class("post-title"),
                .text(page.title)
            ),
            .div(
                .class("post-description"),
                .div(
                    .contentBody(page.body)
                )
            )
        )
    }
}

