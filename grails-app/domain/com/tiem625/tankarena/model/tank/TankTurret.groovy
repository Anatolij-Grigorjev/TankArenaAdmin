package com.tiem625.tankarena.model.tank

import com.tiem625.tankarena.utils.WeaponSlot

class TankTurret extends TankPart {

  List<WeaponSlot> lightWeaponSlots
  List<WeaponSlot> heavyWeaponSlots

  String weaponShopImagePath
  float spinSpeed
  String spinSoundPath


  static constraints = {
  }
}
