package com.tiem625.tankarena.model.weapons



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BaseWeaponController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BaseWeapon.list(params), model:[baseWeaponInstanceCount: BaseWeapon.count()]
    }

    def show(BaseWeapon baseWeaponInstance) {
        respond baseWeaponInstance
    }

    def create() {
        respond new BaseWeapon(params)
    }

    @Transactional
    def save(BaseWeapon baseWeaponInstance) {
        if (baseWeaponInstance == null) {
            notFound()
            return
        }

        if (baseWeaponInstance.hasErrors()) {
            respond baseWeaponInstance.errors, view:'create'
            return
        }

        baseWeaponInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'baseWeapon.label', default: 'BaseWeapon'), baseWeaponInstance.id])
                redirect baseWeaponInstance
            }
            '*' { respond baseWeaponInstance, [status: CREATED] }
        }
    }

    def edit(BaseWeapon baseWeaponInstance) {
        respond baseWeaponInstance
    }

    @Transactional
    def update(BaseWeapon baseWeaponInstance) {
        if (baseWeaponInstance == null) {
            notFound()
            return
        }

        if (baseWeaponInstance.hasErrors()) {
            respond baseWeaponInstance.errors, view:'edit'
            return
        }

        baseWeaponInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BaseWeapon.label', default: 'BaseWeapon'), baseWeaponInstance.id])
                redirect baseWeaponInstance
            }
            '*'{ respond baseWeaponInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BaseWeapon baseWeaponInstance) {

        if (baseWeaponInstance == null) {
            notFound()
            return
        }

        baseWeaponInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BaseWeapon.label', default: 'BaseWeapon'), baseWeaponInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'baseWeapon.label', default: 'BaseWeapon'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
