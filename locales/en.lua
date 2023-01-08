local Translations = {
    error = {
        not_online = "This person is not online"
    },
    success = {
        podium_on = "You Turned On The Podium",
        podium_off = "You Turned Off The Podium",
    },
    label = {
        target_label = "Turn Microphone On/Off",
        label_icon = "fas fa-microphone",
    },
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})