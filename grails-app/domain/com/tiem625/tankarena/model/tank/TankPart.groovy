package com.tiem625.tankarena.model.tank

import com.tiem625.tankarena.model.ShopPurchaseableEntityModel
import com.tiem625.tankarena.utils.Rectangle
import com.tiem625.tankarena.utils.TransformState

abstract class TankPart extends ShopPurchaseableEntityModel {


  TransformState onTankPosition
  float mass
  String garageItemPath
  String spritesPath
  int activeSprites
  Rectangle collisionBox



  static constraints = {
  }
}
