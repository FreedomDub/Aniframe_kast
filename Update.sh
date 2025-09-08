#!/bin/bash
echo "🔄 Проверка обновлений..."

# Переходим в папку бота
cd ~/aniframe_bot

# Сохраняем текущие настройки
if [ -f ".env" ]; then
    cp .env .env_backup
fi

# Обновляем из GitHub
git pull origin main

# Восстанавливаем настройки
if [ -f ".env_backup" ]; then
    mv .env_backup .env
fi

# Устанавливаем обновленные зависимости
pip install -r requirements.txt

echo "✅ Обновление завершено!"
echo "🔄 Перезапускаем бота..."
python bot.py
