require 'spec_helper'

describe CleverColumn do

  before(:all) do
    db_config = YAML::load_file(File.dirname(__FILE__) + "/../database.yml")

    ActiveRecord::Base.configurations = db_config
    ActiveRecord::Base.establish_connection('mysql')

    load File.dirname(__FILE__) + "/../fixtures/models.rb"
    load File.dirname(__FILE__) + "/../fixtures/schema.rb"

  end

  describe 'define some class methods' do

    subject { Book }

    it { should respond_to(:clever_column) }
    it { should respond_to(:star_config) }
    it { should respond_to(:star_array) }

  end

  describe 'define some instance methods' do
    subject { Book.new }

    it { should respond_to(:star_config) }
    it { should respond_to(:star_desc) }
    it { should respond_to(:star_name) }
    it { should respond_to(:"star_name=") }
    it { should respond_to(:"star_three!") }
  end

  describe 'method result' do
    subject(:book) { Book.create(title: 'Working With Unix Processes', star: 3) }

    it { book.star_config.should == {key: :three, value: 3, desc: 'three star'} }
    it { book.star_desc.should ==  'three star' }
    it { book.star_name.should ==  :three }
  end

  describe 'define some scope' do

    subject { Book }

    it { should respond_to(:star_one) }
    it { should respond_to(:star_two) }
    it { should respond_to(:star_three) }
  end

end
