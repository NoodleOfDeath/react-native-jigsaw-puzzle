Pod::Spec.new do |s|
  s.name         = "ReactNativeJigsawPuzzle"
  s.version      = "0.0.1-prelease"
  s.summary      = "React Native library for makingg jigsaw puzzles"

  s.homepage     = "https://github.com/noodleofdeath/react-native-jigsaw-puzzle"

  s.license      = "MIT"
  s.authors      = "Thom Morgan"
  s.platform     = :ios, "16.0"

  s.source       = { :git => "https://github.com/noodleofdeath/react-native-jigsaw-puzzle.git" }

  s.source_files  = "ios/ReactNativeJigsawPuzzle/*.{h,m,swift}"

  s.dependency 'React-Core'
end
