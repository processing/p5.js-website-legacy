/*
 * @name Commentaren en Statements
 * @description Statements zijn de bouwstenen waaruit programmas zijn gemaakt.
 * Een ";" (punt-comma) symbool is gebruikt om een statement te beëindigen. Dit
 * wordt de "statement terminator" genoemd. Commentaren worden gebruikt voor
 * notities die mensen wellicht helpen om de broncode van programma's beter te
 * begrijpen. Een commentaar begint met twee voorwaartse schuine streepjes
 * ("//"). (ported from
 * https://processing.org/examples/statementscomments.html)
 */
// De createCanvas() functie is een statement die instructies aan de computer
// geeft voor hoe groot het canvas moet zijn.  Een functie heeft nul of meer
// parameters.  Parameters zijn gegevens die worden doorgegeven om in de
// functie te gebruiken, en worden wellicht gebruikt om instructies aan de
// computer te geven.
function setup() {
   createCanvas(710, 400);
}

// De background() functie is een statement die instructies aan de computer
// geeft voor het vullen van de achtergrond van het canvas in een bepaalde kleur.
function draw() {
   background(204, 153, 0);
}

