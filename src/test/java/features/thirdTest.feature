Feature: 3rd Test Feature get user details api call

Background:
		* url 'https://gorest.co.in'
		* header Authorization = 'Bearer jHQfgBru_xaZm1MyYvStCgE4KMsxTLGVRw-W'
		
	@smoke	
	Scenario: list user with name as Tom in 2nd test feature
		Given path '/public-api/users'
		And param first_name = 'Tom'
		When method get
		Then status 200
		
		Then match response.result[*].first_name contains ["Tomas"]