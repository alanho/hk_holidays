class Date
  def is_hk_holiday?(options = {})
    return_name = (options[:return_name] == true)

    if HKHolidays.is_hk_holiday?(self)
      return_name ? HKHolidays.holiday_name(self) : true
    else
      false
    end
  end
end