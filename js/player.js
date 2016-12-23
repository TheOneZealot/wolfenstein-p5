var Player;

Player = (function() {
  function Player(pos, dir1) {
    this.pos = pos != null ? pos : createVector(0, 0);
    this.dir = dir1 != null ? dir1 : createVector(0, -1);
  }

  Player.prototype.update = function(fr) {
    if (keyIsDown(LEFT_ARROW)) {
      this.turn(-1);
    } else if (keyIsDown(RIGHT_ARROW)) {
      this.turn(1);
    }
    if (keyIsDown(UP_ARROW)) {
      return this.move(1);
    } else if (keyIsDown(DOWN_ARROW)) {
      return this.move(-1);
    }
  };

  Player.prototype.move = function(dir) {
    return this.pos.add(this.dir.copy().mult(dir * 0.02));
  };

  Player.prototype.turn = function(dir) {
    return this.dir.rotate(dir * PI / 32);
  };

  return Player;

})();
