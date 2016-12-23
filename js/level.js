var Level;

Level = (function() {
  function Level(data) {
    this.data = data;
    this.height = this.data.length;
    this.width = this.data[0].length;
    this.minimap = true;
  }

  Level.prototype.render = function(fr) {
    if (this.minimap) {
      return this.renderMinimap();
    }
  };

  Level.prototype.renderMinimap = function(x, y, scl) {
    var i, j, k, l, ref, ref1;
    if (x == null) {
      x = 0;
    }
    if (y == null) {
      y = 0;
    }
    if (scl == null) {
      scl = 10;
    }
    noStroke();
    fill(0);
    rect(x, y, this.width * scl, this.height * scl);
    fill(255);
    for (j = k = 0, ref = this.data.length - 1; 0 <= ref ? k <= ref : k >= ref; j = 0 <= ref ? ++k : --k) {
      for (i = l = 0, ref1 = this.data[j].length - 1; 0 <= ref1 ? l <= ref1 : l >= ref1; i = 0 <= ref1 ? ++l : --l) {
        if (this.data[j][i] > 0) {
          rect(i * scl + x, j * scl + y, scl, scl);
        }
      }
    }
    fill(255, 0, 0);
    ellipse(player.pos.x * scl, player.pos.y * scl, scl * 0.4, scl * 0.4);
    stroke(255, 0, 0);
    return line(player.pos.x * scl, player.pos.y * scl, player.dir.x * scl + player.pos.x * scl, player.dir.y * scl + player.pos.y * scl);
  };

  return Level;

})();
