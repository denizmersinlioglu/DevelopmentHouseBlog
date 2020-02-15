//
//  File.swift
//  
//
//  Created by Deniz Mersinlioğlu on 2/16/20.
//

import Foundation
import Publish

extension PublishingStep where Site == DevelopmentHouse {
    static func addDefaultSectionTitles() -> Self {
        .step(named: "Default section titles") { context in
            context.mutateAllSections { section in
                guard section.title.isEmpty else { return }
                switch section.id {
                case .posts:
                    section.title = "Blog Posts"
                case .about:
                    section.title = "About"
                }
            }
        }
    }
}
