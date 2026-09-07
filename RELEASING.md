# Releasing

1. Update `inttegroSDKVersion` and `CHANGELOG.md`, then merge the release commit.
2. Create a `release` GitHub environment with no required reviewers.
3. Push a `v<version>` tag that points at the release commit.

The workflow tests the package, attests an exact source archive, records checksums
and provenance, and publishes an immutable GitHub release. Swift Package Manager
consumes the repository and semantic-version tag directly. Publishing the GitHub
release also publishes versioned DocC documentation to the `gh-pages` branch.
