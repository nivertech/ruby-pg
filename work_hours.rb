#!/usr/bin/ruby
total = (`xls2csv "#{ENV['HOME']}/Dropbox/OriB/timesheet/may2012.xls"`. # get data from worksheet excel
         map {|x| x.split(",")[3] }.                                    # filter out work hours (measured in days)
         find_all {|x| x}.                                              # get rid of nulls
         map { |x| x[1..-1].to_f * 24.0 }.                              # convert days to hours
         inject {|sum, n| sum + n}.                                     # summarize results
         to_s)                                                          # stringize)
`notify-send -u critical "Hour summary" "Total work hours: #{total}"`


