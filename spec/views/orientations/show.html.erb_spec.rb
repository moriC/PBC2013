require 'spec_helper'

describe "orientations/show" do
  before(:each) do
    @orientation = assign(:orientation, stub_model(Orientation,
      :user_id => 1,
      :meeting_id => 2,
      :state => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
