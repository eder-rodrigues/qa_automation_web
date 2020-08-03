require 'rspec'
require 'cucumber'
require	'selenium/webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
#require 'pry-nav'

require_relative 'page_objects'

World(PageObjects)

ENV_TYPE = ENV['ENV_TYPE']
BROWSER = ENV['BROWSER']

DATA = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENV_TYPE}.yml")

Capybara.register_driver :selenium do |app|

	if BROWSER.eql?('chrome')
		
		Capybara::Selenium::Driver.new(
			app, 
			:browser => :chrome,
			:desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
				'chromeOptions' => {
					'args' => [
					"start-maximized",
					"--no-sandbox",
                	"--disable-web-security",
                	"--disable-extensions",
                	"--allow-running-insecure-content"],
                	useAutomationExtension: false,
				}
			)
		)

	elsif BROWSER.eql?('firefox')
		
		Capybara::Selenium::Driver.new(
			app, 
			:browser => :firefox,
			:marionette => true
		)
	elsif BROWSER.eql?('ie')
		
		Capybara::Selenium::Driver.new(
			app, 
			:browser => :internet_explorer	
		)
	end	
end 

Capybara.configure do |config|
	Capybara.default_driver = :selenium
	config.app_host = DATA['URL']	
	Capybara.default_max_wait_time = 20	
end 	
	
ENV['ENV'] = 'HK' unless ENV.key?'ENV'
	MASSA = YAML.load_file('./fixtures/default_data.yml')[ENV['ENV']]