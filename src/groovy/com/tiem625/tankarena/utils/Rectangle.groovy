package com.tiem625.tankarena.utils

/**
 * Created by anatolij on 12/02/17.
 */
class Rectangle {

  public float[] data

  public Rectangle() {
    data = new float[4]
    Arrays.fill(data, 0.0f)
  }

  public Rectangle(float a1, float b1, float a2, float b2) {
    data = new float[4]
    data[0] = a1; data[1] = b1; data[2] = a2; data[3] = b2;
  }


}
