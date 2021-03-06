defmodule CodeStats.XP do
  use CodeStats.Web, :model

  schema "xps" do
    field :amount, :integer
    belongs_to :pulse, CodeStats.Pulse
    belongs_to :language, CodeStats.Language

    timestamps
  end

  @doc """
  Creates a changeset based on the `data` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(data, params \\ %{}) do
    data
    |> cast(params, [:amount])
    |> validate_required([:amount])
  end
end
