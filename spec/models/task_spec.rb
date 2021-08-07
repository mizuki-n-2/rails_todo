require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) { create(:task) }

  describe 'Validation' do
    context 'titleを設定したときに作成できる' do
      it { expect(task).to be_valid }
    end

    context 'titleが0文字のとき作成できない' do
      task_title_blank = Task.create(
        title: ''
      )
      it { expect(task_title_blank).to be_invalid }
    end
  end
end
