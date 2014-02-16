require "./spec/spec_helper.rb"

class TestDummy
  include Util
end

describe "Util" do

  it "shall get references of certain topic" do
    chapters = <<EOS
    <chapters>
    <chapter>
    <topic>layout</topic>
    <reference>
    	<link>www.one.com</link>
	<caption></caption>
    </reference>
    <reference>
        <link>www.two.com</link>
    </reference>
    <chapter>
    <chapter>
    <topic>color</topic>
    <reference>www.three.com</reference>
    <reference>www.four.com</reference>
    </chapter>
    </chapters>
EOS
    xml = Nokogiri::XML(chapters)

    actual = TestDummy.new.get_links(xml, "layout")
    actual.should include('www.one.com')
    actual.should include('www.two.com')
  end

  it "should get captions of certain topic" do
      chapters = <<EOS
      <chapters>
      <chapter>
      <topic>layout</topic>
      <reference>
      <link>www.one.com</link>
      <caption>This is first link</caption>
      </reference>
      <reference>
      <link>www.two.com</link>
      <caption></caption>
      </reference>
      <chapter>
      <chapter>
      <topic>color</topic>
      <reference>www.three.com</reference>
      <reference>www.four.com</reference>
      </chapter>
      </chapters>
EOS
  xml = Nokogiri::XML(chapters) 
  actual = TestDummy.new.get_captions(xml, "layout")
  actual.should include('This is first link')
  actual.should include('')

  end

end
