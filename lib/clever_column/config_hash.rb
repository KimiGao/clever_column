module CleverColumn
  class ConfigHash < Hash

    attr_reader :config_values_map

    def initialize(*args)
      configs = args.extract_options!

      @config_values_map = {}

      configs.each do |_key, _config|
        @config_values_map[_config[:value]] = _config.merge(key: _key)
      end
    end

    def item(value)
      @config_values_map[value]
    end
  end
end
