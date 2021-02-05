Feature: Karate Test Suite 13
  Data driven testing Rest API

  @ddt
  Scenario Outline: Karate DDT TestCase 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Temp>"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * match responseType == "xml"
    * print responseTime
    * assert responseTime <= 1000
    * print response
    * match response contains "<Result>"
    * match response //string == <Result>

    Examples:
      | Temp |Result|
      |37    |98.6  |
      |40    |104   |

  @demo
  Scenario Outline: Karate DDT TestCase 2
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Temp>"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * match responseType == "xml"
    * print responseTime
    * assert responseTime <= 1000
    * print response
    * match response contains "<Result>"
    * match response //string == <Result>

    Examples:
      |read("classpath:ddtData.csv")|
