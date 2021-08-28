module UsersHelper
  def gravator_for(user)
    gravator_id = Digest::MD5::hexdigest(user.email.downcase)
    gravator_url = "https://secure.gravatar.com/avatar/#{gravator_id}"
    image_tag(gravator_url, alt: user.name, class: "gravator")
  end
end
