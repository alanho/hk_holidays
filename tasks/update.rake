require "open-uri"
require "ri_cal"
require "yaml"

desc "Update holidays from HK Government's official iCal file"
namespace :hk_holidays do
  task :update do
    ICAL_URL = "http://www.1823.gov.hk/common/ical/en.ics"

    holidays = []
    RiCal.parse_string(open(ICAL_URL).read).first.events.each do |event|
      # p event.dtstart
      holidays << {
        name: event.summary.force_encoding("utf-8").gsub(/[[:cntrl:]]/,""),
        date: event.dtstart
      }
    end
    File.open(File.join(File.dirname(__FILE__), "../lib/hk_holidays.yml"), "w") do |f|
      f.write YAML::dump(holidays)
    end
  end
end