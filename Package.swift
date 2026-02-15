// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MotionAnimator",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "MotionAnimator",
            targets: ["MotionAnimator"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/graphicalGami/motion-interchange-objc.git", revision: "de615d22fbc5d00b468f33adfcd20b4737b90dae"),
    ],
    targets: [
        .target(
            name: "MotionAnimator",
            dependencies: [
                .product(name: "MotionInterchange", package: "motion-interchange-objc")
            ],
            path: "src",
            publicHeadersPath: "."
        ),
    ]
)
