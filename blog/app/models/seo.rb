class Seo < ApplicationRecord
  belongs_to :seoable, polymorphic: true

  DEFAULT_TITLE = 'RoRBlog'
  DEFAULT_DESCRIPTION = 'Best in RoR'
  DEFAULT_ROBOTS = 'all'
end
