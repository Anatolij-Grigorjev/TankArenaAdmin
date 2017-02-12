package com.tiem625.tankarena.utils

import com.tiem625.tankarena.model.FileLoadedEntityModel

class SpawnerTemplate extends FileLoadedEntityModel{

  int simultaneous
  int spawnPool
  String targetTag
  float[] spreadMinXY = float[3]
  float[] spreadMaxXY = float[3]
  float gracePeriod
  Map<String, Float> goPathsToProbs

  static constraints = {



  }
}
