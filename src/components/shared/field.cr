module Shared::Field
  private def field(field, hide_label : Bool = false, hide_errors : Bool = false, label_options = NamedTuple.new)
    unless hide_label
      label_for field, **label_options
    end

    yield field

    unless hide_errors
      errors_for field
    end
  end
end
