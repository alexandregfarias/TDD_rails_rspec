require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validations' do
    it 'is valid with a title and a content' do
      post = Post.new(title: 'first post', content: 'A content')
      expect(post).to be_valid
    end

    it 'is not valid without a title' do
      post = Post.new(title: nil, content: 'A content')
      expect(post).not_to be_valid
    end

    it 'is not valid without a content' do
      post = Post.new(title: 'A Title', content: nil)
      expect(post).not_to be_valid
    end  
  end
end
