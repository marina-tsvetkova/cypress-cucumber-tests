Feature: Test Feature

@run
Scenario: Test Case 1 - Version 2 - external data file
    Given visit '/'
	And scroll to 'Contacts' section
	And click 'Contact us' button
	And type 6 chars long text in 'Name' input field
	And type 6 chars long text in 'Subject' input field
	And type 6 chars long text in 'Your Message' input field
	And validate the 'email' data entered in 'Email' input field

#@run
Scenario Outline: Test Case 1
    Given visit '/'
	And scroll to 'Contacts' section
	And click 'Contact us' button
	And type 6 chars long text in 'Name' input field
	And type 6 chars long text in 'Subject' input field
	And type 6 chars long text in 'Your Message' input field
	And type '<email-value>' in 'Email' input field
	When click on 'Send' webelement
	Then the error message 'The e-mail address entered is invalid.' appears for 'Email' input field
    Examples:
        |email-value|
        |@test.com|
        |Joe Smith <email@test.com>|
        |email.test.com|
        |just”not”right@test.com|
        |email@test|

#@run
Scenario: Test Case 3 - Required field error message
    Given visit 'careers/'
	And click 'ACCEPT' button
    When click 'Check our open positions' button
    Then the correct URL 'careers/join-us/' loads
	#Verify that  'Join Us' page is opened (can verify that URL is correct: http://www.musala.com/careers/join-us/
    When from the dropdown 'Filter by location' select 'Anywhere'
    And click on 'Automation QA Engineer' job card
    Then verify that 4 main sections are shown
		|section|
		|General description|
		|Requirements| 
		|Responsibilities| 
		|What we offer|
    And 'Apply' button is present
	#And 'Apply' button is on the bottom of the page
    And click on 'Apply' webelement
    And upload a 'Test.docx' document
	And click the Consent checkbox
	And click on 'Send' webelement
    Then an error messages is displayed for the indicated field
		|fieldName	|message			|
		|Name		|The field is required.|
		|Email		|The field is required.|
		|Mobile		|The field is required.|
		|Your Message|The field is required.|

#@run
Scenario Outline: Test Case 4
	Given visit 'careers/'
	And click 'ACCEPT' button
    When click 'Check our open positions' button
    Then the correct URL 'careers/join-us/' loads
	When from the dropdown 'Filter by location' select '<location>'
	Then get the open positions by city and print in the console the list with available positions by city '<location>'
	Examples:
	    |location|
	    |Sofia|
	    |Skopje|

#@run
Scenario: Test Case 2
	Given visit '/'
	And click 'ACCEPT' button
	When click 'Company' tab from the main menu
	Then the correct URL 'company/' loads
	And the 'Leadership' section is present
	When click the 'Facebook' link from the footer
	Then the correct URL 'https://www.facebook.com/MusalaSoft?fref=ts' of 'Facebook' link loads in new tab