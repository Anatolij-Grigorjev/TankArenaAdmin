package com.tiem625.tankarena.model.tank



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TankChassisController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TankChassis.list(params), model:[tankChassisInstanceCount: TankChassis.count()]
    }

    def show(TankChassis tankChassisInstance) {
        respond tankChassisInstance
    }

    def create() {
        respond new TankChassis(params)
    }

    @Transactional
    def save(TankChassis tankChassisInstance) {
        if (tankChassisInstance == null) {
            notFound()
            return
        }

        if (tankChassisInstance.hasErrors()) {
            respond tankChassisInstance.errors, view:'create'
            return
        }

        tankChassisInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tankChassis.label', default: 'TankChassis'), tankChassisInstance.id])
                redirect tankChassisInstance
            }
            '*' { respond tankChassisInstance, [status: CREATED] }
        }
    }

    def edit(TankChassis tankChassisInstance) {
        respond tankChassisInstance
    }

    @Transactional
    def update(TankChassis tankChassisInstance) {
        if (tankChassisInstance == null) {
            notFound()
            return
        }

        if (tankChassisInstance.hasErrors()) {
            respond tankChassisInstance.errors, view:'edit'
            return
        }

        tankChassisInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TankChassis.label', default: 'TankChassis'), tankChassisInstance.id])
                redirect tankChassisInstance
            }
            '*'{ respond tankChassisInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TankChassis tankChassisInstance) {

        if (tankChassisInstance == null) {
            notFound()
            return
        }

        tankChassisInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TankChassis.label', default: 'TankChassis'), tankChassisInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tankChassis.label', default: 'TankChassis'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
