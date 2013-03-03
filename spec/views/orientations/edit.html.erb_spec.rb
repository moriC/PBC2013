require 'spec_helper'

describe "orientations/edit" do
  before(:each) do
    @orientation = assign(:orientation, stub_model(Orientation,
      :user_id => 1,
      :meeting_id => 1,
      :state => 1
    ))
  end

  it "renders the edit orientation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orientations_path(@orientation), :method => "post" do
      assert_select "input#orientation_user_id", :name => "orientation[user_id]"
      assert_select "input#orientation_meeting_id", :name => "orientation[meeting_id]"
      assert_select "input#orientation_state", :name => "orientation[state]"
    end
  end
end
