# == Schema Information
#
# Table name: contacts
#
#  id                     :integer          not null, primary key
#  first_name             :string(255)
#  last_name              :string(255)
#  address                :text
#  city                   :string(255)
#  phone                  :integer
#  email                  :string(255)
#  state                  :string(255)
#  zip                    :integer
#  residence              :string(255)
#  price                  :integer
#  how_did_you_hear       :string(255)
#  imp_feature            :string(255)
#  represented_by_broaker :string(255)
#  broaker                :string(255)
#  comment                :text
#  created_at             :datetime
#  updated_at             :datetime
#

class Contact < ActiveRecord::Base
  after_create :send_contact_details_to_admin

	RESIDENCE = %w(Half-Floor2-Bedrooms Full-Floor3-Bedrooms Penthouse)
	HEAR = %w(Art+Auction Broker Corcoran-Website Edible-Magazine Gallery-Guide Google Live-in-Neighborhood New-York-Magazine New-York-Post New-York-Times Other Press Referral Signage Wall-Street-Journal)
  FEATURE = %w(Location Size LEED-Certification Amenities)

  def send_contact_details_to_admin
    ContactMailer.send_contact_mail(self).deliver
  end
end
