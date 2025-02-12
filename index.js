const express = require('express');
const app = express();
const port = process.env.PORT || 4565;

// Эндпоинт для проверки живучести
app.get('/health', (req, res) => {
    res.status(200).json({
        status: 'ok',
        timestamp: new Date().toISOString(),
        version: 2
    });
});

// Основной маршрут
app.get('/', (req, res) => {
    res.send('Hello, World!');
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
