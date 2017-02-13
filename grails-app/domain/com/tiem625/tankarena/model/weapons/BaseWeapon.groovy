package com.tiem625.tankarena.model.weapons

import com.tiem625.tankarena.model.ShopPurchaseableEntityModel
import com.tiem625.tankarena.utils.TransformState
import com.tiem625.tankarena.utils.enums.WeaponBehaviorTypes
import com.tiem625.tankarena.utils.enums.WeaponTypes

class BaseWeapon extends ShopPurchaseableEntityModel {

  Map<String, TransformState> onTurretPositions
  WeaponTypes weaponType
  float projectileWidth
  WeaponBehaviorTypes weaponBehaviorType
  float damage
  float reloadTime
  float rateOfFire
  float range
  String sprtesPath
  int clipSize
  String projectilePrefabPath
  String shotSoundPath
  String reloadSoundPath
  String weaponAnimationControllerPath

  static constraints = {
  }
}
