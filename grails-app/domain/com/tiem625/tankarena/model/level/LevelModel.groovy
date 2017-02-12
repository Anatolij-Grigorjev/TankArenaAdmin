package com.tiem625.tankarena.model.level

import com.tiem625.tankarena.model.FileLoadedEntityModel
import com.tiem625.tankarena.utils.Vector3

class LevelModel extends FileLoadedEntityModel {

  String thumbnailPath
  String snapshotPath
  int totalEnemies
  List<String> enemyTypes
  Vector3 placementPoint
  Vector3 playerSpawnPoint
  String mapPrefabPath
  Map<String, Vector3> spawnerIdsToLoacations

  static constraints = {
  }
}
