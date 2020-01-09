Pod::Spec.new do |spec|
  spec.name = "SKit"
  spec.swift_versions = ["4.2"]
  spec.version = "0.9.1"
  spec.summary = "SKit - Sam's iOS Mobile App Development Kit"
  spec.homepage = "https://github.com/sh3244/SKit"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Samuel Huang" => 'sh3244@nyu.edu' }
  spec.social_media_url = "https://github.com/sh3244"

  spec.platform = :ios, "11.0"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/sh3244/SKit.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "SKit/**/*.{h,swift}"

  spec.dependency "SteviaLayout", "~> 4.7.2"
end