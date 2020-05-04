Feature: Second Test Feature get user details api call

Background:
		* url 'https://gorest.co.in'
		* header Authorization = 'Bearer jHQfgBru_xaZm1MyYvStCgE4KMsxTLGVRw-W'
		
	@sanity	
	Scenario: list user with name as Harry in 2nd feature
		Given path '/public-api/users'
		And param first_name = 'Harry'
		When method get
		Then status 200
		
		Then match response.result[*].first_name contains ["Harry"]