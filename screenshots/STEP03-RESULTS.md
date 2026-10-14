# Kết quả bước 3

Đã chạy ba demo với môi trường `.venv` của project.

| Demo | Kết quả | Ảnh |
|---|---|---|
| Authentication, token mặc định | Client exit 0; liệt kê get_weather; Hanoi: 29°C, trời mưa | 03a-auth-ok.png |
| Authentication, wrong-token | Client exit 1; không liệt kê tool; HTTP 401 Unauthorized | 03a-auth-fail.png |
| Tool Registry | Tìm thấy 2 weather tools; chọn get_weather_v2 v2.0.0; nhận JSON | 03b-registry.png |
| Versioning | Metadata v2.0.0, deprecated get_weather; v1 trả chuỗi, v2 trả JSON và forecast | 03c-versioning.png |

Auth server đã được dừng; không còn listener cổng 8000 sau kiểm tra.

SDK MCP 2.3.0 trả HTTP 401 khi token không hợp lệ, khác mã 403 trong mô tả đề. Server vẫn từ chối truy cập đúng yêu cầu.

Các ảnh là screenshot trang hiển thị output thực tế của tiến trình, không phải ảnh terminal IDE. File output gốc nằm trong `logs/*.txt`; trang hiển thị trong `logs/*.html`. Nếu yêu cầu chấm bài bắt buộc ảnh terminal, cần chạy lại lệnh trong IDE và chụp terminal theo đề.

Registry demo chỉ kết nối weather-v2 qua stdio. Không gọi tool email hoặc database.
