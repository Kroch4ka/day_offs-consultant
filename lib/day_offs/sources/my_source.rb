# frozen_string_literal: true

module DayOffs::Sources
  class MySource < Base
    with_countries :RU # add countries supported by your source
    with_years 2023, 2024 # add years supported by your source
    with_name :source_template # add your source name

    def call
      [
        DayOffs::DayOff.new(country, Date.civil(year))
      ] # return array of DayOffs::DayOff structs
    end
  end
end
