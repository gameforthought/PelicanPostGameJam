{
  "$GMRoom":"",
  "%Name":"post_office",
  "creationCodeFile":"rooms/post_office/RoomCreationCode.gml",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_618C593","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_5E1976DC","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_5F3FA618","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_13B519F2","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_349C223F","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_773005E1","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_79F710C0","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_142F1DC1","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_28BE2CA7","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_1B3EBDF8","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_7B4C5B69","path":"rooms/post_office/post_office.yy",},
    {"name":"inst_501DF5C4","path":"rooms/post_office/post_office.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMREffectLayer":"","%Name":"glow","depth":0,"effectEnabled":true,"effectType":"_effect_glow","gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"glow","properties":[
        {"name":"g_GlowRadius","type":0,"value":"40",},
        {"name":"g_GlowQuality","type":0,"value":"3",},
        {"name":"g_GlowIntensity","type":0,"value":"0.22",},
        {"name":"g_GlowGamma","type":0,"value":"0",},
        {"name":"g_GlowAlpha","type":0,"value":"1",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"grain","depth":100,"effectEnabled":true,"effectType":"_filter_whitenoise","gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"grain","properties":[
        {"name":"g_WhiteNoiseIntensity","type":0,"value":"0.075",},
        {"name":"g_WhiteNoiseAnimation","type":0,"value":"0.025",},
        {"name":"g_WhiteNoiseTexture","type":2,"value":"_filter_whitenoise_noise",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMREffectLayer":"","%Name":"color_adj","depth":200,"effectEnabled":true,"effectType":"_filter_colour_balance","gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"color_adj","properties":[
        {"name":"g_ColourBalanceShadows","type":0,"value":"-0.05",},
        {"name":"g_ColourBalanceShadows","type":0,"value":"0.1",},
        {"name":"g_ColourBalanceShadows","type":0,"value":"0.05",},
        {"name":"g_ColourBalanceMidtones","type":0,"value":"0",},
        {"name":"g_ColourBalanceMidtones","type":0,"value":"0",},
        {"name":"g_ColourBalanceMidtones","type":0,"value":"0",},
        {"name":"g_ColourBalanceHighlights","type":0,"value":"0",},
        {"name":"g_ColourBalanceHighlights","type":0,"value":"0.02",},
        {"name":"g_ColourBalanceHighlights","type":0,"value":"0",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRAssetLayer":"","%Name":"click","assets":[],"depth":300,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"click","properties":[],"resourceType":"GMRAssetLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"positional_gui","depth":400,"effectEnabled":true,"effectType":"_filter_outline","gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"positional_gui","properties":[
        {"name":"g_OutlineColour","type":1,"value":"#FF000000",},
        {"name":"g_OutlineRadius","type":0,"value":"2.5",},
        {"name":"g_OutlinePixelScale","type":0,"value":"2",},
      ],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"door","depth":500,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"","%Name":"inst_28BE2CA7","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_28BE2CA7","objectId":{"name":"obj_post_office_door","path":"objects/obj_post_office_door/obj_post_office_door.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":441.0,"y":142.0,},
      ],"layers":[],"name":"door","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRAssetLayer":"","%Name":"foreground","assets":[
        {"$GMRSpriteGraphic":"","%Name":"graphic_5FBCE945","animationSpeed":0.0,"colour":4294967295,"frozen":false,"headPosition":2.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_5FBCE945","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"spr_post_office_interior","path":"sprites/spr_post_office_interior/spr_post_office_interior.yy",},"x":16.0,"y":224.0,},
        {"$GMRSpriteGraphic":"","%Name":"graphic_5DD764B8","animationSpeed":1.0,"colour":4278190080,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_5DD764B8","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":7.5,"scaleY":1.0,"spriteId":{"name":"spr_house_black","path":"sprites/spr_house_black/spr_house_black.yy",},"x":0.0,"y":224.0,},
        {"$GMRSpriteGraphic":"","%Name":"graphic_5364C317","animationSpeed":1.0,"colour":4278190080,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_5364C317","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":0.296875,"scaleY":2.5,"spriteId":{"name":"spr_house_black","path":"sprites/spr_house_black/spr_house_black.yy",},"x":461.0,"y":64.0,},
        {"$GMRSpriteGraphic":"","%Name":"graphic_138A085A","animationSpeed":1.0,"colour":4278190080,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_138A085A","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":0.296875,"scaleY":2.5,"spriteId":{"name":"spr_house_black","path":"sprites/spr_house_black/spr_house_black.yy",},"x":0.0,"y":64.0,},
      ],"depth":600,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"foreground","properties":[],"resourceType":"GMRAssetLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"dust","depth":700,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"dust","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"player","depth":800,"effectEnabled":true,"effectType":"_filter_outline","gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"","%Name":"inst_618C593","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_618C593","objectId":{"name":"obj_distortShader","path":"objects/obj_distortShader/obj_distortShader.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
        {"$GMRInstance":"","%Name":"inst_5E1976DC","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":true,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_5E1976DC","objectId":{"name":"obj_cameraManager","path":"objects/obj_cameraManager/obj_cameraManager.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":16.0,"y":0.0,},
        {"$GMRInstance":"","%Name":"inst_5F3FA618","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_5F3FA618","objectId":{"name":"obj_colliderbox","path":"objects/obj_colliderbox/obj_colliderbox.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":240.0,"y":224.0,},
        {"$GMRInstance":"","%Name":"inst_13B519F2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_13B519F2","objectId":{"name":"obj_playerChar","path":"objects/obj_playerChar/obj_playerChar.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":176.0,"y":224.0,},
        {"$GMRInstance":"","%Name":"inst_349C223F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_349C223F","objectId":{"name":"obj_room_transition","path":"objects/obj_room_transition/obj_room_transition.yy",},"properties":[
            {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_room_transition","path":"objects/obj_room_transition/obj_room_transition.yy",},"propertyId":{"name":"player","path":"objects/obj_room_transition/obj_room_transition.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"True",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":0.0,},
        {"$GMRInstance":"","%Name":"inst_773005E1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":true,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_773005E1","objectId":{"name":"obj_gameStarter","path":"objects/obj_gameStarter/obj_gameStarter.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":112.0,"y":0.0,},
        {"$GMRInstance":"","%Name":"inst_79F710C0","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_79F710C0","objectId":{"name":"obj_night","path":"objects/obj_night/obj_night.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":128.0,"y":0.0,},
        {"$GMRInstance":"","%Name":"inst_142F1DC1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_142F1DC1","objectId":{"name":"obj_cameraManager","path":"objects/obj_cameraManager/obj_cameraManager.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":16.0,},
      ],"layers":[],"name":"player","properties":[
        {"name":"g_OutlineColour","type":1,"value":"#FFFFFFFF",},
        {"name":"g_OutlineRadius","type":0,"value":"2.5",},
        {"name":"g_OutlinePixelScale","type":0,"value":"2",},
      ],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRAssetLayer":"","%Name":"furniture","assets":[
        {"$GMRSpriteGraphic":"","%Name":"graphic_8D7192E","animationSpeed":0.0,"colour":4294967295,"frozen":false,"headPosition":1.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_8D7192E","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"spr_post_office_interior","path":"sprites/spr_post_office_interior/spr_post_office_interior.yy",},"x":16.0,"y":224.0,},
      ],"depth":900,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"furniture","properties":[],"resourceType":"GMRAssetLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"pierre","depth":1000,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"","%Name":"inst_1B3EBDF8","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_1B3EBDF8","objectId":{"name":"obj_post_office_clock","path":"objects/obj_post_office_clock/obj_post_office_clock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":416.0,"y":103.0,},
        {"$GMRInstance":"","%Name":"inst_7B4C5B69","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_7B4C5B69","objectId":{"name":"obj_pierre","path":"objects/obj_pierre/obj_pierre.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":64.0,"y":224.0,},
        {"$GMRInstance":"","%Name":"inst_501DF5C4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_501DF5C4","objectId":{"name":"obj_pierre_dialogue","path":"objects/obj_pierre_dialogue/obj_pierre_dialogue.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":160.0,},
      ],"layers":[],"name":"pierre","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRAssetLayer":"","%Name":"room_background","assets":[
        {"$GMRSpriteGraphic":"","%Name":"graphic_552DEC31","animationSpeed":0.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_552DEC31","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"spr_post_office_interior","path":"sprites/spr_post_office_interior/spr_post_office_interior.yy",},"x":16.0,"y":224.0,},
      ],"depth":1100,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"room_background","properties":[],"resourceType":"GMRAssetLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Background","depth":1200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Background","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"Background_nonInst","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":1300,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background_nonInst","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"post_office",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":256,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":480,
  },
  "sequenceId":null,
  "views":[
    {"hborder":32,"hport":512,"hspeed":-1,"hview":256,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":960,"wview":480,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":false,
    "enableViews":true,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}