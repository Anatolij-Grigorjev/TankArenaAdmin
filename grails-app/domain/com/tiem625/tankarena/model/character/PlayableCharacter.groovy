package com.tiem625.tankarena.model.character

import com.tiem625.tankarena.model.FileLoadedEntityModel

class PlayableCharacter extends FileLoadedEntityModel {

  String avatarPath
  String backgroundPath
  String characterModelPath
  float startingHealth
  float startingCash
  String startingTankCode


  static constraints = {
  }
}
