require 'spec_helper'

describe LectureController do
  describe "GET 'programing'" do
    it "return http success" do
      get 'programing'
      response.should be_success
    end
  end

  describe "GET 'system_design'" do
    it "return http success" do
      get 'system_design'
      response.should be_success
    end
  end

  describe "GET 'web_design'" do
    it "return http success" do
      get 'web_design'
      response.should be_success
    end
  end

  describe "GET 'beginner'" do
    it "return http success" do
      get 'beginner'
      response.should be_success
    end
  end
end
