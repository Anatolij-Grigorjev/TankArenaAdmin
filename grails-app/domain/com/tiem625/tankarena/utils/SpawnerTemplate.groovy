package com.tiem625.tankarena.utils

import com.tiem625.tankarena.model.FileLoadedEntityModel

class SpawnerTemplate extends FileLoadedEntityModel{

  int simultaneous
  int spawnPool
  String targetTag
  Vector3 spreadMinXY
  Vector3 spreadMaxXY
  float gracePeriod
  Map<String, Float> goPathsToProbs

  static constraints = {



  }
}
