package com.tiem625.tankarena.utils.enums

/**
 * Created by anatolij on 13/02/17.
 */
enum WeaponBehaviorTypes {

  HEAVY_PROJECTILE_AT_TARGET,
  LIGHT_PROJECTILE_AT_TARGET,
  LIGHT_PROJECTILE_AT_TARGET_CONTINUOUS

  private String code

  private WeaponBehaviorTypes() {
    this.code = this.name().toLowerCase()
  }

}