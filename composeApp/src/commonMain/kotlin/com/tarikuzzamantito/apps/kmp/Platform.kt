package com.tarikuzzamantito.apps.kmp

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform