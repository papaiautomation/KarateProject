Feature: Karate Test Suite 7
  Using Logical Operator && in Validation
  
  Scenario: Karate Logical Operator TestCase 1

    Given def a = 10
    And def b = 20
    * assert a == 10 && b == 25
    * print "After assertion"

