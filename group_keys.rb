#!/usr/bin/env ruby

# require "pry"
require "nokogiri"

xml     = Nokogiri::XML(File.open("pl.xml"))

keys = xml.css("entry").group_by do |e|
  e["key"]
end.keys

group_keys = keys.map do |k|
  k.split("_")[0]
end.uniq

group_keys.sort.each do |gk|
  puts "| #{gk} | TODO |"
end
