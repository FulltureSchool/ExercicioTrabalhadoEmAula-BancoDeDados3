CREATE DATABASE alunos_fullture;
USE alunos_fullture;

-- create
CREATE TABLE Candidato (
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  sobrenome VARCHAR(50) NOT NULL,
  email VARCHAR(150) NOT NULL,
  telefone VARCHAR(20) NOT NULL  
);
CREATE TABLE Linguagens (
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  nivel INT NOT NULL,
  candidato_id INT NOT NULL,
  FOREIGN KEY (candidato_id) REFERENCES Candidato(id)
);
CREATE TABLE Tags (
  id INT PRIMARY KEY,
  titulo VARCHAR(50) NOT NULL,
  candidato_id INT NOT NULL,
  FOREIGN KEY (candidato_id) REFERENCES Candidato(id)
);
CREATE TABLE Escolaridade (
  id INT PRIMARY KEY,
  instituicao VARCHAR(100) NOT NULL,
  curso VARCHAR(150) NOT NULL,
  grau VARCHAR(150) NOT NULL,
  situacao VARCHAR(30) NOT NULL,
  conclusao VARCHAR(8) NOT NULL,
  candidato_id INT NOT NULL,
  FOREIGN KEY (candidato_id) REFERENCES Candidato(id)
);
CREATE TABLE Experiencias (
  id INT PRIMARY KEY,
  empresa VARCHAR(100) NOT NULL,
  cargo VARCHAR(100) NOT NULL,
  responsabilidades VARCHAR(250) NOT NULL,
  contrato VARCHAR(20) NOT NULL,
  inicio VARCHAR(8) NOT NULL,
  fim VARCHAR(8) NOT NULL,
  candidato_id INT NOT NULL,
  FOREIGN KEY (candidato_id) REFERENCES Candidato(id)
);