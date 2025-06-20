FROM python:3-slim

# Establece el directorio de trabajo
WORKDIR /programas/api-students

# Instala Flask y flask_cors
RUN pip3 install flask flask_cors

# Copia todos los archivos al contenedor
COPY . .

# Ejecuta db.py (esto puede ser opcional si solo inicializa una vez)
RUN python3 db.py

# Comando por defecto para correr la app
CMD [ "python3", "./app.py" ]
