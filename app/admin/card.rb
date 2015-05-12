ActiveAdmin.register Card do
  permit_params :name, :release_set, :color, :image,:price

  index do
    selectable_column
    id_column
    column :name
    column :release_set
    column :color
    column :image
    column :price
    actions
  end

  filter :name
  filter :release_set
  filter :color
  filter :price

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :release_set
      f.input(
        :color,
        as: :select,
        include_blank: false,
        collection: Card::COLORS
        )
      f.input :image
      f.input :price
    end
    f.actions
  end

end
