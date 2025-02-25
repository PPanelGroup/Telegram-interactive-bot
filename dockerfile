FROM python:3.10.14-alpine

# 设置环境变量，防止 Python 生成 .pyc 文件
ENV PYTHONUNBUFFERED=1

# 设置工作目录
WORKDIR /app

# 复制依赖文件并安装
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目文件
COPY . .

# 运行命令
CMD ["python", "-m", "interactive-bot"]
