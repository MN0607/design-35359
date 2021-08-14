require 'rails_helper'

RSpec.describe Company, type: :model do
  before do
    @company = FactoryBot.build(:company)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it '全て存在すれば登録できる' do
        expect(@company).to be_valid
      end

      it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
        @company.password = '123abc'
        @company.password_confirmation = '123abc'
        expect(@company).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'emailが空では登録できない' do
        @company.email = ''
        @company.valid?
        expect(@company.errors.full_messages).to include("Email can't be blank")
      end

      it '重複したemailが存在する場合登録できない' do
        @company.save
        another_user = FactoryBot.build(:company, email: @company.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end

      it 'emailは@がない場合登録できない' do
        @company.email = 'testcom'
        @company.valid?
        expect(@company.errors.full_messages).to include('Email is invalid')
      end

      it 'passwordが空では登録できない' do
        @company.password = ''
        @company.valid?
        expect(@company.errors.full_messages).to include("Password can't be blank")
      end

      it 'passwordが5文字以下では登録できない' do
        @company.password = '123ab'
        @company.password_confirmation = '123ab'
        @company.valid?
        expect(@company.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end

      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @company.password_confirmation = ''
        @company.valid?
        expect(@company.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it 'passwordはアルファベットのみでは登録できない' do
        @company.password = 'abcdef'
        @company.password_confirmation = 'abcdef'
        @company.valid?
        expect(@company.errors.full_messages).to include('Password is invalid. Include both letters and numbers')
      end

      it 'passwordは数字のみでは登録できない' do
        @company.password = '123456'
        @company.password_confirmation = '123456'
        @company.valid?
        expect(@company.errors.full_messages).to include('Password is invalid. Include both letters and numbers')
      end

      it 'passwordは全角では登録できない' do
        @company.password = '１２３ＡＢＣ'
        @company.valid?
        expect(@company.errors.full_messages).to include('Password is invalid. Include both letters and numbers')
      end

      it 'compnay_nameは空では登録できない' do
        @company.company_name = ''
        @company.valid?
        expect(@company.errors.full_messages).to include("Company name can't be blank")
      end

      it 'compnay_nameは全角では登録できない' do
        @company.company_name = '白米株式会社'
        @company.valid?
        expect(@company.errors.full_messages).to include('Company name is invalid. Enter it as follows (e.g. RiceIsDessert,Inc.)')
      end

      it 'house_numberが空では、登録できない' do
        @company.house_number = ''
        @company.valid?
        expect(@company.errors.full_messages).to include("House number can't be blank")
      end

      it 'house_numberは全角では、登録できない' do
        @company.house_number = '１−１−１白米'
        @company.valid?
        expect(@company.errors.full_messages).to include('House number is invalid. Enter it as follows (e.g. 1-2-3,Ozeki)')
      end

      it 'building_nameは全角では、登録できない' do
        @company.building_name = '白米ビル'
        @company.valid?
        expect(@company.errors.full_messages).to include('Building name is invalid. Input half-width characters')
      end

      it 'municipalityが空では、登録できない' do
        @company.municipality = ''
        @company.valid?
        expect(@company.errors.full_messages).to include("Municipality can't be blank")
      end

      it 'municipalityは全角では、登録できない' do
        @company.municipality = '西浦区'
        @company.valid?
        expect(@company.errors.full_messages).to include('Municipality is invalid. Input half-width characters')
      end

      it 'prefecture_idが空では登録できない' do
        @company.prefecture_id = ''
        @company.valid?
        expect(@company.errors.full_messages).to include("Prefecture can't be blank")
      end

      it 'prefecture_idが1の場合登録できない' do
        @company.prefecture_id = 1
        @company.valid?
        expect(@company.errors.full_messages).to include("Prefecture can't be blank")
      end

      it 'potal_codeが空では、登録できない' do
        @company.postal_code = ''
        @company.valid?
        expect(@company.errors.full_messages).to include("Postal code can't be blank")
      end

      it 'postal_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
        @company.postal_code = '1234567'
        @company.valid?
        expect(@company.errors.full_messages).to include('Postal code is invalid. Enter it as follows (e.g. 123-4567)')
      end

      it 'phone_numberが空では、登録できない' do
        @company.phone_number = ''
        @company.valid?
        expect(@company.errors.full_messages).to include("Phone number can't be blank")
      end

      it 'phone_numberが半角のハイフンを含む場合、登録できない' do
        @company.phone_number = '123-456-7890'
        @company.valid?
        expect(@company.errors.full_messages).to include('Phone number is invalid. Input only number')
      end

      it 'phone_numberが半角数字9文字以下では、登録できない' do
        @company.phone_number = '123456789'
        @company.valid?
        expect(@company.errors.full_messages).to include('Phone number is too short')
      end

      it 'phone_numberが半角数字12文字以上では、登録できない' do
        @company.phone_number = '123456789101'
        @company.valid?
        expect(@company.errors.full_messages).to include('Phone number is too long')
      end

      it 'phone_numberは数字のみでないと、登録できない' do
        @company.phone_number = '12345abcde'
        @company.valid?
        expect(@company.errors.full_messages).to include('Phone number is invalid. Input only number')
      end

      it 'phone_numberが全角文字では、登録できない' do
        @company.phone_number = '１２３４５６７８９０１'
        @company.valid?
        expect(@company.errors.full_messages).to include('Phone number is invalid. Input only number')
      end
    end
  end
end
