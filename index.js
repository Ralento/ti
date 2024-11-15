const express = require('express');
const session = require('express-session');
const { Pool } = require('pg');
const path = require('path');

const app = express();
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'parque',
    password: 'rollo200726',
    port: 5432
});

// Configuración del motor de plantillas EJS
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Middleware para parsear datos JSON y URL-encoded
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
    secret: 'rollo7421',
    resave: false,
    saveUninitialized: true
}));

// Rutas

// Ruta de registro
app.get('/inicio', (req, res) => {
    res.render('login');
});

// Ruta para registrar un nuevo usuario
app.post('/registrar', async (req, res) => {
    const { usuario, correo, password, telefono } = req.body;

    const registrar = "INSERT INTO usuarios (usuario, contrasena, telefono, correo) VALUES ($1, $2, $3, $4)";
    const params = [usuario, password, telefono, correo];

    try {
        await pool.query(registrar, params);
        res.redirect('/login'); // Redirigir al inicio de sesión después de registrarse
    } catch (err) {
        console.error(err);
        res.status(500).send("Error al registrar.");
    }
});

// Ruta de inicio de sesión
app.get('/login', (req, res) => {
    res.render('login');
});

// Ruta para autenticar al usuario
app.post('/entrar', async (req, res) => {
    const { usuario, password } = req.body;

    const query = "SELECT * FROM usuarios WHERE usuario = $1 AND contrasena = $2";
    const result = await pool.query(query, [usuario, password]);

    if (result.rows.length > 0) {
        req.session.user = result.rows[0]; // Guardar información del usuario en la sesión
        res.redirect('/menu');
    } else {
        res.status(401).send("Usuario o contraseña incorrectos.");
    }
});

// Ruta del menú
app.get('/menu', (req, res) => {
    if (!req.session.user) {
        return res.redirect('/login');
    }
    res.render('menu');
});

// Ruta del calendario
app.get('/calendario', async (req, res) => {
    if (!req.session.user) {
        return res.redirect('/login');
    }

    // Obtener atracciones disponibles
    const atraccionesResult = await pool.query('SELECT * FROM atracciones WHERE disponible = TRUE');
    
    // Obtener reservaciones del usuario
    const reservacionesResult = await pool.query('SELECT r.fecha, a.nombre AS atraccion_nombre FROM reservaciones r JOIN atracciones a ON r.atraccion_id = a.id WHERE r.usuario_id = $1', [req.session.user.id]);

    res.render('calendario', {
        atracciones: atraccionesResult.rows,
        reservaciones: reservacionesResult.rows
    });
});

// Ruta para hacer una reservación
app.get('/reservar', async (req, res) => {
    if (!req.session.user) {
        return res.redirect('/login');
    }
    // Obtener atracciones disponibles
    const atraccionesResult = await pool.query('SELECT * FROM atracciones WHERE disponible = TRUE');
    
    res.render('reservar', { atracciones: atraccionesResult.rows });
});

app.post('/reservar', async (req, res) => {
    const { fecha, atraccion_id } = req.body;
    const usuario_id = req.session.user.id;

    const reservar = "INSERT INTO reservaciones (usuario_id, fecha, atraccion_id) VALUES ($1, $2, $3)";
    const params = [usuario_id, fecha, atraccion_id];

    try {
        await pool.query(reservar, params);
        res.redirect('/calendario'); // Redirigir al calendario después de hacer la reservación
    } catch (err) {
        console.error(err);
        res.status(500).send("Error al crear la reservación.");
    }
});

// Ruta para ver atracciones
app.get('/atracciones', (req, res) => {
    pool.query('SELECT * FROM atracciones', (err, result) => {
        if (err) {
            console.error(err);
            return res.status(500).send("Error al obtener atracciones.");
        }
        res.render('atracciones', { atracciones: result.rows });
    });
});

// Iniciar el servidor
app.listen(3001, () => {
    console.log('Servidor escuchando en http://localhost:3001');
});