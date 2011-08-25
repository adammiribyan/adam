class Post < ActiveRecord::Base
  def to_param
    [id, slug].join('-')
  end
end
