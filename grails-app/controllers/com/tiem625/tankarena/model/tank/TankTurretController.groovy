package com.tiem625.tankarena.model.tank



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TankTurretController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TankTurret.list(params), model:[tankTurretInstanceCount: TankTurret.count()]
    }

    def show(TankTurret tankTurretInstance) {
        respond tankTurretInstance
    }

    def create() {
        respond new TankTurret(params)
    }

    @Transactional
    def save(TankTurret tankTurretInstance) {
        if (tankTurretInstance == null) {
            notFound()
            return
        }

        if (tankTurretInstance.hasErrors()) {
            respond tankTurretInstance.errors, view:'create'
            return
        }

        tankTurretInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tankTurret.label', default: 'TankTurret'), tankTurretInstance.id])
                redirect tankTurretInstance
            }
            '*' { respond tankTurretInstance, [status: CREATED] }
        }
    }

    def edit(TankTurret tankTurretInstance) {
        respond tankTurretInstance
    }

    @Transactional
    def update(TankTurret tankTurretInstance) {
        if (tankTurretInstance == null) {
            notFound()
            return
        }

        if (tankTurretInstance.hasErrors()) {
            respond tankTurretInstance.errors, view:'edit'
            return
        }

        tankTurretInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TankTurret.label', default: 'TankTurret'), tankTurretInstance.id])
                redirect tankTurretInstance
            }
            '*'{ respond tankTurretInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TankTurret tankTurretInstance) {

        if (tankTurretInstance == null) {
            notFound()
            return
        }

        tankTurretInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TankTurret.label', default: 'TankTurret'), tankTurretInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tankTurret.label', default: 'TankTurret'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
