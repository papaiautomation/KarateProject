Feature: Karate Test Suite 12
  End to End Rest API Testing (API Chaining)

  @rest
  Scenario: Karate Rest API End to End Testcase 1
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Snehasish","salary":"123","age":"23"}
    When method post
    Then status 200
    * print response
    * def id = response.data.id
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200
    * print response
    #* assert response.message == "successfully! Records has been fetched."

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And request {"name":"Snehasish","salary":"450","age":"30"}
    When method PUT
    Then status 200
    * print response

    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/delete/" + id
    When method DELETE
    Then status 200
    * print response
    * assert response.message == "successfully! deleted Records"


