.class public final Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string v1, "[Phone] "

    .line 13
    .line 14
    const-string v2, "[Tablet] "

    .line 15
    .line 16
    const-string v3, "[Wearable] "

    .line 17
    .line 18
    const-string v4, "[PC] "

    .line 19
    .line 20
    const-string v5, "[Accessory] "

    .line 21
    .line 22
    const-string v6, "[TV] "

    .line 23
    .line 24
    const-string v7, "[AV] "

    .line 25
    .line 26
    const-string v8, "[Signage] "

    .line 27
    .line 28
    const-string v9, "[Refrigerator] "

    .line 29
    .line 30
    const-string v10, "[Washer] "

    .line 31
    .line 32
    const-string v11, "[Dryer] "

    .line 33
    .line 34
    const-string v12, "[Floor A/C] "

    .line 35
    .line 36
    const-string v13, "[Room A/C] "

    .line 37
    .line 38
    const-string v14, "[System A/C] "

    .line 39
    .line 40
    const-string v15, "[Air Purifier] "

    .line 41
    .line 42
    const-string v16, "[Oven] "

    .line 43
    .line 44
    const-string v17, "[Range] "

    .line 45
    .line 46
    const-string v18, "[Robot Vacuum] "

    .line 47
    .line 48
    const-string v19, "[Smart Home] "

    .line 49
    .line 50
    const-string v20, "[Printer] "

    .line 51
    .line 52
    const-string v21, "[Headphone] "

    .line 53
    .line 54
    const-string v22, "[Speaker] "

    .line 55
    .line 56
    const-string v23, "[Monitor] "

    .line 57
    .line 58
    const-string v24, "[E-Board] "

    .line 59
    .line 60
    const-string v25, "[IoT] "

    .line 61
    .line 62
    const-string v26, "[Camera] "

    .line 63
    .line 64
    const-string v27, "[Camcorder] "

    .line 65
    .line 66
    const-string v28, "[Cooktop] "

    .line 67
    .line 68
    const-string v29, "[Dish Washer] "

    .line 69
    .line 70
    const-string v30, "[Microwave Oven] "

    .line 71
    .line 72
    const-string v31, "[Hood] "

    .line 73
    .line 74
    const-string v32, "[KimchiRef] "

    .line 75
    .line 76
    const-string v33, "[Watch] "

    .line 77
    .line 78
    const-string v34, "[Band] "

    .line 79
    .line 80
    const-string v35, "[Router] "

    .line 81
    .line 82
    const-string v36, "[BD] "

    .line 83
    .line 84
    const-string v37, "[Tag] "

    .line 85
    .line 86
    const-string v38, "[Car] "

    .line 87
    .line 88
    const-string v39, "[Airdresser] "

    .line 89
    .line 90
    const-string v40, "[AI Speaker] "

    .line 91
    .line 92
    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
