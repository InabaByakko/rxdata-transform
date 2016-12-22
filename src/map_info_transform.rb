class MapInfoTransform

  attr_reader :infos, :configs

  def initialize(infos={}, configs={})
    @infos = infos
    @configs = configs
  end

  def to_h
    Hash[@infos.zip(@configs).map {|(id, info), (_, config)|
      config.each {|key, value| info.instance_variable_set(:"@#{key}", value) }
      [id, info]
    }]
  end

  def self.apply(rxdata)
    infos = Hash[rxdata.sort_by(&:first).map {|id, info|
      ['^#%X' % id, [id, info.to_hash]]
    }]
    configs = Hash[infos.map {|sig, (id, info)|
      [sig, [id, Hash[%w(expanded scroll_x scroll_y).map {|ex| [ex, info.delete(ex)]}]]]
    }]
    self.new(infos, configs)
  end

end
