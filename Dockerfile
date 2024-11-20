# Gunakan Python base image
FROM python:3.9-alpine

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin semua file dari direktori proyek ke dalam container
COPY . /app

# Tambahkan variabel lingkungan PORT
ENV PORT=8080

# Ekspos port 8080 untuk digunakan oleh Cloud Run
EXPOSE 8080

# Jalankan server HTTP Python pada port yang didefinisikan
CMD ["sh", "-c", "python -m http.server ${PORT}"]
