module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/de.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/de'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module DE # :nodoc:
    DEFINED_REGIONS = [:de, :de_bw, :de_by, :de_nw, :de_rp, :de_sl, :de_he, :de_sn, :de_th, :de_bb, :de_mv, :de_st]

    HOLIDAYS_BY_MONTH = {
      5 => [{:mday => 1, :name => "Tag der Arbeit", :regions => [:de]},
            {:mday => 8, :name => "Victoire 1945", :regions => [:de]}],
      0 => [{:function => lambda { |year| Holidays.easter(year)-2 }, :name => "Karfreitag", :regions => [:de]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :name => "Ostermontag", :regions => [:de]},
            {:function => lambda { |year| Holidays.easter(year)+39 }, :name => "Christi Himmelfahrt", :regions => [:de]},
            {:function => lambda { |year| Holidays.easter(year)+50 }, :name => "Pfingstmontag", :regions => [:de]},
            {:function => lambda { |year| Holidays.easter(year)+60 }, :name => "Fronleichnam", :regions => [:de_bw, :de_by, :de_he, :de_nw, :de_rp, :de_sl, :de_sn, :de_th]}],
      11 => [{:mday => 1, :name => "Allerheiligen", :regions => [:de_bw, :de_by, :de_nw, :de_rp, :de_sl]}],
      1 => [{:mday => 1, :name => "Neujahrstag", :regions => [:de]},
            {:mday => 6, :name => "Heilige Drei Könige", :regions => [:de_bw, :de_by]}],
      12 => [{:mday => 25, :name => "1. Weihnachtstag", :regions => [:de]},
            {:mday => 25, :name => "2. Weihnachtstag", :regions => [:de]}],
      8 => [{:mday => 15, :name => "Mariä Himmelfahrt", :regions => [:de_by]}],
      10 => [{:mday => 3, :name => "Tag der Deutschen Einheit", :regions => [:de]},
            {:mday => 31, :name => "Reformationstag", :regions => [:de_bb, :de_mv, :de_sn, :de_st, :de_th]}]
    }
  end


end

Holidays.merge_defs(Holidays::DE::DEFINED_REGIONS, Holidays::DE::HOLIDAYS_BY_MONTH)
