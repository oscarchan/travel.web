class Category
  attr_accessor :code, :description

  def initialize(attrs = {} )
    attrs.each do |name, value|
      # calling the attr accessor
      self.send("#{name}=", value) if self.respond_to? "#{name}="
    end
  end


  def self.find_suggested_list
    samples = [ { code: 'top', description: 'Most Popular' },
                { code: 'shopping', description: 'Shopping' },
                { code: 'recreational', description: 'Recreational Activities' },
                { code: 'sightseeing', description: 'Sightseeing' },
                { code: 'events', description: 'Events' }]

    destinations = samples.map { |sample|  Category.new(sample)}
  end
end
