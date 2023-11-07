# frozen_string_literal: true

require 'open-uri'
require "nokogiri"
require "day_offs"

module DayOffs::Sources
  class Consultant < Base
    with_countries :RU
    with_years 2023, 2024
    with_name :consultant

    def call
      doc.css("table.cal").each.with_object([]).with_index(1) do |(month_html, result), month|
        month_html.css("td.weekend").each do |day_off_html|
          day = day_off_html.children.first.to_s
          result << DayOffs::DayOff.new(country, Date.civil(year.to_i, month.to_i, day.to_i))
        end
      end
    end

    private

    def doc
      @doc ||= Nokogiri::HTML(URI.open("https://www.consultant.ru/law/ref/calendar/proizvodstvennye/#{year}/"))
    end
  end
end
