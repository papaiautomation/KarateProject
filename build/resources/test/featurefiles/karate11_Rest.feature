Feature: Karate Test Suite 11
  Validating JSON Output with Rest API with GET

  Scenario: Karate Rest API Testcase 1
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method GET
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"

  Scenario: Karate Rest API Testcase 2
    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/employees"
    When method GET
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"
