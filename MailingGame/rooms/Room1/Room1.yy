{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "Room1",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_723D0601","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_73B2A34B","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_18E3B587","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_31A8497F","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_522C8082","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_D9ABF22","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_2104CFE8","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_486D3DB","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_3534CFFC","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_53281C9B","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_72E87D31","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_8648A2C","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_F429677","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_5B2ECB19","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_2E14B4F9","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_43487B39","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_1B5A0535","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_7E829907","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_79F8937D","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_5E4DBC55","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_8ABCA16","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_3CA000EC","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_1412B9E1","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_563CD7FC","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_51D70BC9","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_DFA8C6","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_3C2B54E3","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_4443D242","path":"rooms/Room1/Room1.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Ground","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":0,"effectEnabled":false,"effectType":"_filter_distort","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_DistortScale","type":0,"value":"3",},
        {"name":"g_DistortAmount","type":0,"value":"3",},
        {"name":"g_DistortOffset","type":0,"value":"0",},
        {"name":"g_DistortOffset","type":0,"value":"0",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_distort_smoothnoise",},
      ],"spriteId":{"name":"spr_groundtemp","path":"sprites/spr_groundtemp/spr_groundtemp.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":240,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"truck_dust","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Truck","depth":200,"effectEnabled":true,"effectType":"_filter_outline","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1412B9E1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_truck","path":"objects/obj_truck/obj_truck.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":512.0,"y":240.0,},
      ],"layers":[],"properties":[
        {"name":"g_OutlineColour","type":1,"value":"#FFFFFFFF",},
        {"name":"g_OutlineRadius","type":0,"value":"3",},
        {"name":"g_OutlinePixelScale","type":0,"value":"1",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"sidewalk","depth":300,"effectEnabled":false,"effectType":"_filter_distort","gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_563CD7FC","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_sidewalkGenerator","path":"objects/obj_sidewalkGenerator/obj_sidewalkGenerator.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":224.0,},
      ],"layers":[],"properties":[
        {"name":"g_DistortScale","type":0,"value":"3",},
        {"name":"g_DistortAmount","type":0,"value":"3",},
        {"name":"g_DistortOffset","type":0,"value":"0",},
        {"name":"g_DistortOffset","type":0,"value":"0",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_distort_smoothnoise",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"dust","depth":400,"effectEnabled":false,"effectType":"none","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","depth":500,"effectEnabled":true,"effectType":"_filter_outline","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[
        {"name":"g_OutlineColour","type":1,"value":"#FFFFFFFF",},
        {"name":"g_OutlineRadius","type":0,"value":"3",},
        {"name":"g_OutlinePixelScale","type":0,"value":"1",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Collision","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_723D0601","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":512.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_73B2A34B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":576.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_18E3B587","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":640.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_31A8497F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":704.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_522C8082","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":768.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_D9ABF22","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":832.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2104CFE8","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":896.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_486D3DB","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":960.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3534CFFC","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_53281C9B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1088.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_72E87D31","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1152.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_8648A2C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1216.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_F429677","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1280.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5B2ECB19","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1344.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2E14B4F9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":448.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_43487B39","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":384.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1B5A0535","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":320.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7E829907","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":256.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_79F8937D","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":192.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5E4DBC55","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":128.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_8ABCA16","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":64.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3CA000EC","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":224.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_51D70BC9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_cameraManager","path":"objects/obj_cameraManager/obj_cameraManager.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-64.0,"y":96.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"trees","depth":700,"effectEnabled":true,"effectType":"_filter_outline","gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_DFA8C6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_treeGen2","path":"objects/obj_treeGen2/obj_treeGen2.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":240.0,"y":256.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3C2B54E3","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_treeGen2","path":"objects/obj_treeGen2/obj_treeGen2.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":352.0,"y":256.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4443D242","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_treeGen2","path":"objects/obj_treeGen2/obj_treeGen2.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":144.0,"y":256.0,},
      ],"layers":[],"properties":[
        {"name":"g_OutlineColour","type":1,"value":"#FF000000",},
        {"name":"g_OutlineRadius","type":0,"value":"3",},
        {"name":"g_OutlinePixelScale","type":0,"value":"1.3",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":0.0,"animationSpeedType":0,"colour":4294953637,"depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 256,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1366,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":384,"hspeed":-1,"hview":256,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":720,"wview":480,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": true,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}