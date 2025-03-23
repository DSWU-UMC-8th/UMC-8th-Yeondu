import ProjectDescription

let project = Project(
    name: "starbucks",
    targets: [
        .target(
            name: "starbucks",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.starbucks",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["starbucks/Sources/**"],
            resources: ["starbucks/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "starbucksTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.starbucksTests",
            infoPlist: .default,
            sources: ["starbucks/Tests/**"],
            resources: [],
            dependencies: [.target(name: "starbucks")]
        ),
    ]
)
