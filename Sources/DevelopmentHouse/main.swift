import Foundation

try DevelopmentHouse().publish(
    withTheme: .blog,
    additionalSteps: [.deploy(using: .gitHub("denizmersinlioglu/denizmersinlioglu.github.io", useSSH: false))],
    plugins: [.splash(withClassPrefix: "")]
)
