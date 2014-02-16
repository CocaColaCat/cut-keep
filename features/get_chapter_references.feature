Feature: get any chapter's references
  As a user, I would like to lookup the references in a chapter,
  so that I can explore the reference.  

  Scenario: get chapter layout's references 
    Given the system knows the following: 
    """
    <chapters>
    	<chapter>
    		<topic>layout</topic>
		<reference>
			<link>www.one.com</link>
			<caption>any text</caption>
		</reference>
		<reference>
			<link>www.two.com</link>
			<caption>any other text</caption>
		</reference>
    	<chapter>
	<chapter>
		<topic>color</topic>
		<reference>www.three.com</reference>
		<reference>www.four.com</reference>
	</chapter>
      </chapters>
      """
      When a client requests all references of chapter "layout"
      Then he should see this references "www.one.com"
      And he should see this caption "any text"
