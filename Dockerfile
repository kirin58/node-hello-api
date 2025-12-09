# ใช้ Node.js เวอร์ชัน 18 บน Alpine Linux ซึ่งมีขนาดเล็ก
FROM node:18-alpine

# กำหนด working directory ภายใน container
WORKDIR /usr/src/app

# คัดลอกไฟล์ package.json และ package-lock.json ไปยัง working directory
COPY package*.json ./

# ติดตั้ง dependencies ที่จำเป็นสำหรับโปรเจค
RUN npm install --production

# คัดลอกไฟล์ทั้งหมดไปยัง working directory
COPY . .

# ทำการปล่อย port 8000 ออกมาให้ access ได้
EXPOSE 3000

# คำสั่งเริ่มต้นเมื่อรัน container
CMD ["node", "server.js"]