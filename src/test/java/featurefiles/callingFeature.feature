Feature: Karate CallingFeature Suite
  Calling feature (call other feature file/files)
  # For more feature files we need different variables to store, as we validate each called files.

  @rest
  Scenario: Karate Calling Feature TestCase 1
    * def result = call read("calledFeature.feature")
    * print result
    * assert result.response.string._ == "104"