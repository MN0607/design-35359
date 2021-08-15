require 'rails_helper'

RSpec.describe Design, type: :model do
  before do
    @design = FactoryBot.build(:design)
  end

  describe '投稿機能' do
    context '投稿できる場合' do
      it '全てあれば投稿できる' do
        expect(@design).to be_valid
      end
    end

    context '投稿できない場合' do

      it 'titleが空では投稿できない' do
        @design.title = ''
        @design.valid?
        expect(@design.errors.full_messages).to include("Title can't be blank")
      end


      it 'explanationが空では投稿できない' do
        @design.explanation = ''
        @design.valid?
        expect(@design.errors.full_messages).to include("Explanation can't be blank")
      end

      it 'category_idが空では投稿できない' do
        @design.category_id = ''
        @design.valid?
        expect(@design.errors.full_messages).to include("Category can't be blank")
      end

      it 'category_idが1の場合投稿できない' do
        @design.category_id = 1
        @design.valid?
        expect(@design.errors.full_messages).to include("Category can't be blank")
      end

      it 'user_idが空では投稿できない' do
        @design.user = nil
        @design.valid?
        expect(@design.errors.full_messages).to include("User must exist")
      end

      it 'imageが空では投稿できない' do
        @design.image = nil
        @design.valid?
        expect(@design.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
