class Post < ActiveRecord::Base

  has_attached_file :avatar,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_options => {environment: ENV["RACK_ENV"]},
    :styles => { :large =>"634x422", :medium => "376x250>", :thumb => "40x40>" }

  scope :by_keyword, lambda { |keyword=nil|
    where('posts.title ILIKE ? OR posts.content ILIKE ? OR posts.author ILIKE ?',
      "%#{keyword}%", "%#{keyword}%", "%#{keyword}%")}

  scope :recent, lambda { |limit_value| order(created_at: :desc).limit(limit_value)}

  def self.search params
    return scoped if params.blank?
    posts = scoped
    posts = posts.by_keyword(params) unless params.blank?
  end
end
