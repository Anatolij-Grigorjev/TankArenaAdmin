package com.tiem625.tankarena.utils



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SpawnerTemplateController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SpawnerTemplate.list(params), model:[spawnerTemplateInstanceCount: SpawnerTemplate.count()]
    }

    def show(SpawnerTemplate spawnerTemplateInstance) {
        respond spawnerTemplateInstance
    }

    def create() {
        respond new SpawnerTemplate(params)
    }

    @Transactional
    def save(SpawnerTemplate spawnerTemplateInstance) {
        if (spawnerTemplateInstance == null) {
            notFound()
            return
        }

        if (spawnerTemplateInstance.hasErrors()) {
            respond spawnerTemplateInstance.errors, view:'create'
            return
        }

        spawnerTemplateInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'spawnerTemplate.label', default: 'SpawnerTemplate'), spawnerTemplateInstance.id])
                redirect spawnerTemplateInstance
            }
            '*' { respond spawnerTemplateInstance, [status: CREATED] }
        }
    }

    def edit(SpawnerTemplate spawnerTemplateInstance) {
        respond spawnerTemplateInstance
    }

    @Transactional
    def update(SpawnerTemplate spawnerTemplateInstance) {
        if (spawnerTemplateInstance == null) {
            notFound()
            return
        }

        if (spawnerTemplateInstance.hasErrors()) {
            respond spawnerTemplateInstance.errors, view:'edit'
            return
        }

        spawnerTemplateInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SpawnerTemplate.label', default: 'SpawnerTemplate'), spawnerTemplateInstance.id])
                redirect spawnerTemplateInstance
            }
            '*'{ respond spawnerTemplateInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SpawnerTemplate spawnerTemplateInstance) {

        if (spawnerTemplateInstance == null) {
            notFound()
            return
        }

        spawnerTemplateInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SpawnerTemplate.label', default: 'SpawnerTemplate'), spawnerTemplateInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'spawnerTemplate.label', default: 'SpawnerTemplate'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
