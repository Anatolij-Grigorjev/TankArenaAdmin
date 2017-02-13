package com.tiem625.tankarena.utils.enums

/**
 * Created by anatolij on 13/02/17.
 */
enum WeaponTypes {

  LIGHT(0),
  HEAVY(1)

  private int typeId

  private WeaponTypes(int typeId) {
    this.typeId = typeId
  }

  int getTypeId() {
    return typeId
  }
}