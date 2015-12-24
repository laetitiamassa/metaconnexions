class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  is_impressionable counter_cache: true

  has_many :skills
  has_many :skill_names, :through => :skills

  has_many :interests
  has_many :interest_names, :through => :interests

  has_many :messages, :class_name => 'Message', :foreign_key => 'messagee_id'
  #has_many :notifications_as_notifiee, :class_name=> 'Notification', :foreign_key => 'notifiee_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  auto_html_for :video_link do
    html_escape
    image
    youtube(:width => 450, :height => 300, :autoplay => false)
    vimeo(:width => 450, :height => 300, :autoplay => false)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end

  scope :non_validated, lambda {where(:is_validated => false)}
  scope :validated, lambda {where(:is_validated => true)}

  def full_name
  	"#{first_name} #{last_name}"
  end

  def is_meta
  	#email == "metanc@gmail.com"
    email == "destenygirl@hotmail.com"
  end
end
