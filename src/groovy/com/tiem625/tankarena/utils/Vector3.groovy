package com.tiem625.tankarena.utils

/**
 * Created by anatolij on 12/02/17.
 */
class Vector3 {

  public float[] data

  public Vector3() {
    data = new float[3]
    Arrays.fill(data, 0.0f);
  }

  public Vector3(float x, float y, float z) {
    data = new float[3]
    data[0] = x; data[1] = y; data[2] = z;
  }

}
