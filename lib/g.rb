require 'rubygems'
require 'ruby_gntp'
require 'pp'

$g_host ||= "localhost"
$g_priority ||= 0
$g_sticky ||= true

module Kernel
  def g(*args, &block)

    args.push(block) if block

    messages =
      if args.empty?
        ['g!']
      else
        args.map { |i| i.pretty_inspect }
      end    

    messages.each do  | msg | 
       GNTP.notify :app_name => 'g',
                   :title    => 'g', 
                   :text     => msg,
                   :sticky   => $g_sticky
    end
    if args.empty?
      nil
    elsif args.size == 1
      args.first
    else
      args
    end
  end
end
