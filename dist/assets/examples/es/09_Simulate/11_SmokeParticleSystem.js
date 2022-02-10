/*
 * @name Partículas de humo
 * @description Un puerto del ejemplo de sistema de partículas de humo de Dan Shiffman, originalmente para Processing. Crea partículas de humo :p
 */

// textura de la partícula
let particle_texture = null;

// variabla para almacenar el sistema de partículas
let ps = null;

function preload() {
    particle_texture = loadImage("assets/particle_texture.png");
}

function setup() {

    //definir el tamaño del lienzo
    createCanvas(640, 360);

    //inicializar nuestro sistema de partículas
    ps = new ParticleSystem(0,createVector(width / 2, height - 60),particle_texture);
}

function draw() {
    background(0);

    let dx = map(mouseX, 0, width, -0.2, 0.2);
    let wind = createVector(dx, 0);

    ps.applyForce(wind);
    ps.run();
    for (let i = 0; i < 2; i++) {
        ps.addParticle();
    }

    // Dibujar una flecha representando la fuerza del viento
    drawVector(wind, createVector(width / 2, 50, 0), 500);
}

/**
 *  Esta función dibuja una flecha mostrando la dirección en que nuestro "viento" está soplando.
 */
function drawVector(v, loc, scale){
    push();
    let arrowsize = 4;
    translate(loc.x, loc.y);
    stroke(255);
    rotate(v.heading());

    let len = v.mag() * scale;
    line(0, 0, len, 0);
    line(len, 0, len-arrowsize, +arrowsize / 2);
    line(len, 0, len-arrowsize, -arrowsize / 2);
    pop();
}
//========= SÍSTEMA DE PARTICULAS ===========

/**
 * Una clase básica de sistema de partículas
 * @param num el número de partículas
 * @param v el origen del sistema de partículas
 * @param img_ una textura para cada partícual en el sistema
 * @constructor
 */
let ParticleSystem = function(num, v, img_) {

    this.particles = [];
    this.origin = v.copy(); // nos aseguramos de copiar el valor del vector en caso que accidentalmente cambiemos el valor del original por accidente
    this.img = img_
    for(let i = 0; i < num; ++i){
        this.particles.push(new Particle(this.origin, this.img));
    }
};

/**
 * Esta función corre el ejemplo entero del sistema de partículas
 */
ParticleSystem.prototype.run = function() {

    // guardar en una variable el largo del arreglo sobre el que vamos a iterar
    // Puedes encontrar este largo con la sintaxis <variable>.length dentro un bucle for
    // pero lo guardamos acá porque en caso contrario, estaríamos recalculando el largo en cada iteración del bucle for
    let len = this.particles.length;

    // iterar sobre todas las partículas y hacerlas correr con el método run()
    for (let i = len - 1; i >= 0; i--) {
        let particle = this.particles[i];
        particle.run();

        // si la partícula está muerta, la removemos.
        // los arreglos en javascript no poseen una función "remover", pero "splice" funciona.
        // le damos como parámetro un lugar dónde empezar, y luego especificamos cuántas casillas desde aquí son removidas.
        if (particle.isDead()) {
            this.particles.splice(i, 1);
        }
    }
}

/**
 * Método para añadir un vector fuerza a todas las partículas actualmente en el sistema
 * @param dir un p5.Vector que describe la dirección de la fuerza.
 */
ParticleSystem.prototype.applyForce = function(dir) {
    let len = this.particles.length;
    for(let i = 0; i < len; ++i){
        this.particles[i].applyForce(dir);
    }
}

/**
 * Agrega una nueva partícula en el origen del sistema y con la textura definida originalmente.
 */
ParticleSystem.prototype.addParticle = function() {
    this.particles.push(new Particle(this.origin, this.img));
}

//========= PARTÍCULA  ===========
/**
 *  Una clase simple de Particle, hace render de la partícula como una imagen
 */
let Particle = function (pos, img_) {
    this.loc = pos.copy();

    let vx = randomGaussian() * 0.3;
    let vy = randomGaussian() * 0.3 - 1.0;

    this.vel = createVector(vx, vy);
    this.acc = createVector();
    this.lifespan = 100.0;
    this.texture = img_;
}

/**
 *  Actualiza y muestra simultáneamente una partícula
 */
Particle.prototype.run = function() {
    this.update();
    this.render();
}

/**
 *  Una función para mostrar en pantalla una partícula
 */
Particle.prototype.render = function() {
    imageMode(CENTER);
    tint(255, this.lifespan);
    image(this.texture, this.loc.x, this.loc.y);
}

/**
 *  Un método para aplicar un vector fuerza a una partícula.
 */
Particle.prototype.applyForce = function(f) {
    this.acc.add(f);
}

/**
 *  Este método revisa si la partícula ha llegado al fin de su vida,
 *  si lo ha hecho, devuelve true, en otro caso devuelve false.
 */
Particle.prototype.isDead = function () {
    if (this.lifespan <= 0.0) {
        return true;
    } else {
        return false;
    }
}

/**
 *  Este método actualiza la posición de la partícula.
 */
Particle.prototype.update = function() {
    this.vel.add(this.acc);
    this.loc.add(this.vel);
    this.lifespan -= 2.5;
    this.acc.mult(0);
}
