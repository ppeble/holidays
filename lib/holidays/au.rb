module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/au.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/au'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module AU # :nodoc:
    DEFINED_REGIONS = [:au_qld, :au_nt, :au, :au_tas, :au_wa, :au_vic, :au_act, :au_nsw, :au_sa]

    HOLIDAYS_BY_MONTH = {
      5 => [{:wday => 1, :week => 1, :name => "Labour Day", :regions => [:au_qld, :au_nt]}],
      0 => [{:function => lambda { |year| Holidays.easter(year)-2 }, :name => "Good Friday", :regions => [:au]},
            {:function => lambda { |year| Holidays.easter(year)-1 }, :name => "Easter Saturday", :regions => [:au]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :name => "Easter Monday", :regions => [:au]},
            {:function => lambda { |year| Holidays.easter(year)+2 }, :name => "Easter Monday", :regions => [:au_tas]}],
      6 => [{:wday => 1, :week => 2, :name => "Queen's Birthday", :regions => [:au]},
            {:mday => 6, :type => :informal, :name => "Queensland Day", :regions => [:au_qld]}],
      1 => [{:mday => 1, :name => "New Year's Day", :regions => [:au]},
            {:mday => 26, :name => "Australia Day", :regions => [:au]}],
      12 => [{:mday => 25, :name => "Christmas Day", :regions => [:au]},
            {:mday => 26, :name => "Boxing Day", :regions => [:au]}],
      3 => [{:wday => 1, :week => 1, :name => "Labour Day", :regions => [:au_wa]},
            {:wday => 1, :week => 2, :name => "Labour Day", :regions => [:au_vic, :au_tas]}],
      4 => [{:mday => 25, :name => "ANZAC Day", :regions => [:au]}],
      10 => [{:wday => 1, :week => 1, :name => "Labour Day", :regions => [:au_act, :au_nsw, :au_sa]}]
    }
  end

# Monday on or before May 24
def self.ca_victoria_day(year)
  date = Date.civil(year,5,24)
  if date.wday > 1
    date -= (date.wday - 1)
  elsif date.wday == 0
    date -= 6
  end
  date
end


end

Holidays.merge_defs(Holidays::AU::DEFINED_REGIONS, Holidays::AU::HOLIDAYS_BY_MONTH)
