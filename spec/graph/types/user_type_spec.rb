require "rails_helper"

describe UserType do
  it { is_expected.to have_field(:name).of_type("String") }
  it { is_expected.to have_field(:email).of_type("String") }
  it { is_expected.to have_field(:role).of_type("String") }
end
