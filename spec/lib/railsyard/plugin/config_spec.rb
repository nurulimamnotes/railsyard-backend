require 'spec_helper'

describe Railsyard::Plugin::Config do

  %w(name backend_js_dependencies backend_css_dependencies).each do |attr|
    it "lets get and set :#{attr} attribute" do
      subject.send("#{attr}=", :foo)
      subject.send(attr).should == :foo
    end
  end

  it "lets you retrieve generator_editor_types with name" do
    type = stub({name: :my_awesome_plugin, fields: [], editor_config: ""})
    subject.add_generator_editor_type :my_awesome_plugin, [], ""
    subject.generator_editor_type("my_awesome_plugin").name.should == :my_awesome_plugin
  end

end
