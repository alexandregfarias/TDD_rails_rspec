require 'rails_helper'

RSpec.describe User, type: :model do
    context 'ao criar um usuário' do
      it 'não deve criar usuário sem nome e idade' do
          user = User.new(name: nil, age: nil)
          expect(user).not_to be_valid
      end

      it 'não deve criar usuário sem um nome' do
        user = User.new(name: nil, age: 30)
        expect(user).not_to be_valid
      end

      it 'não deve criar um usuário sem idade' do
        user = User.new(name: 'Xande', age: nil)
        expect(user).not_to be_valid
      end

      it 'deve criar usuário com nome e idade' do
        user = User.new(name: 'Xande', age: 29)
        expect(user).to be_valid
      end      
    end
end
