

RegisterCommand('record', function()
  TriggerEvent('notw4018:recordmenu')
end)

RegisterNetEvent('notw4018:recordmenu', function()
  TriggerEvent('nh-context:sendMenu', {
      {
          id = 1,
          header = "Recording Menu ♕",
          txt = ""
      },
  {
          id = 2,
          header = "Start Record",
          txt = "Select",
          params = {
              event = "notw:rec",
              args = {
                  number = 1,
                  id = 2
              }
          }
      },
      {
          id = 3,
          header = "Stop and Save",
          txt = "Select",
          params = {
              event = "notw:stop",
              args = {
                  number = 1,
                  id = 3
              }
          }
      },
      {
          id = 4,
          header = "Stop and Delete",
          txt = "Select",
          params = {
              event = "notw:delete",
              args = {
                  number = 1,
                  id = 4
              }
          }
      },
      {
          id = 5,
          header = "Open Rockstar Editor",
          txt = "Select",
          params = {
              event = "notw:rock",
              args = {
                  number = 1,
                  id = 5
              }
          }
      },
      {
        id = 6,
        header = "◀",
        txt = "",
        params = {
            event = "",
            args = {
                number = 1,
                id = 6
            }
        }
    },
  })
end)

AddEventHandler('notw:rec', function()
  StartRecording(1)
end)

AddEventHandler('notw:stop', function()
  StopRecordingAndSaveClip()
end)

AddEventHandler('notw:delete', function()
  StopRecordingAndDiscardClip()
end)

AddEventHandler('notw:rock', function()
  NetworkSessionLeaveSinglePlayer()
  ActivateRockstarEditor()  
end)