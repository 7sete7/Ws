import React, { useState } from 'react'
import useField from '../general/useField.coffee'
import useUser from '../user/index.coffee'

useLogin = () ->
    usernameField = useField ''
    passField = useField ''
    [error, setError] = useState {}

    { login } = useUser()

    doLogin = () ->
        setError {}
        hasError = false
        if !usernameField.value.length
            setError (e) -> Object.assign e, { username: 'Preencha o nome de usuário' }
            hasError = true
        if !passField.value.length
            setError (e) -> Object.assign e, { password: 'Preencha a senha' }
            hasError = true

        return if hasError
        login usernameField.value, passField.value
            .then ({ success, reason }) ->
                unless success
                    setError reason
            .catch (e) -> setError e.message
    
    helperText = (field) -> <span>{error[field]}</span>

    return { usernameField: usernameField, passField: passField, doLogin: doLogin, error: error, helperText: helperText }

export default useLogin
        