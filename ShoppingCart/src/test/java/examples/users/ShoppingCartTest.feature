
  Feature: Testing the Shopping Cart Cart
     Background:
       Given url "http://localhost:8500/shoppingcart/"

Scenario: Bad header
       Given path "items"
       Given params {Type:"Fresh", Discount:"Applied"}
       When method Get
       Then status 401

      Scenario: Correct header
        Given path "items"
        Given params {Type:"Fresh", Discount:"Applied"}
        Given header Client-Id = "DPE-QE"
        When method Get
        Then status 200
        And match response !=null

    Scenario: Param is wrong
      Given path "items"
      Given params {Type:"French", Discount:"Applied"}
      Given header Client-Id = "DPE-QE"
      When method Get
      Then status 400