# from this repository run with:
# $ foreman run bundle exec ruby examples/jobs.rb

require 'pushpop'
require_relative '../lib/pushpop-file'

job do
  file do
    path File.expand_path('../colors.txt', __FILE__)
  end

  step do |last_response|
    last_response.each do |line|
      puts line
    end
  end
end

Pushpop.run
