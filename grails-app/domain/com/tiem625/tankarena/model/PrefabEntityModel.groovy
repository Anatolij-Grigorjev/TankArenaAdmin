package com.tiem625.tankarena.model

class PrefabEntityModel extends FileLoadedEntityModel {

  String entityPrefabPath

  static constraints = {
    entityPrefabPath nullable: false
  }
}
