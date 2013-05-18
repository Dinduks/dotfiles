#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

help = <<-eos
Usage examples:

lyrics megadeth tornado
lyrics stratovarius "chasing shadows"
lyrics tokyoblade
eos

if not ARGV.empty?
  band_name = ARGV[0]
  band_link = "http://darklyrics.com/#{band_name[0]}/#{band_name}.html"

  if ARGV.length == 1
    system("open", band_link)
  elsif ARGV.length == 2
    song_name = ARGV[1]

    html = open(band_link)
    doc = Nokogiri::HTML(html)
    song_elem = doc.xpath("//a").find do |link|
      link.children.first.text =~ /#{song_name}/i
    end
    song_rel_url = song_elem.attributes.first[1].value
    song_clean_rel_url = song_rel_url[-song_rel_url.length+3, song_rel_url.length-3]
    song_link = "http://darklyrics.com/#{song_clean_rel_url}"

    system("open", song_link)
  end
else
  puts help
end
