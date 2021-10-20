cask "gitdock" do
  version "0.1.9"
  sha256 "f9fecb7d026d1acaea71bf62439bda604d30688383993f34dd343283d44a4d52"

  url "https://gitlab.com/api/v4/projects/28462485/packages/generic/gitdock/#{version}/GitDock.dmg"
  name "GitDock"
  desc "Displays all your GitLab activities in one place"
  homepage "https://gitlab.com/mvanremmerden/gitdock"

  livecheck do
    url "https://gitlab.com/mvanremmerden/gitdock.git"
  end

  app "GitDock.app"

  zap trash: [
    "~/Library/Application Support/GitDock",
    "~/Library/Preferences/com.electron.gitdock.plist",
    "~/Library/Saved Application State/com.electron.gitdock.savedState",
  ]
end
