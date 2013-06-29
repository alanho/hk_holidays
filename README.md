# hk_holidays

Tells you if a specific date is a Hong Kong holidays

## Install

    gem install "hk_holidays"

## Examples
    require "hk_holidays"
    
    Date.new(2013,4,21).is_hk_holiday?
    => false 
    Date.new(2013,12,25).is_hk_holiday?
    => true 
    Date.new(2013,12,25).is_hk_holiday?(:return_name => true)
    => "Christmas Day" 

##Notes

Current list of holidays is extracted from [official HK Gov's iCal](http://www.1823.gov.hk/common/ical/en.ics) which only goes back to 2011 Christmas. Expanding the list to earlier days (year 2000) is on the plan

## TODOs

* Test cases
* Expand list of holidays back to year 2000
* Statutory or labour holiday support

## Contributing to hk_holidays
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2013 Alan Ho. See LICENSE.txt for
further details.
