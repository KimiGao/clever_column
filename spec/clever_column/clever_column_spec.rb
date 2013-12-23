require 'spec_helper'

describe CleverColumn do

  before(:all) do
    db_config = YAML::load_file(File.dirname(__FILE__) + "/../database.yml")

    ActiveRecord::Base.configurations = db_config
    ActiveRecord::Base.establish_connection('mysql')

    load File.dirname(__FILE__) + "/../fixtures/models.rb"
    load File.dirname(__FILE__) + "/../fixtures/schema.rb"

    @book = Book.new
  end

  describe 'define many method' do
  end
end
