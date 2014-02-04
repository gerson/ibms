class Post < ActiveRecord::Base
  attr_accessible :content, :title, :avatar, :author

  has_attached_file :avatar,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_options => {environment: ENV["RACK_ENV"]},
    :styles => { :medium => "376x250>", :thumb => "40x40>" }

  scope :by_keyword, lambda { |keyword=nil|
    where('posts.title ILIKE ? OR posts.content ILIKE ? OR posts.author ILIKE ?',
      "%#{keyword}%", "%#{keyword}%", "%#{keyword}%")}

  def self.search params
    return scoped if params.blank?
    posts = scoped
    posts = posts.by_keyword(params) unless params.blank?
  end
end
