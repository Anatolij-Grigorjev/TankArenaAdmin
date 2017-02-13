package com.tiem625.tankarena.model.tank

import com.tiem625.tankarena.utils.TransformState

class TankTracks extends TankPart {


  float coupling
  float turnSpeed
  float lowerIntegriy
  TransformState leftTrackPosition
  TransformState rightTrackPosition

  static constraints = {
  }
}
