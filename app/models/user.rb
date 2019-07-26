class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable

  geocoded_by :ip_lookup
  after_validation :geocode

  def ip_lookup
    ip = Thread.current[:request].remote_ip
    if ip == '127.0.0.1' || ip == '::1'
      '70.184.119.26'
    else
      ip
    end
  end
end
