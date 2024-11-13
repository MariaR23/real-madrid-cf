# De cero a Pro. 
# Especialización en Ciencia de datos
#


# 1.0 INSTALAR PAQUETES Y LIBRERIAS NECESARIAS
# Note - portfoliodown is ONLY available on GitHub (not CRAN)
install.packages("remotes")
remotes::install_github("business-science/portfoliodown")


library(portfoliodown)

# Crear el sitio web
unlink("statst2/my_first_web", recursive = TRUE)

portfoliodown::new_portfolio_site(
  "statst2/my_first_web",
  theme = "raditian"
)

# 3.0 Proyectar el Sitio web

portfoliodown::serve_site(
  .site_dir = "statst2/my_first_web"
) 

# 4.0 Editar tu página Web
#  Entrar al archivo (abrirlo con R) data\homepage.yml
#  Hacer los cambios respectivos

# 5.0 Editar las imágenes 
# Add static > img folder
# agregar la imagen que usted desea
# Actualizar el homepage.yml to point to the image from the path relative to the img folder.
# img\showcase\logo-business-science.png

# Si algún cambio no se hace efectivo, se recomienda detener el servidor.

blogdown::stop_server()

portfoliodown::serve_site(
  .site_dir = "statst2/my_first_web"
)

# 6.0 Editar tu web ----
# Realiza los cambios necesarios en homepage.yml 

------------------
# 7.0 PUBLISH ----
# Use usethis::use_github()
# Deploy to Netlify