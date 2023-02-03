module ApplicationHelper
  def static_asset_url(path)
    URI(request.url).tap do |u|
      u.path = File.join("/", Pathname.new(path).relative_path_from(Rails.root.join("public")))
    end.to_s
  end

  def public_asset_paths
    Dir.glob(Rails.root.join("public/**/*.*"))
  end

  def public_asset_urls
    Enumerator.new do |y|
      public_asset_paths.each do |path|
        y << static_asset_url(path)
      end
    end
  end
end
