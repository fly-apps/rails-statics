module ApplicationHelper
  def static_asset_url(path)
    URI(request.url).tap do |u|
      u.path = File.join("/", Pathname.new(path).relative_path_from(Rails.root.join("public")))
    end.to_s
  end
end
