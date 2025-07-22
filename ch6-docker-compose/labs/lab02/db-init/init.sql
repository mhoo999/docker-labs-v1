-- Create database if not exists (PostgreSQL automatically creates the database from POSTGRES_DB env var)
-- Create table
CREATE TABLE IF NOT EXISTS greetings (
    id BIGSERIAL PRIMARY KEY,
    lang_code VARCHAR(10) UNIQUE NOT NULL,
    message TEXT NOT NULL
);

-- Insert sample data
INSERT INTO greetings (lang_code, message) VALUES 
    ('en', 'Hello World!'),
    ('ko', '안녕하세요!'),
    ('ja', 'こんにちは！'),
    ('es', '¡Hola Mundo!'),
    ('fr', 'Bonjour le monde!'),
    ('de', 'Hallo Welt!'),
    ('zh', '你好世界！')
ON CONFLICT (lang_code) DO NOTHING;