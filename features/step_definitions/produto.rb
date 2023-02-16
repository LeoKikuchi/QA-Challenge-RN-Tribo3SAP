Dado("Dado que esteja na tela inicial para compras") do
    @products.load
end

Quando('clico em Add to Cart no produto') do
    click_button "Add to cart"
    click_button "Add to cart"
    click_button "Add to cart"
end

Então('deve adicionar o produto no carrinho') do
    expect(@products).to have_css ".layer_cart"
    expect(@products.products.name.text).to have_content "Stylish Dress"
end

Dado("Dado que esteja na tela inicial para compras") do
    @products.load
end

Quando('clico em Add to Cart no produto') do
    click_button "Add to cart"
    click_button "Add to cart"
end

Então('deve adicionar o produto no carrinho') do
    expect(@products).to have_css ".layer_cart"
    expect(@products.products.name.text).to have_content "Beautiful Peacock Blue Cotton Linen Saree"
end

Dado("Dado que esteja na tela inicial para compras") do
    @products.load
end

Quando('clico em Add to Cart no produto') do
    click_button "Add to cart"
end

Então('deve adicionar o produto no carrinho') do
    expect(@products).to have_css ".layer_cart"
    expect(@products.products.name.text).to have_content "Men Tshirt"
end