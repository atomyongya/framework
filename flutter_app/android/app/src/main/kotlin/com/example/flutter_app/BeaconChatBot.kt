package com.example.flutter_app

import android.app.Application
import com.helpscout.beacon.Beacon


class BeaconChatBot: Application() {
    private val beaconId = ""

    override fun onCreate() {
        super.onCreate()
        initBeacon()
    }

    private fun initBeacon() {
        Beacon.Builder()
            .withBeaconId(beaconId)
            .withLogsEnabled(true)
            .build()
    }
}