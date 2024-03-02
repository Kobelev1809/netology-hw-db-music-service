
-- Удаляем все таблицы
DROP TABLE IF EXISTS departments, employees, bosses; 

-- Создаём таблицу отделов:
CREATE TABLE IF NOT EXISTS Departments(
	department_id SERIAL PRIMARY KEY,
	department_name VARCHAR(100) NOT NULL
);

-- Создаём таблицу сотрудников:
CREATE TABLE IF NOT EXISTS Employees(
	employee_id SERIAL PRIMARY KEY,
	employee_name VARCHAR(50) NOT NULL,
	dapartment_id INTEGER NOT NULL REFERENCES Departments
);

-- Создаем таблицу начальников отделов:
CREATE TABLE IF NOT EXISTS Bosses(
	bosses_id SERIAL PRIMARY KEY,
	employee_id INTEGER NOT NULL REFERENCES Employees,
	department_id INTEGER UNIQUE NOT NULL REFERENCES Departments
);