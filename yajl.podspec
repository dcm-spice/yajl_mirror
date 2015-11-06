Pod::Spec.new do |s|
  s.name         = "yajl"
  s.version      = "2.1.0"
  s.summary      = "Yet Another JSON Library - A Portable JSON parsing and serialization library in ANSI C."
  s.homepage     = "http://lloyd.github.com/yajl/"
  s.license      = "ISC"
  s.author       = {
    "Lloyd Hilaiel": "lloyd@hilaiel.com"
  }
  s.source       = {
    :git => "https://github.com/dcm-spice/yajl.git",
    :tag => s.version,
    :submodules => true
  }
  s.source_files  = "yajl/src/*.c",
                    "yajl/src/*.h",
                    "yajl/src/api/*.h",
                    "yajl/build/yajl-#{s.version}/include/yajl/yajl_version.h"
  s.preserve_paths = "**/*"
  s.prepare_command = "cd yajl && ./configure"
  s.xcconfig = {
    "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/yajl/yajl"
  }
end
