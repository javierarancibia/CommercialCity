class AddDetailsToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :secondary_number, :integer, default: 0
    add_column :profiles, :facebook_profile, :string, default: "@"
    add_column :profiles, :twitter_profile, :string, default: "@"
    add_column :profiles, :instagram_profile, :string, default: "@"
    add_column :profiles, :job_position, :string, default: "Sin especificar"
    add_column :profiles, :zone, :string, default: "Region Metropolitana"
  end
end
