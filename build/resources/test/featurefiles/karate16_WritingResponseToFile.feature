Feature: Karate Test Suite 16
  Writing Response to external file


  Scenario: Writing Response to external file TC
    * def util = Java.type("misc.Utils")
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * def res = get response
    #* def res = get response $.data[0].email
    * print res
    * util.writeToFile("jsonResult.json",res)

  Scenario: Reading Response from external file TC
    * def data = read("classpath:jsonResult.json")
    * print data


