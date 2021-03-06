require 'pry'

holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  # holiday_hash.each do |key,value|
  #   if key == :winter
  #     value.each do |k,v|
  #     if k == :christmas
  #
  #     end
  #   end
  #   end
  # end
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << "Grill"
    holiday_hash[:spring][:memorial_day] << "Table Cloth"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    holiday_hash[:fall][:columbus_day] = ["Flags", "Italian Food", "Parade Floats"]
    holiday_hash[:winter][:valentines_day] = ["Candy Hearts", "Cupid Cut-Out"]
    holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arr = []
    arr  << holiday_hash[:winter][:christmas]
      arr  << holiday_hash[:winter][:new_years]
      arr << "Lights"
      arr << "Wreath"
      arr << "Party Hats"
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    holiday_hash.each do |season, holiday|
      puts "#{season.capitalize}:"
      holiday.each do |holiday, item|
        # puts "#{holiday.to_s.split(' ')}: #{item.join(",")}"
        # puts "  #{holiday.to_s.split('_').join(" ").capitalize}: #{item.join(", ")}"
        puts "  #{holiday.to_s.split('_').map(&:capitalize).join(' ')}: #{item.join(", ")}"
      end

    end
end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, value|
      if holiday == :fourth_of_july
        arr << holiday
      end
      if holiday == :memorial_day
        arr << holiday
      end
    end

  end
arr
end
 all_holidays_with_bbq(holiday_hash)
