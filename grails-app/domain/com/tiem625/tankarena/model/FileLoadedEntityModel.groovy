package com.tiem625.tankarena.model

abstract class FileLoadedEntityModel {


  String id
  String name
  String entityKey
  String description

  static constraints = {
    id nullable: false
    name nullable: false
  }
}
