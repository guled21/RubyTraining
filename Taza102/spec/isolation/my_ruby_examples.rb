module RubyExamples
  #MONTHS = Array['Jan','Feb', 'Mar', 'Apr', 'May', 'Jun', 'July', 'Aug', 'Sep','Oct','Nov', 'Dec']
  MONTHS = Array[:Jan,:Feb, :Mar, :Apr, :May, :Jun, :July, :Aug, :Sep,:Oct,:Nov, :Dec]
  WEEK = {:Monday=>1, :Tuesday=>2, :Wednesday=>3, :Thursday=>4, :Friday=>5 , :Saturday=>6, :Sunday=>7}


  def RubyExamples.my_string(str)
    str = String.new str
    return str.split(" ")
  end


  def RubyExamples.find_month(num)
    msg = nil
    my_arr = Array.new MONTHS
    my_arr.each do |i|
      index = my_arr.index(i) + 1
      if index == num
        puts "month number #{num} of the year is: #{i}"
        msg = nil
        break
      else
        msg = "Please enter a valid number (1 to 12)"
      end
    end
     puts msg
  end

  def RubyExamples.print_hash
    my_hash = Hash.new
    my_hash = WEEK
    my_suffix = nil
    my_hash.each do |key, value|
      case value
        when 1
          suffix = "st"
        when 2
          suffix = "nd"
        when 3
          suffix = "rd"
        when 4,5,6,7
          suffix = "th"
        else
          suffix = nil
      end
      puts "#{key} is the #{value}#{suffix} day of the week\n"
    end
  end

  def RubyExamples.print_time
    time = Time.new.localtime

    my_date = "The date is #{time.month}/#{time.day}/#{time.year}"
    my_time = "time is #{time.hour}:#{time.min}:#{time.sec}"
    puts  my_date + " and " + my_time
  end

end


#================================================================
#puts RubyExamples::my_string("This is so fun")
#puts "\n"
RubyExamples.find_month(5)
puts "\n"
RubyExamples.print_hash
puts "\n"
RubyExamples.print_time

