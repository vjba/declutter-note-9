#!/bin/bash

packages=(
    com.android.dreams.basic
    com.android.hotwordenrollment.okgoogle
    com.android.internal.display.cutout.emulation.double
    com.android.internal.display.cutout.emulation.tall
    com.cnn.mobile.android.phone.edgepanel
    com.google.android.feedback
    com.google.android.googlequicksearchbox
    com.google.android.printservice.recommendation
    com.google.android.setupwizard
    com.google.android.tts
    com.google.android.youtube
    com.google.ar.core
    com.google.vr.vrcore
    com.microsoft.office.excel
    com.microsoft.office.powerpoint
    com.microsoft.office.word
    com.microsoft.skydrive
    com.samsung.android.app.advsounddetector
    com.samsung.android.app.appsedge
    com.samsung.android.app.clipboardedge
    com.samsung.android.app.ledcoverdream
    com.samsung.android.app.reminder
    com.samsung.android.app.sbrowseredge
    com.samsung.android.app.settings.bixby
    com.samsung.android.app.talkback
    com.samsung.android.app.taskedge
    com.samsung.android.bbc.bbcagent
    com.samsung.android.bixby.agent
    com.samsung.android.bixby.agent.dummy
    com.samsung.android.bixby.service
    com.samsung.android.bixby.wakeup
    com.samsung.android.bixbyvision.framework
    com.samsung.android.kidsinstaller
    com.samsung.android.knox.analytics.uploader
    com.samsung.android.mdx
    com.samsung.android.mdx.quickboard
    com.samsung.android.samsungpass
    com.samsung.android.samsungpassautofill
    com.samsung.android.service.peoplestripe
    com.samsung.android.smartswitchassistant
    com.samsung.android.svoiceime
    com.samsung.android.widgetapp.yahooedge.finance
    com.samsung.android.widgetapp.yahooedge.sport
    com.samsung.systemui.bixby2
    com.sec.android.cover.ledcover
    com.sec.android.mimage.gear360editor
)
for package in "${packages[@]}"; do
    echo "Uninstalling ${package}:"
    adb shell pm uninstall --user 0 "${package}"
done

echo 'Done!'
