class Channel < ActiveRecord::Base
  belongs_to :category
  has_many   :sites, dependent: :destroy
  has_many   :feeds, dependent: :destroy
  has_many   :myreads, dependent: :destroy

  scope :enabled, -> { where(enabled: true) }
  scope :default, -> { where(default_flag: true) }
  scope :undefault, -> { where(default_flag: false) }

  def self.top_channels(region)
    self.enabled.default.where("region = ?", region).order("id")
  end
end
