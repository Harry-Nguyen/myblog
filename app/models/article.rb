class Article < ActiveRecord::Base
	validates :title, :presence => { :message => '| Don\'t leave title empty!' }
	validates :body, :presence => { :message => '| Don\'t leave body empty!' }
	validates :title, :length => { :minimum => 2, :message => '| Please set a longer title (at least 3 characters)!' }
	validates :title, :uniqueness => { :message => '| This title is taken already. Please choose another one!' }
	validates :body, :length => { :minimum => 10, :message => '| Please set a longer body (at least 10 characters)!'  }
end
