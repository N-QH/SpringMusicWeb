# Sử dụng một image nền tảng (base image) có sẵn, ví dụ: openjdk
FROM openjdk:21-jdk-slim

# Thêm metadata cho image
LABEL LABEL url="https://github.com/N-QH/SpringMusicWeb.git"

# Thiết lập thư mục làm việc bên trong container
WORKDIR /app

# Sao chép file .jar của ứng dụng vào trong container.
# Tên file jar có thể khác, bạn cần kiểm tra lại trong thư mục target sau khi build.
COPY target/*.jar app.jar

# Mở cổng mà ứng dụng Spring Boot đang chạy
EXPOSE 9188

# Lệnh để chạy ứng dụng khi container được khởi động
ENTRYPOINT ["java", "-jar", "app.jar"]