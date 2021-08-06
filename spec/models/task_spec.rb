require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'Validation' do
    context 'titleを設定したときに作成できる' do
      task = Task.create(
        title: 'やること'
      )
      it { expect(task).to be_valid }
    end
    context 'titleが0文字のとき作成できない' do
      task = Task.create(
        title: ''
      )
      it { expect(task).to be_invalid }
    end
  end
end
