# ComputerIndy — ระบบเว็บไซต์แจ้งซ่อมคอมพิวเตอร์

ระบบเว็บไซต์สำหรับร้านซ่อมคอมพิวเตอร์ **กรณีศึกษา: ร้านคอมพิวเตอร์อินดี้ จ.ตาก**
ใช้สำหรับรับแจ้งซ่อม, ติดตามสถานะการซ่อม, จัดการสต็อกสินค้า และจัดการสมาชิก

> เป็น Project ระดับ ปวส. พัฒนาด้วย ASP.NET Web Forms (VB.NET)

---

## ✨ ฟีเจอร์หลัก

- 👥 **ระบบผู้ใช้ 3 ระดับ** — `admin` / `employee` (ช่างซ่อม) / `member` (ลูกค้า)
- 🔧 **แจ้งซ่อม / ติดตามสถานะ** — บันทึกอุปกรณ์ที่นำมาซ่อม พร้อมรายละเอียด ช่างผู้รับผิดชอบ ราคาประเมิน และสถานะการซ่อม
- 📦 **จัดการสต็อกสินค้า** — เก็บข้อมูลสินค้า ราคาขาย ต้นทุน และคำนวณกำไร (Margin)
- 📝 **สมัครสมาชิก / เข้าสู่ระบบ**
- ✉️ **กล่องข้อความติดต่อเรา / ข้อเสนอแนะ** พร้อมให้คะแนน
- 📊 **ออกรายงาน** ด้วย Crystal Reports และ Microsoft ReportViewer (`Report1.rdlc`)

---

## 🛠️ เทคโนโลยีที่ใช้

| ส่วน | เทคโนโลยี |
|------|-----------|
| ภาษา | VB.NET |
| Framework | ASP.NET Web Forms (.NET Framework 4.7.2) |
| ฐานข้อมูล | SQL Server LocalDB (`Database1.mdf`) |
| Data Access | LINQ to SQL (`DataClasses1.dbml`) |
| รายงาน | Crystal Reports + Microsoft ReportViewer |
| IDE | Visual Studio |

---

## 📁 โครงสร้างโปรเจกต์

```
ComputerIndy/
├── ComputerIndy.sln          # Solution
├── ComputerIndy.vbproj
├── Web.config                # connection string + handlers
│
├── Login.aspx                # เข้าสู่ระบบ
├── register.aspx             # สมัครสมาชิก
├── Main.aspx / Main.Master   # หน้าหลัก
├── Connectmain.aspx          # หน้าติดต่อ
├── seach2.aspx               # ค้นหา
│
├── AdminMasterPage.Master    # เลย์เอาต์สำหรับ admin
├── EmployeeMasterPage.Master # เลย์เอาต์สำหรับช่างซ่อม
├── MemberMasterPage.Master   # เลย์เอาต์สำหรับสมาชิก
│
├── DataClasses1.dbml         # LINQ to SQL model
├── Database1DataSet.xsd      # DataSet สำหรับรายงาน
└── Report1.rdlc              # รายงาน
```

> หมายเหตุ: หน้าย่อยภายในโฟลเดอร์ `!Admin/`, `!Employee/`, `!Member/`
> (เช่น `AdminList.aspx`, `Employeemain.aspx`, `membermain.aspx`) ถูกอ้างถึงในโค้ด
> Login แต่ไม่ได้รวมอยู่ในชุดไฟล์นี้

---

## 🗄️ โครงสร้างฐานข้อมูล (LINQ to SQL)

| ตาราง | หน้าที่ |
|-------|---------|
| `TableID` | ผู้ใช้งาน — username, password, ประเภทผู้ใช้, ชื่อ-สกุล, เบอร์โทร, ที่อยู่ |
| `Equipment` | อุปกรณ์ที่แจ้งซ่อม — รายละเอียด, ช่างซ่อม, ราคาซ่อม, สถานะซ่อม, วันที่รับ/เสร็จ ฯลฯ |
| `stock` | สินค้าในสต็อก — ชนิด, ชื่อ, รุ่น, จำนวน, ราคาขาย, ต้นทุน, กำไร |
| `สถานะ` | สถานะของอุปกรณ์ |
| `Mail` | ข้อความติดต่อ / ข้อเสนอแนะ + คะแนน |

---

## 🚀 วิธีรันโปรเจกต์

1. เปิด `ComputerIndy.sln` ด้วย **Visual Studio** (ที่มี ASP.NET Web Forms + .NET Framework 4.7.2)
2. ติดตั้ง package ที่จำเป็น (ดู `packages.config`) — Crystal Reports, ReportViewer ฯลฯ
3. ตรวจสอบ connection string ใน `Web.config` ให้ชี้ไปยังไฟล์ `Database1.mdf` (SQL Server LocalDB)
4. กด **F5** เพื่อรันบน IIS Express

### บัญชีและสิทธิ์การใช้งาน

ผู้ที่สมัครสมาชิกใหม่จะได้สิทธิ์เป็น `member` โดยอัตโนมัติ
ส่วนสิทธิ์ `admin` และ `employee` ต้องกำหนดค่าในคอลัมน์ `user_type` ที่ฐานข้อมูลโดยตรง

---

## ⚠️ หมายเหตุด้านความปลอดภัย

โค้ดนี้เป็นงานเชิงการศึกษา — รหัสผ่านถูกเก็บเป็น plain text และตรวจสอบ login
ด้วยการ query ตรง ไม่ควรนำไปใช้ใน production โดยไม่ปรับปรุง (hash password, ป้องกัน SQL injection, ใช้ ASP.NET authentication ที่เหมาะสม)
