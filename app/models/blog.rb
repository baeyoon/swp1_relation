class Blog < ActiveRecord::Base
    #has_many :comments
    belongs_to :user
    validates :user_id,  :presence => true
    validates :content, :presence => true,
                    :length => { :minimum => 5 }
    has_many :comments, :dependent => :destroy
end
