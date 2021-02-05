Feature: Karate Test Suite 8
  Validating data types of variables
  
  Scenario: Karate Data Type Validation TestCase 1

    * def a = 10
    * def b = "karate"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"

