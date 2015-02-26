require 'spec_helper'

describe Data do 

	context 'Demo of datamapper' do
		it 'should be retrieved from the db' do
			expect(Suicide_Data.count).to eq(33)
		end
	end
	
end