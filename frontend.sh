script_location=$(pwd)
LOG=/tmp/roboshop.log


yum install nginx -y &>>${LOG}

rm -rf /usr/share/nginx/html/* &>>${LOG}

curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip &>>${LOG}

cd /usr/share/nginx/html &>>${LOG}
unzip /tmp/frontend.zip &>>${LOG}
cp ${script_location}/files/nginx-roboshop.conf /etc/nginx/default.d/roboshop.conf &>>${LOG}

systemctl enable nginx &>>${LOG}
systemctl restart nginx &>>${LOG}


