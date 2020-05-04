Feature: Demonstrate scenario Outline example

	Background: 
		* url 'https://gorest.co.in'
		* header Authorization = 'Bearer jHQfgBru_xaZm1MyYvStCgE4KMsxTLGVRw-W'
		
		
	@nonreg		
	Scenario Outline: Create a user with post request
		Given path '/public-api/users'
		And request {"first_name":<fname>,"last_name":<lname>,"gender":<gender>,"dob":<dob>,"email":<email>,"address":<address>,"website":<website>,"status":<status>}
		When method POST
		Then status 200
		And match responseType == 'json'
		And match response.result.first_name == 'Chris'
		* def id = response.result.id
		
		
		Given path '/public-api/users', id
		And header Authorization = 'Bearer jHQfgBru_xaZm1MyYvStCgE4KMsxTLGVRw-W'
		When method get
		Then status 200
		And match response.result.first_name == 'Chris'
		And match response.result.last_name == 'Martin'
		
	
		Examples:
		| fname | lname | gender | dob | email | phone | address | website | status |
		| Chris | Martin | male | 08-27-1985 | chrismarti90325sspe@gmail.com | 5183641121 |newyork | https://chrismartin.com | active |
		#| Jim | Soulman | male | 08-27-1885 | jimmysoul12@gmail.com | 5183641021 |newyork | https://chrismartin.com | active |
