USE QuanLyCuaHangPC;
GO

-- 1. Thêm dữ liệu bảng Tài Khoản (Để nhân viên có cái đăng nhập)
-- Mật khẩu mặc định là '1'
INSERT INTO TaiKhoan (TenDangNhap, MatKhau, HoTen, QuyenHan) VALUES
('admin', '1', N'Quản Trị Viên', 'Admin'),
('nvbanhang', '1', N'Nguyễn Văn A', 'NhanVien'),
('nvkho', '1', N'Trần Thị B', 'NhanVien');
GO

-- 2. Thêm dữ liệu bảng Loại Sản Phẩm (Để có mã loại cho sản phẩm)
-- Vì MaLoai là tự tăng (Identity) nên không cần nhập, SQL tự điền 1, 2, 3...
INSERT INTO LoaiSanPham (TenLoai) VALUES
(N'Laptop Gaming'),      -- Mã sẽ là 1
(N'CPU - Vi xử lý'),     -- Mã sẽ là 2
(N'VGA - Card màn hình'),-- Mã sẽ là 3
(N'RAM - Bộ nhớ trong'), -- Mã sẽ là 4
(N'Màn hình máy tính');  -- Mã sẽ là 5
GO

-- 3. Thêm dữ liệu bảng Nhân Viên (Cấu trúc mới: Nhập tay Mã NV)
INSERT INTO NhanVien (MaNV, HoTen, NgaySinh, GioiTinh, SDT, DiaChi, Email, TenDangNhap) VALUES
('NV01', N'Nguyễn Văn A', '1999-01-01', N'Nam', '0901234567', N'123 Lê Lợi, TP.HCM', 'nva@email.com', 'nvbanhang'),
('NV02', N'Trần Thị B', '2000-05-15', N'Nữ', '0912345678', N'456 Nguyễn Trãi, TP.HCM', 'ttb@email.com', 'nvkho'),
('NV03', N'Lê Hoàng C', '1995-10-20', N'Nam', '0988888888', N'789 Cách Mạng Tháng 8', 'lhc@email.com', NULL); -- Nhân viên này chưa cấp tài khoản
GO

-- 4. Thêm dữ liệu bảng Khách Hàng (Cấu trúc mới: Nhập tay Mã KH)
INSERT INTO KhachHang (MaKH, HoTen, SDT, DiaChi, Email) VALUES
('KH01', N'Phạm Văn Mua', '0977777777', N'Hà Nội', 'khach1@gmail.com'),
('KH02', N'Lê Thị Khách', '0966666666', N'Đà Nẵng', 'khach2@gmail.com'),
('KH03', N'Nguyễn Văn Vip', '0955555555', N'Cần Thơ', 'vip@gmail.com');
GO

-- 5. Thêm dữ liệu bảng Sản Phẩm
-- Lưu ý: Cột MaLoai (số 1, 2, 3...) phải khớp với thứ tự bạn thêm ở bảng LoaiSanPham
INSERT INTO SanPham (MaSP, TenSP, MaLoai, DonGiaNhap, DonGiaBan, SoLuongTon, ThongSoKyThuat) VALUES
('SP01', N'Laptop Asus ROG Strix G15', 1, 20000000, 25500000, 10, N'Core i7 12700H, RTX 3060, RAM 16GB, SSD 512GB'),
('SP02', N'CPU Intel Core i9 13900K', 2, 12000000, 14500000, 50, N'24 Cores, 32 Threads, up to 5.8GHz'),
('SP03', N'VGA RTX 4090 Gaming OC', 3, 40000000, 48000000, 5, N'24GB VRAM GDDR6X, Fan tản nhiệt cực mạnh'),
('SP04', N'RAM Corsair Vengeance 32GB', 4, 2000000, 2500000, 100, N'DDR5, Bus 5600MHz, LED RGB'),
('SP05', N'Màn hình LG UltraGear 27"', 5, 8000000, 9500000, 20, N'2K, 144Hz, IPS, 1ms');
GO