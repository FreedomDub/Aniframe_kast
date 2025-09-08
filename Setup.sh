#!/bin/bash
echo "🚀 Настройка бота Aniframe..."

# Проверка установки Python
if ! command -v python &> /dev/null; then
    echo "❌ Python не установлен"
    pkg install python -y
fi

# Проверка установки pip
if ! command -v pip &> /dev/null; then
    echo "❌ pip не установлен"
    pkg install python -y
fi

# Установка зависимостей
echo "📦 Устанавливаем зависимости..."
pip install -r requirements.txt

# Создание конфигурационного файла
if [ ! -f ".env" ]; then
    echo "📝 Создаем файл конфигурации..."
    echo "BOT_TOKEN='ВАШ_ТОКЕН_БОТА'" > .env
    echo "ADMIN_CHAT_ID='ВАШ_TELEGRAM_ID'" >> .env
    echo "⚠️ Отредактируйте файл .env своими данными!"
fi

echo "✅ Настройка завершена!"
echo "📋 Чтобы запустить бота: python bot.py"
echo "⚙️  Чтобы редактировать конфиг: nano .env"
