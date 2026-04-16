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
            url: "https://sdk-download-proxy-988869092634.me-central2.run.app/ios/RasedCore/1.1.4/Rased.xcframework.zip",
            checksum: "8378e4c35e60cfa47f22247f48896e1dd8fd91c1d421de1aa56f9c04d5bf87ed"
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
