package com.tiem625.tankarena.model.level



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LevelModelController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LevelModel.list(params), model:[levelModelInstanceCount: LevelModel.count()]
    }

    def show(LevelModel levelModelInstance) {
        respond levelModelInstance
    }

    def create() {
        respond new LevelModel(params)
    }

    @Transactional
    def save(LevelModel levelModelInstance) {
        if (levelModelInstance == null) {
            notFound()
            return
        }

        if (levelModelInstance.hasErrors()) {
            respond levelModelInstance.errors, view:'create'
            return
        }

        levelModelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'levelModel.label', default: 'LevelModel'), levelModelInstance.id])
                redirect levelModelInstance
            }
            '*' { respond levelModelInstance, [status: CREATED] }
        }
    }

    def edit(LevelModel levelModelInstance) {
        respond levelModelInstance
    }

    @Transactional
    def update(LevelModel levelModelInstance) {
        if (levelModelInstance == null) {
            notFound()
            return
        }

        if (levelModelInstance.hasErrors()) {
            respond levelModelInstance.errors, view:'edit'
            return
        }

        levelModelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LevelModel.label', default: 'LevelModel'), levelModelInstance.id])
                redirect levelModelInstance
            }
            '*'{ respond levelModelInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LevelModel levelModelInstance) {

        if (levelModelInstance == null) {
            notFound()
            return
        }

        levelModelInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LevelModel.label', default: 'LevelModel'), levelModelInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'levelModel.label', default: 'LevelModel'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
