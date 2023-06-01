defmodule ChuckwagonWeb.Utils.EmojisDict do
  def call(food_items) do
    String.split(food_items, ":")
    |> Enum.map(fn item -> item |> String.trim() |> translate() end)
    |> Enum.join(" - ")
  end

  defp translate("Soft Pretzels"), do: "🥨"
  defp translate("hot dogs"), do: "🌭"
  defp translate("chips"), do: "🍟"
  defp translate("Chips"), do: "🍟"
  defp translate("Candy"), do: "🍬"
  defp translate("popcorn"), do: "🍿"
  defp translate("soda"), do: "🥤"
  defp translate("Sodas"), do: "🥤"
  defp translate("soda & water"), do: "🥤"
  defp translate("soda & juice"), do: "🥤"
  defp translate("espresso"), do: "☕"
  defp translate("ice cream"), do: "🍦"
  defp translate("shish-ka-bob"), do: "🍢"
  defp translate("water"), do: "💧"
  defp translate("juice"), do: "🧃"
  defp translate("pastries"), do: "🍰"
  defp translate("Tacos"), do: "🌮"
  defp translate("Burritos"), do: "🌯"
  defp translate("burritos"), do: "🌯"
  defp translate(unknown_food), do: unknown_food
end
