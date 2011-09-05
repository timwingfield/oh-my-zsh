#!/usr/bin/env ruby
# encoding: UTF-8
# example for getting the battery settings https://gist.github.com/176025

info = `ioreg -rc "AppleSmartBattery"`

battery = %w(ExternalConnected CurrentCapacity MaxCapacity IsCharging).inject({}) do |hash, property|
  hash[property.to_sym] = info[/"#{property}" = (.*)$/, 1]; hash
end

percentage = (battery[:CurrentCapacity].to_f / battery[:MaxCapacity].to_f * 100).to_i
isCharging = battery[:IsCharging] == "Yes"
isPluggedIn = battery[:ExternalConnected] == "Yes"

green = "%{[32m%}"
yellow = "%{[33m%}"
red = "%{[31m%}"
reset = "%{[00m%}" 

if percentage > 50
  color = green
elsif percentage > 20
  color = yellow
else
  color = red
end

if isPluggedIn and percentage > 95
  color = reset
end

output = color + ""

if isCharging
  output += yellow + "⚡"
end

puts output += reset
