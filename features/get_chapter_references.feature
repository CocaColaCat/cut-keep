Feature: get any chapter's references
  As a user, I would like to lookup the references in a chapter,
  so that I can explore the reference.  

  Scenario: get chapter layout's references 
    Given the system knows the following: 
    """
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
      """
      When a client requests all references of chapter "layout"
      Then he should see this references "www.one.com"
