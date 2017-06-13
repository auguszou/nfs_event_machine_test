require 'rubygems'
require 'bundler'
Bundler.setup
Bundler.require(:default)

$LOAD_PATH.unshift '.'

APP_ROOT = Pathname.new(File.dirname(__FILE__))

$setting = File.read(APP_ROOT.join("setting.yml"))
