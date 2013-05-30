class Destination
  attr_accessor :name, :snapshot_url, :banner_image_urls

  def initialize(attrs = {} )
    attrs.each do |name, value|
      # calling the attr accessor
      self.send("#{name}=", value) if self.respond_to? "#{name}="
    end
  end


  def self.find_most_popular
    samples = [ { name: 'San Francisco', snapshot_url: 'destinations/san-francisco-snapshot.jpg' },
                { name: 'Los Angeles', snapshot_url: 'destinations/los-angeles-snapshot.jpg' },
                { name: 'San Diego', snapshot_url: 'destinations/san-francisco-snapshot.jpg' },
                { name: 'Las Vegas', snapshot_url: 'destinations/los-angeles-snapshot.jpg' },
                { name: 'San Luis Obispo', snapshot_url: 'destinations/san-francisco-snapshot.jpg' }]

    destinations = samples.map { |sample|  Destination.new(sample)}
  end
end
