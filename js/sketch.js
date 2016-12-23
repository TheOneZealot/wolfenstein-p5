var draw, level, player, render, renderScale, setup, update;

renderScale = 2;

level = void 0;

player = void 0;

setup = function() {
  createCanvas(320 * renderScale, 200 * renderScale);
  level = new Level([[1, 1, 1, 1, 1], [1, 0, 1, 0, 1], [1, 0, 0, 0, 1], [1, 0, 0, 0, 1], [1, 1, 1, 1, 1]]);
  return player = new Player(createVector(1.5, 1.5));
};

draw = function() {
  update(frameRate());
  return render(frameRate());
};

update = function(fr) {
  return player.update(fr);
};

render = function(fr) {
  scale(renderScale);
  background(51);
  return level.render(fr);
};
