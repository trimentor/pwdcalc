class PwdcalcSimpleInput < SimpleForm::Inputs::PasswordInput
  include Pwdcalc::PasswordStrength

  def input
    add_size!
    @builder.password_field(attribute_name, input_html_options) <<
    password_strength_score <<
    password_strength_meter
  end
end
