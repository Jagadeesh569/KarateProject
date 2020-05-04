Feature: First Test Feature  get user details api call

Background:
		* url 'https://gorest.co.in'
		* header Authorization = 'Bearer jHQfgBru_xaZm1MyYvStCgE4KMsxTLGVRw-W'
		
	@reg	
	Scenario: list user with name as Tom in first test feature
		Given path '/public-api/users'
		And param first_name = 'Tom'
		When method get
		Then status 200
		
		Then match response.result[*].first_name contains ["Tomas"]
		
	@reg	
	Scenario: list user with name as Harry in 2nd feature 2nd scenario 
		Given path '/public-api/users'
		And param first_name = 'Harry'
		When method get
		Then status 200
		
		Then match response.result[*].first_name contains ["Harry"]