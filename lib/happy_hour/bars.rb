
class HappyHour::Bars

attr_accessor :name, :neighborhood, :address, :bar_description

  def initialize
    @name = name
    @neighborhood = neighborhood
    @address = address
    @bar_description = bar_description
  end

  def scrape
    doc = Nokogiri::HTML(open('https://www.theinfatuation.com/new-york/guides/the-best-brooklyn-happy-hours'))
    doc.css('.spot-block__title').each do |bar|
  
    end
  end
end
