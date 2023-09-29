void keyPressed() {
  if (key == 't' || key == 'T') { // toggle trail
    showTrail = !showTrail;
  } else if (key == 'r' || key == 'R') { // "reset"
    background(255, 255, 255);
  } else if (key == '1') { // red lines
  } else if (key == '2') { // green lines
  } else if (key == '3') { // blue lines
  } else if (key == '4') { // rainbow lines
  } else if (keyCode == UP) { // increase stroke weight
    weight++;
  } else if (keyCode == DOWN) { // decrease stroke weight
    weight--;
    if (weight <= 0)
      weight = 1;
  } else if (keyCode == LEFT) { // decrease speed/fps
    fps -= 5;
    if (fps <= 0)
      fps = 5;
    else
      frameRate(fps);
  } else if (keyCode == RIGHT) { //increase speed/fps
    fps += 5;
    frameRate(fps);
  } else {
    pause = !pause;
    if (pause)
      frameRate(1);
    else if (pause == false)
      frameRate(fps);
  }
}
