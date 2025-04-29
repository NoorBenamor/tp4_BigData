![docker4](https://github.com/user-attachments/assets/b49a0897-c53e-4e96-ac9a-18dc46cf514e)## تسجيل الدخول إلى Docker Hub 
---------
<pre><code>docker login</code></pre>
------------
![docker1](https://github.com/user-attachments/assets/9992bbba-f09b-4c25-8090-95ef8ddad305)

## بناء صورة Docker من ملف Dockerfile
----------
<pre><code>docker build -t tp4 .</code></pre>
------------
## إضافة وسم جديد للصورة لربطها بحسابك على Docker Hub 
--------
<pre><code>docker tag tp4 nour992/tp4:1</code></pre>
---------------
## رفع الصورة إلى Docker Hub
![docker4](https://github.com/user-attachments/assets/3e2906b4-db01-4d56-ba6d-95699d73321b)

-----------
<pre><code>docker push nour992/tp4:1</code></pre>
------------

-------------
## إنشاء شبكة Docker مخصصة 
------------
<pre><code>docker network create tp4_network</code></pre>
-------------
## تشغيل الحاويات وربطها بالشبكة
-----------
<pre><code>
docker run -d --name container1 --network tp4_network -p 8881:8888 nour992/tp4:1
docker run -d --name container2 --network tp4_network -p 8882:8888 nour992/tp4:1
docker run -d --name container3 --network tp4_network -p 8883:8888 nour992/tp4:1
</code></pre>
-------------
![docker6](https://github.com/user-attachments/assets/51e19151-aa6d-442f-81fe-23cccccef6d8)


------------
## الدخول إلى الحاوية container1
----------
docker exec -it container1 /bin/bash
------------

----------
## تحديث النظام وتثبيت أمر ping داخل الحاوية
-------------
<pre><code>apt update && apt install -y iputils-ping</code></pre>

------------

------------
## اختبار الاتصال بين الحاويتين
-----------

-------------
