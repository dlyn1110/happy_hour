
class HappyHour::Bar

attr_accessor :name, :description

  @@bars = []

  def initialize(name:, description:)
    @name = name
    @description = description
  end

  def self.all
    @@bars
  end

  def self.scrape_bars
    doc = Nokogiri::HTML(open('https://www.amny.com/eat-and-drink/brooklyn-s-best-bar-deals-happy-hours-free-snacks-games-and-more-1.11756526'))
    doc.css('.mediaCell').collect do |bar|
      {
    name: doc.css('h2').text,
    bar_description: doc.css('p')[4].text
       }
    end
  end
end
