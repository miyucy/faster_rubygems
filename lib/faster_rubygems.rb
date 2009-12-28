if RUBY_VERSION < '1.9'
  require File.dirname(__FILE__) + '/faster_rubygems_lib.rb'
  all = FasterRubyGems.gem_prelude_paths
  all.each{|path|
    $: << path
  }
else
 # not needed in 1.9, which by default loads gem_prelude
end
