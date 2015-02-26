require 'spec_helper'

describe Data do 

	context 'Demo of datamapper' do
		it 'should be retrieved from the db' do
			expect(Data.count).to eq(0)
		end
	end
	
end