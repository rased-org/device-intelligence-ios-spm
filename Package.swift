// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Rased",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Rased",
            targets: ["Rased"]
        )
    ],
    targets: [
        // Binary target for XCFramework distribution
        // Update URL and checksum for each release
        .binaryTarget(
            name: "Rased",
            url: "https://github.com/rased-org/device-intelligence-ios-spm/releases/download/v1.1.2/RasedSDK.xcframework.zip",
            checksum: "bbab25909536de56a8079136145d5ea97d86d784c1608bde8286c21e07e3f970"
        )
    ]
)

// RELEASE INSTRUCTIONS:
// 1. Build XCFramework: ./scripts/build-xcframework.sh <version>
// 2. Test locally: ./scripts/test-xcframework.sh
// 3. Create GitHub release: gh release create v<version> release/Rased.xcframework.zip
// 4. Update URL above with actual release URL
// 5. Update checksum above with value from release/checksum.txt
// 6. Commit and push Package.swift
