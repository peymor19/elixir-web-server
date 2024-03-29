defmodule Servy.Api.BearController do
  def index(conv) do
    json =
      Servy.Wildthings.list_bears()
      |> Poison.encode!

    %{conv | status: 200, resp_content_type: "application/json",  resp_body: json}
  end

  def create(conv, %{"name" => name, "type" => type}) do
    %{ conv | status: 200, resp_body: "Created a #{type} bear names #{name}!"}
  end

end
