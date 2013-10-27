RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

Dir[Rails.root.join("lib/forgery/**/*.rb")].each {|f| require f}
