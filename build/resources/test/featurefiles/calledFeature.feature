Feature: Karate Called Feature Suite
  Called feature

  @rest
  Scenario: Karate Called Feature TestCase 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * match responseType == "xml"
    * print responseTime
    #* assert responseTime <= 1000
    * print response
    * match response contains "104"
    * match response //string == 104