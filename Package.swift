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
            url: "https://sdk-download-proxy-988869092634.me-central2.run.app/ios/RasedCore/1.8.4/Rased.xcframework.zip",
            checksum: "e58784129cbcc4b7d7e578393bf341a21152d39892ffde2fdd75cbbcf83d1570"
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
