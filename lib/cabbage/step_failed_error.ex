defmodule Cabbage.StepFailedError do
  defexception [:message, :inner_exception]

  def message(%__MODULE__{message: message, inner_exception: inner_exception}) do
    message <> "\n" <> Exception.message(inner_exception)
  end
end
