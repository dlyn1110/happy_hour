
class HappyHour::Bar

attr_accessor :name, :neighborhood, :address, :bar_description

  @@bars = []

  def initialize
    @@bars << self
  end

  def self.all
    @@bars
  end

  def self.scrape_bars
    doc = Nokogiri::HTML(open('https://www.theinfatuation.com/new-york/guides/the-best-brooklyn-happy-hours'))
    # doc.css('.spot-block__title').each do |bar|
    binding.pry
    end
  end
end
