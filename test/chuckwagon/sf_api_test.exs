defmodule Chuckwagon.SFApiTest do
  use ExUnit.Case

  import Mox

  alias Chuckwagon.SFApi

  describe "SF-API" do
    test "returns valid results" do
      expect(
        MockHttp,
        :get,
        fn _url ->
          {:ok, Chuckwagon.Support.SFApiData.successful_response()}
        end
      )

      address = "BRANNAN"

      assert [
               %Wagon{
                 name: "The New York Frankfurter Co. of CA, Inc. DBA: Annie's Hot Dogs",
                 address: "101 STOCKTON ST",
                 food_items:
                   "Soft Pretzels: hot dogs: sausage: chips: popcorn: soda: espresso: cappucino: pastries: ice cream: italian sausages: shish-ka-bob: churros: juice: water: various drinks"
               },
               %Wagon{
                 name: "Bay Area Mobile Catering, Inc. dba. Taqueria Angelica's",
                 address: "1501 FOLSOM ST",
                 food_items: "Tacos: burritos: soda & juice"
               }
             ] = SFApi.call(address)
    end

    test "returns empty list when status code is different from 200" do
      expect(
        MockHttp,
        :get,
        fn _url -> {:ok, Chuckwagon.Support.SFApiData.status_code_different_from_200()} end
      )

      address = "BRANNAN"

      assert [] = SFApi.call(address)
    end

    test "returns empty list when api returns an error" do
      expect(
        MockHttp,
        :get,
        fn _url -> {:ok, Chuckwagon.Support.SFApiData.error_response()} end
      )

      address = "BRANNAN"

      assert [] = SFApi.call(address)
    end
  end
end
