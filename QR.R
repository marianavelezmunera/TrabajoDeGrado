library(qrcode)
codigo<-qr_code("https://github.com/marianavelezmunera/TrabajoDeGrado/blob/main/Bibliograf%C3%ADa.pdf")
generate_svg(
  qrcode = codigo, filename = "codigo.svg"), show = FALSE
)