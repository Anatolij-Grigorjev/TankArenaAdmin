package com.tiem625.tankarena.model.tank



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TankTracksController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TankTracks.list(params), model:[tankTracksInstanceCount: TankTracks.count()]
    }

    def show(TankTracks tankTracksInstance) {
        respond tankTracksInstance
    }

    def create() {
        respond new TankTracks(params)
    }

    @Transactional
    def save(TankTracks tankTracksInstance) {
        if (tankTracksInstance == null) {
            notFound()
            return
        }

        if (tankTracksInstance.hasErrors()) {
            respond tankTracksInstance.errors, view:'create'
            return
        }

        tankTracksInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tankTracks.label', default: 'TankTracks'), tankTracksInstance.id])
                redirect tankTracksInstance
            }
            '*' { respond tankTracksInstance, [status: CREATED] }
        }
    }

    def edit(TankTracks tankTracksInstance) {
        respond tankTracksInstance
    }

    @Transactional
    def update(TankTracks tankTracksInstance) {
        if (tankTracksInstance == null) {
            notFound()
            return
        }

        if (tankTracksInstance.hasErrors()) {
            respond tankTracksInstance.errors, view:'edit'
            return
        }

        tankTracksInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TankTracks.label', default: 'TankTracks'), tankTracksInstance.id])
                redirect tankTracksInstance
            }
            '*'{ respond tankTracksInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TankTracks tankTracksInstance) {

        if (tankTracksInstance == null) {
            notFound()
            return
        }

        tankTracksInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TankTracks.label', default: 'TankTracks'), tankTracksInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tankTracks.label', default: 'TankTracks'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
