VERSION="$1"
PREFIXED_VERSION="v$1"
NOTES="$2"

# Update version number
#

# Update constant in codebase
sed -i '' 's/NSString \*const kLibVersion = @".*/NSString *const kLibVersion = @"'"$VERSION"'";/' mParticle-CleverTap/MPKitCleverTap.m

# Update CocoaPods podspec file
sed -i '' 's/\(^    s.version[^=]*= \).*/\1"'"$VERSION"'"/' mParticle-CleverTap.podspec

# Make the release commit in git
#

git add mParticle-CleverTap.podspec
git add mParticle-CleverTap/MPKitCleverTap.m
git commit -m "chore(release): $VERSION [skip ci]

$NOTES"
