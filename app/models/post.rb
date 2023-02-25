class Post < ApplicationRecord
  scope :get_top_3_posts, -> { order( views: :desc ).limit(3) }
  scope :short_reads, -> { where("LENGTH(body) < 100") }
  scope :where_title_contains, -> (title) { where("title LIKE ?", "%#{title}%") }
end
