package com.tiem625.tankarena.model



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PrefabEntityModelController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PrefabEntityModel.list(params), model:[prefabEntityModelInstanceCount: PrefabEntityModel.count()]
    }

    def show(PrefabEntityModel prefabEntityModelInstance) {
        respond prefabEntityModelInstance
    }

    def create() {
        respond new PrefabEntityModel(params)
    }

    @Transactional
    def save(PrefabEntityModel prefabEntityModelInstance) {
        if (prefabEntityModelInstance == null) {
            notFound()
            return
        }

        if (prefabEntityModelInstance.hasErrors()) {
            respond prefabEntityModelInstance.errors, view:'create'
            return
        }

        prefabEntityModelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'prefabEntityModel.label', default: 'PrefabEntityModel'), prefabEntityModelInstance.id])
                redirect prefabEntityModelInstance
            }
            '*' { respond prefabEntityModelInstance, [status: CREATED] }
        }
    }

    def edit(PrefabEntityModel prefabEntityModelInstance) {
        respond prefabEntityModelInstance
    }

    @Transactional
    def update(PrefabEntityModel prefabEntityModelInstance) {
        if (prefabEntityModelInstance == null) {
            notFound()
            return
        }

        if (prefabEntityModelInstance.hasErrors()) {
            respond prefabEntityModelInstance.errors, view:'edit'
            return
        }

        prefabEntityModelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PrefabEntityModel.label', default: 'PrefabEntityModel'), prefabEntityModelInstance.id])
                redirect prefabEntityModelInstance
            }
            '*'{ respond prefabEntityModelInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PrefabEntityModel prefabEntityModelInstance) {

        if (prefabEntityModelInstance == null) {
            notFound()
            return
        }

        prefabEntityModelInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PrefabEntityModel.label', default: 'PrefabEntityModel'), prefabEntityModelInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'prefabEntityModel.label', default: 'PrefabEntityModel'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
