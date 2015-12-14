class User < ActiveRecord::Base

  has_many :skills
  has_many :skill_names, :through => :skills

  has_many :interests
  has_many :interest_names, :through => :interests

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  auto_html_for :video_link do
    html_escape
    image
    youtube(:width => 350, :height => 200, :autoplay => false)
    vimeo(:width => 350, :height => 200, :autoplay => false)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end



  

  def full_name
  	"#{first_name} #{last_name}"
  end

  def is_meta
  	email == "metanc@gmail.com"
  end
end
