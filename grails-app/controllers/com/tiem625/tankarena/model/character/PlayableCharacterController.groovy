package com.tiem625.tankarena.model.character



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlayableCharacterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PlayableCharacter.list(params), model:[playableCharacterInstanceCount: PlayableCharacter.count()]
    }

    def show(PlayableCharacter playableCharacterInstance) {
        respond playableCharacterInstance
    }

    def create() {
        respond new PlayableCharacter(params)
    }

    @Transactional
    def save(PlayableCharacter playableCharacterInstance) {
        if (playableCharacterInstance == null) {
            notFound()
            return
        }

        if (playableCharacterInstance.hasErrors()) {
            respond playableCharacterInstance.errors, view:'create'
            return
        }

        playableCharacterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'playableCharacter.label', default: 'PlayableCharacter'), playableCharacterInstance.id])
                redirect playableCharacterInstance
            }
            '*' { respond playableCharacterInstance, [status: CREATED] }
        }
    }

    def edit(PlayableCharacter playableCharacterInstance) {
        respond playableCharacterInstance
    }

    @Transactional
    def update(PlayableCharacter playableCharacterInstance) {
        if (playableCharacterInstance == null) {
            notFound()
            return
        }

        if (playableCharacterInstance.hasErrors()) {
            respond playableCharacterInstance.errors, view:'edit'
            return
        }

        playableCharacterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PlayableCharacter.label', default: 'PlayableCharacter'), playableCharacterInstance.id])
                redirect playableCharacterInstance
            }
            '*'{ respond playableCharacterInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PlayableCharacter playableCharacterInstance) {

        if (playableCharacterInstance == null) {
            notFound()
            return
        }

        playableCharacterInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PlayableCharacter.label', default: 'PlayableCharacter'), playableCharacterInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'playableCharacter.label', default: 'PlayableCharacter'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
