Feature: Karate Test Suite 15
  Calling Java static and non-static function test suite
  #inside javascripts we are calling Java methods from Utils.java

  Scenario: Non static method TC

    * def env1 =
      """
      function()
      {
      var temp  = Java.type('misc.Utils')
      var utils = new temp();
      return utils.method2();
      }
      """
    * print env1()
    #Another way of printing the value
    * def res = call env1
    * print res

  Scenario: Static method TC

    * def env2 =
      """
      function()
      {
      var temp  = Java.type('misc.Utils')
      return temp.method1()
      }
      """
    * print env2()
    #Another way of printing the value
    * def res = call env2
    * print res
