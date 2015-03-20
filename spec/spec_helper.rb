PROJECT_ROOT = File.expand_path("../..", __FILE__)

Dir.glob(File.join(PROJECT_ROOT, "lib", "*.rb")).sort.each do |file|
  require file
end

RSpec.configure do |config|
end
