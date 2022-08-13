CREATE TABLE Papa(
    id_padre INT,
    nombre VARCHAR(50),
    apellido_paterno VARCHAR(25),
    apellido_materno VARCHAR(25),
    celular INT,
    celular_emergencia INT,
    correo VARCHAR(25),
    contrasena VARCHAR(25),
    PRIMARY KEY (id_padre)
);

CREATE TABLE Clase(
    id_clase INT,
    tipo VARCHAR(15),
    salon VARCHAR(15),
    PRIMARY KEY (id_clase)
);

CREATE TABLE Maestro(
    id_maestro INT,
    nombre VARCHAR(50),
    apellido_paterno VARCHAR(25),
    apellido_materno VARCHAR(25),
    tarjeta_presentacion TEXT,
    grado VARCHAR(25),
    nivel_ibc VARCHAR(25),
    bautizo BOOLEAN,
    fecha_inicio DATE,
    edad INT,
    celular INT,
    nota TEXT,
    PRIMARY KEY (id_maestro)
);


CREATE TABLE Alumno(
id_alumno INT,
nombre VARCHAR(50),
apellido_paterno VARCHAR(25),
apellido_materno VARCHAR(25),
edad INT,
fecha_nacimiento DATE,
alergia VARCHAR(25),
nota TEXT,
id_clase INT,
id_padre INT,
PRIMARY KEY (id_alumno),
FOREIGN KEY (id_clase) REFERENCES Clase(id_clase),
FOREIGN KEY (id_padre) REFERENCES Padre(id_padre)
);

CREATE TABLE Relacion(
    id_alumno INT,
    id_maestro INT,
    id_clase INT,
    fecha DATE,
    FOREIGN KEY (id_alumno) REFERENCES Alumno(id_alumno),
    FOREIGN KEY (id_maestro) REFERENCES Maestro(id_maestro),
    FOREIGN KEY (id_clase) REFERENCES Clase(id_clase)
);

CREATE TABLE Evaluacion(
    id_evaluacion INT,
    id_alumno INT,
    conducta VARCHAR(25),
    nota TEXT,
    fecha DATE,
    PRIMARY KEY (id_evaluacion),
    FOREIGN KEY (id_alumno) REFERENCES Alumno(id_alumno)
);
