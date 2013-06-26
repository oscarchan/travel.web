class Attraction
  attr_accessor :name, :snapshot_url

  def initialize(attrs = {} )
    attrs.each do |name, value|
      # calling the attr accessor
      self.send("#{name}=", value) if self.respond_to? "#{name}="
    end
  end


  def self.find_by_category(category_code, options = {})
    samples = [ { name: 'Sterling Winery', tag: ["sight"], snapshot_url: 'attractions/sterling-snapshot.jpg' },
                { name: 'Santana Row', snapshot_url: 'destinations/los-angeles-snapshot.jpg' },
                { name: 'San Diego', snapshot_url: 'destinations/san-francisco-snapshot.jpg' },
                { name: 'Las Vegas', snapshot_url: 'destinations/los-angeles-snapshot.jpg' },
                { name: 'San Luis Obispo', snapshot_url: 'destinations/san-francisco-snapshot.jpg' }]

    if options.include? :limit
      samples = samples.slice(0, options[:limit])
    end
    destinations = samples.map { |sample|  Attraction.new(sample)}
  end
end
