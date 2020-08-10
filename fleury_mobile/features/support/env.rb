#require 'rspec'
require 'cucumber'
#require	'selenium/webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'appium_lib'
#require 'pry-nav'

require_relative 'page_objects'

World(PageObjects)

#ENV_TYPE = ENV['ENV_TYPE']
#BROWSER = ENV['BROWSER']

#DATA = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENV_TYPE}.yml")

def caps
	{ caps: {
		deviceName: "Simulator",
		platformName: "Android",
		app: (File.join(File.dirname(__FILE__), "Fleury.apk")),
		appPackage: "br.com.grupofleury.fleury.hml",
		appActivity: "br.com.grupofleury.dashboard.HomeActivity",
		newCommandTimeout: "15600",
	}
}
end





Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object