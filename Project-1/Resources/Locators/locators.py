#Homepage locators
loginLink="//a[@href='/account/login']"
NewUserCreateLink="(//a[text()='Create account'])[1]"
logoutBtn = "(//a[@class='header-top__link'])[1]"
searchButton= "//button[@aria-controls='SearchBar-header-top']"
searchBoxInput="(//input[@name='q'])[1]"
homeofficeLocator = "(//div[@class='header-menu__summary-container'])[6]"
deskLocator="(//a[@href='/collections/desk'])[2]"

# User create page
firstNmeBox="id=CreateCustomerForm-firstname"
lastNameBox="id=CreateCustomerForm-lastname"
emailBox="id=CreateCustomerForm-email"
passwordBox="id=CreateCustomerForm-password"
createButton="//*[@class='button button--cta button--solid']"

# Login Page
emailboxLogin="id=CustomerForm-email"
passwordBoxLogin="id=CustomerForm-password"
signinButton="(//button[@class='button button--cta button--solid'])[2]"
error = "//div[@class='errors']"

#search page locators
searchResultActual= "//p[@role='status']"
priceDropBox="//select[@id='SortBy-template--15826732220569__main']"
firstProductInSearchpage="(//a[@tabindex='-1'])[1]"
productsPriceLocator = "//span[@class='price-item price-item--sale']"
productsLinksLocator = "//li[@class='collection__grid-item']"

#product page locators
productTitle= "//h1"

# CategoryPage Locators
priceSekmesi = "(//span[@class='filter-group-summary__label'])[3]"
maxFiyatInput = "//input[@name='filter.v.price.lte']"








