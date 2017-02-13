package com.tiem625.tankarena.model.tank



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TankEngineController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TankEngine.list(params), model:[tankEngineInstanceCount: TankEngine.count()]
    }

    def show(TankEngine tankEngineInstance) {
        respond tankEngineInstance
    }

    def create() {
        respond new TankEngine(params)
    }

    @Transactional
    def save(TankEngine tankEngineInstance) {
        if (tankEngineInstance == null) {
            notFound()
            return
        }

        if (tankEngineInstance.hasErrors()) {
            respond tankEngineInstance.errors, view:'create'
            return
        }

        tankEngineInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tankEngine.label', default: 'TankEngine'), tankEngineInstance.id])
                redirect tankEngineInstance
            }
            '*' { respond tankEngineInstance, [status: CREATED] }
        }
    }

    def edit(TankEngine tankEngineInstance) {
        respond tankEngineInstance
    }

    @Transactional
    def update(TankEngine tankEngineInstance) {
        if (tankEngineInstance == null) {
            notFound()
            return
        }

        if (tankEngineInstance.hasErrors()) {
            respond tankEngineInstance.errors, view:'edit'
            return
        }

        tankEngineInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TankEngine.label', default: 'TankEngine'), tankEngineInstance.id])
                redirect tankEngineInstance
            }
            '*'{ respond tankEngineInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TankEngine tankEngineInstance) {

        if (tankEngineInstance == null) {
            notFound()
            return
        }

        tankEngineInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TankEngine.label', default: 'TankEngine'), tankEngineInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tankEngine.label', default: 'TankEngine'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
