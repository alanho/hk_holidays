# encoding: utf-8
$:.unshift File.dirname(__FILE__)

require "date"
require "yaml"

class HKHolidays
  class << self
    def is_hk_holiday?(date)
      holidays.map { |d| d[:date] }.include? date
    end

    def holiday_name(date)
      holiday = holidays.find { |d| d[:date] == date }
      holiday ? holiday[:name] : false
    end

    def holidays
      @holidays ||= load_holidays
    end

    protected
    def load_holidays
      YAML::load_file(File.join(File.dirname(__FILE__), "hk_holidays.yml"))
    end
  end
end

require "core_ext/date"