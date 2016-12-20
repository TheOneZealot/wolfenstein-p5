var dir, draw, pln, pos, setup, worldMap;

worldMap = [[1, 1, 1, 1, 1], [1, 0, 0, 0, 1], [1, 0, 1, 0, 1], [1, 0, 0, 0, 1], [1, 1, 1, 1, 1]];

pos = void 0;

dir = void 0;

pln = void 0;

setup = function() {
  createCanvas(200, 100);
  pos = createVector(1, 1);
  dir = createVector(0, -1);
  return pln = createVector(0, 0.66);
};

draw = function() {
  return background(51);
};
