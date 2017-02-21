# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |t|
	Category.create(name: "categoria #{t}")

end

Product.create(title: 'prod1', category_id: Category.find_by(name: 'chocolates').id, price: 1100)
categoria = Category.find_by(name: 'chocolates')
categoria.products.build(title: 'prod1_build', price: 1150).save

Product.create(title: 'prod2', category_id: Category.find_by(name: 'liquidos').id, price: 1200)
categoria = Category.find_by(name: 'liquidos')
categoria.products.build(title: 'prod2_build', price: 1250).save

Product.create(title: 'prod3', category_id: Category.find_by(name: 'licores').id, price: 1300)
categoria = Category.find_by(name: 'licores')
categoria.products.build(title: 'prod3_build', price: 1350).save

d = Product.last
d.destroy

d = product.last
d.premium = true
d.save

d = Category.all
d.upcase!
d.save


