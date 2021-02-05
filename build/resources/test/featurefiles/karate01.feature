Feature: Karate Test Suite 1
  This is the first test suite
  
  Scenario: Karate TestCase 1
    This is the first test case

    Given def a = 10
    And def b = 20
    When def c =  a + b
    Then assert c == 30
    And print "c = ",c
    And karate.log("End of the Test")

  Scenario: Karate TestCase 2
    This is the 2nd test case

    Given def a = 10
    * def b = 20
    When def c =  a + b
    Then assert c == 30
    * print "c = ",c
    * karate.log("End of the Test")

  Scenario: Karate TestCase 3
    This is the 3rd test case

    * def a = 10
    * def b = 20
    * def c =  a + b
    * assert c == 30
    * print "c = ",c
    * karate.log("End of the Test")