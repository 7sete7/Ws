import React, { useState } from 'react'
import Input from './components/input.coffee'
import Canvas from './components/canvas.coffee'
import './styles/chat.css'

isWss = !/localhost/.test(process.env.SERVER_URL)
webSocket = new WebSocket("ws#{if isWss then 's' else ''}://#{process.env.SERVER_URL}/echo");

onSend = (text) -> (event) ->
    msg = 
        payload: text
        type: 'message'
        date: new Date().toISOString()

    webSocket.send JSON.stringify msg

onMessage = (fn) -> webSocket.onmessage = fn

export default () -> (
        <div>
            <section className="container">
                <Canvas onMessage={onMessage} />
                <Input onSend={onSend} />
            </section>
        </div>
    )
