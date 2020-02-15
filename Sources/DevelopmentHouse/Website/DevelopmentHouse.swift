//
//  DevelopmentHouse.swift
//  
//
//  Created by Deniz Mersinlioğlu on 2/16/20.
//

import Foundation
import Publish
import Plot
import SplashPublishPlugin

// This type acts as the configuration for your website.
struct DevelopmentHouse: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case about
        case posts
    }
    
    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
        var excerpt: String
    }
    
    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Deniz Mersinlioglu"
    var title = "Posts"
    var description = "iOS Developer"
    var language: Language { .english }
    var imagePath: Path? { nil }
    var socialMediaLinks: [SocialMediaLink] { [.location, .email, .linkedIn, .github] }
}
