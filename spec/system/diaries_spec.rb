require 'rails_helper'

RSpec.describe "Diaries", type: :system do
  # rails_helperで書いているので書かなくてよし
  # before do
  #   driven_by(:rack_test)
  # end

  # pending "add some scenarios (or delete) #{__FILE__}"

  describe "#index" do
    before do
      visit diaries_path
    end

    it 'newページに飛ぶこと' do
      click_on 'New Diary'
      expect(current_path).to eq new_diary_path
    end
  end
  
  describe "#new" do
    before do
      visit new_diary_path
    end

    it 'diaryトップに戻ること' do
      click_on "Back"
      expect(current_path).to eq diaries_path
    end
  end

end
