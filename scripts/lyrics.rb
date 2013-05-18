#!/usr/bin/env ruby

if not ARGV.empty?
  band_name = ARGV[0]
  band_link = "http://darklyrics.com/#{band_name[0]}/#{band_name}.html"

  system("open", band_link)
else
  puts "Specify a band name or GTFO"
end
