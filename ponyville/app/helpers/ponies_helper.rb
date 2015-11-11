module PoniesHelper
  def pony_picture(pony)
    pony.picture if pony && pony.picture.present?
  end
end
