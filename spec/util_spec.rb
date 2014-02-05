require "./spec/spec_helper.rb"

class TestDummy
  include Util
end

describe "Util" do

  it "shall get references of certain topic" do
    chapters = <<EOS
    <chapters>
    <chapter>
    <name>layout</name>
    <reference>www.one.com</reference>
    <reference>www.two.com</reference>
    <chapter>
    <chapter>
    <name>color</name>
    <reference>www.three.com</reference>
    <reference>www.four.com</reference>
    </chapter>
    </chapters>
EOS
    xml = Nokogiri::XML(chapters)

    actual = TestDummy.new.get_references(xml, "layout")
    actual.should include('www.one.com')
    actual.should include('www.two.com')
  end

end
