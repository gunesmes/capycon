require "capy_con/version"

module CapyCon
  # Your code goes here...
  if File.file?("features/support/env.rb")
  	load "features/support/env.rb"
  else
  	load "./loading_script.rb"
  end
end
