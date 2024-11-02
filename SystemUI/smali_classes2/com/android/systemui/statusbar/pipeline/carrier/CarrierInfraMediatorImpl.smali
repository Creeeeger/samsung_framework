.class public final Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final carrierInfoUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;

.field public final commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

.field public final mobileDataUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;

.field public final roamingUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;

.field public final signalUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->signalUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->carrierInfoUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->mobileDataUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->roamingUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;

    .line 13
    .line 14
    const-string p2, "CarrierInfraMediator"

    .line 15
    .line 16
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string p2, "  countryISO: "

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 7
    .line 8
    iget-object v0, p2, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "  salesCode: "

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p2, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-boolean p2, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "  multiSims="

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, ", numSlot="

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    move v1, p2

    .line 57
    :goto_1
    if-ge v1, v0, :cond_3

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "  - SIM "

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, " -----"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->values()[Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    array-length v3, v2

    .line 86
    move v4, p2

    .line 87
    :goto_2
    const-string v5, "="

    .line 88
    .line 89
    const-string v6, "    "

    .line 90
    .line 91
    if-ge v4, v3, :cond_1

    .line 92
    .line 93
    aget-object v7, v2, v4

    .line 94
    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :try_start_0
    new-array v5, p2, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-virtual {p0, v7, v1, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    :catch_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v4, v4, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->values()[Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    array-length v3, v2

    .line 133
    move v4, p2

    .line 134
    :goto_3
    if-ge v4, v3, :cond_2

    .line 135
    .line 136
    aget-object v7, v2, v4

    .line 137
    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-array v8, p2, [Ljava/lang/Object;

    .line 157
    .line 158
    invoke-virtual {p0, v7, v1, v8}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v4, v4, 0x1

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    return-void
.end method

.method public final varargs get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, p3, p1

    .line 8
    .line 9
    const-string p3, ""

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 13
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance p0, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :pswitch_0
    iget-object p0, v1, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->overriddenIconBranding:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    .line 34
    .line 35
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    goto :goto_1

    .line 40
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "CarrierFeature_SystemUI_ConfigDefIndicatorAdditionalSystemIcon"

    .line 51
    .line 52
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, ","

    .line 57
    .line 58
    filled-new-array {p1}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x6

    .line 63
    invoke-static {p0, p1, v0, p2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    iget-object p0, v1, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->extraSystemIcons:Ljava/util/List;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->signalUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    const/4 p1, 0x4

    .line 80
    if-eqz p0, :cond_1

    .line 81
    .line 82
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string p3, "CarrierFeature_SystemUI_ConfigMaxRssiLevel"

    .line 87
    .line 88
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string p2, "CscFeature_SystemUI_ConfigMaxRssiLevel"

    .line 98
    .line 99
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    goto :goto_1

    .line 108
    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    const-string p1, "CarrierFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    .line 116
    .line 117
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    goto :goto_1

    .line 122
    :pswitch_5
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    :goto_1
    return-object p0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final varargs isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    aget v2, v2, v3

    .line 12
    .line 13
    const-string v3, "WATCHFACE"

    .line 14
    .line 15
    const-string v4, ""

    .line 16
    .line 17
    const-string v6, "TMK"

    .line 18
    .line 19
    const-string v7, "ASR"

    .line 20
    .line 21
    const-string v8, "AIO"

    .line 22
    .line 23
    const-string v9, "CHM"

    .line 24
    .line 25
    const-string v10, "CHC"

    .line 26
    .line 27
    const-string v11, "CHU"

    .line 28
    .line 29
    const-string v12, "NONE"

    .line 30
    .line 31
    const-string v13, "LGT"

    .line 32
    .line 33
    const-string v14, "KTT"

    .line 34
    .line 35
    const-string v15, "DCM"

    .line 36
    .line 37
    const-string v5, "ZVV"

    .line 38
    .line 39
    move-object/from16 p3, v12

    .line 40
    .line 41
    const-string v12, "ATT"

    .line 42
    .line 43
    move-object/from16 v16, v6

    .line 44
    .line 45
    const-string v6, "TMB"

    .line 46
    .line 47
    move-object/from16 v17, v7

    .line 48
    .line 49
    iget-object v7, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->roamingUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;

    .line 50
    .line 51
    move-object/from16 v18, v7

    .line 52
    .line 53
    iget-object v7, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->carrierInfoUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;

    .line 54
    .line 55
    move-object/from16 v19, v9

    .line 56
    .line 57
    iget-object v9, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->signalUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;

    .line 58
    .line 59
    move-object/from16 v20, v10

    .line 60
    .line 61
    iget-object v10, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->mobileDataUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 64
    .line 65
    move-object/from16 v21, v11

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    packed-switch v2, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v2, "CarrierFeature_Common_Support_Satellite"

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2, v11, v11}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0, v3, v11}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :pswitch_2
    iget-boolean v11, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->isVoiceCapable:Z

    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :pswitch_3
    iget-object v0, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const-string v2, "KDI"

    .line 106
    .line 107
    const-string v3, "RKT"

    .line 108
    .line 109
    const-string v4, "XJP"

    .line 110
    .line 111
    const-string v5, "SBM"

    .line 112
    .line 113
    filled-new-array {v2, v15, v3, v4, v5}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :pswitch_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v2, v3, v11}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :pswitch_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const-string v0, "TFN"

    .line 155
    .line 156
    const-string v2, "XAR"

    .line 157
    .line 158
    filled-new-array {v12, v8, v0, v2}, [Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v2, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 167
    .line 168
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    goto/16 :goto_5

    .line 177
    .line 178
    :pswitch_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    .line 186
    .line 187
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v1, "_OPEN"

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    goto/16 :goto_5

    .line 198
    .line 199
    :pswitch_7
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    .line 200
    .line 201
    const-string v1, "US"

    .line 202
    .line 203
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    goto/16 :goto_5

    .line 208
    .line 209
    :pswitch_8
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    goto/16 :goto_5

    .line 218
    .line 219
    :pswitch_9
    iget-object v0, v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    .line 222
    .line 223
    const-string v1, "ZTA"

    .line 224
    .line 225
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    goto/16 :goto_5

    .line 230
    .line 231
    :pswitch_a
    iget-object v0, v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    const-string v1, "AR"

    .line 237
    .line 238
    const-string v2, "BO"

    .line 239
    .line 240
    const-string v3, "BS"

    .line 241
    .line 242
    const-string v4, "BR"

    .line 243
    .line 244
    const-string v5, "CL"

    .line 245
    .line 246
    const-string v6, "CO"

    .line 247
    .line 248
    const-string v7, "CR"

    .line 249
    .line 250
    const-string v8, "DM"

    .line 251
    .line 252
    const-string v9, "DO"

    .line 253
    .line 254
    const-string v10, "EC"

    .line 255
    .line 256
    const-string v11, "GT"

    .line 257
    .line 258
    const-string v12, "HN"

    .line 259
    .line 260
    const-string v13, "JM"

    .line 261
    .line 262
    const-string v14, "MX"

    .line 263
    .line 264
    const-string v15, "NI"

    .line 265
    .line 266
    const-string v16, "PA"

    .line 267
    .line 268
    const-string v17, "PR"

    .line 269
    .line 270
    const-string v18, "PE"

    .line 271
    .line 272
    const-string v19, "PY"

    .line 273
    .line 274
    const-string v20, "SV"

    .line 275
    .line 276
    const-string v21, "TT"

    .line 277
    .line 278
    const-string v22, "UY"

    .line 279
    .line 280
    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    goto/16 :goto_5

    .line 295
    .line 296
    :pswitch_b
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    const-string v0, "XFA"

    .line 300
    .line 301
    filled-new-array {v0, v6}, [Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v2, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 310
    .line 311
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    goto/16 :goto_5

    .line 320
    .line 321
    :pswitch_c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v1, "CscFeature_Common_SupportTwoPhoneService"

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    goto/16 :goto_5

    .line 335
    .line 336
    :pswitch_d
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v11

    .line 344
    goto/16 :goto_5

    .line 345
    .line 346
    :pswitch_e
    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;->getCarrierLogoPolicy(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    const-string v2, "HOME"

    .line 351
    .line 352
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-nez v0, :cond_1

    .line 357
    .line 358
    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;->getCarrierLogoPolicy(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    const-string v1, "BOTH"

    .line 363
    .line 364
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_3

    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :pswitch_f
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    const-string v0, "ZTM"

    .line 376
    .line 377
    filled-new-array {v5, v0}, [Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    iget-object v2, v10, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 386
    .line 387
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v11

    .line 395
    goto/16 :goto_5

    .line 396
    .line 397
    :pswitch_10
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    const-string v0, "BRI"

    .line 401
    .line 402
    const-string v2, "TGY"

    .line 403
    .line 404
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    iget-object v2, v10, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 413
    .line 414
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v11

    .line 422
    goto/16 :goto_5

    .line 423
    .line 424
    :pswitch_11
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    move-object/from16 v2, v19

    .line 428
    .line 429
    move-object/from16 v3, v20

    .line 430
    .line 431
    move-object/from16 v4, v21

    .line 432
    .line 433
    filled-new-array {v3, v2, v4}, [Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iget-object v2, v10, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 442
    .line 443
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v11

    .line 451
    goto/16 :goto_5

    .line 452
    .line 453
    :pswitch_12
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    const-string v2, "CHC"

    .line 457
    .line 458
    const-string v3, "CHM"

    .line 459
    .line 460
    const-string v4, "CHU"

    .line 461
    .line 462
    const-string v5, "BRI"

    .line 463
    .line 464
    const-string v6, "TGY"

    .line 465
    .line 466
    const-string v7, "VZW"

    .line 467
    .line 468
    const-string v8, "ZVV"

    .line 469
    .line 470
    const-string v9, "ZTM"

    .line 471
    .line 472
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    iget-object v2, v10, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 481
    .line 482
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v11

    .line 490
    goto/16 :goto_5

    .line 491
    .line 492
    :pswitch_13
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    const-string v1, "DOR"

    .line 497
    .line 498
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v11

    .line 502
    goto/16 :goto_5

    .line 503
    .line 504
    :pswitch_14
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    const-string v1, "VZW"

    .line 509
    .line 510
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v11

    .line 514
    goto/16 :goto_5

    .line 515
    .line 516
    :pswitch_15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    const-string v2, "CHL"

    .line 520
    .line 521
    const-string v3, "TCE"

    .line 522
    .line 523
    const-string v4, "CDR"

    .line 524
    .line 525
    const-string v5, "AMX"

    .line 526
    .line 527
    const-string v6, "PCT"

    .line 528
    .line 529
    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v11

    .line 545
    goto/16 :goto_5

    .line 546
    .line 547
    :pswitch_16
    move-object/from16 v0, v18

    .line 548
    .line 549
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 550
    .line 551
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    if-eqz v0, :cond_0

    .line 556
    .line 557
    goto/16 :goto_5

    .line 558
    .line 559
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    const-string v1, "CscFeature_SystemUI_SupportFemToCellIcon"

    .line 564
    .line 565
    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 566
    .line 567
    .line 568
    move-result v11

    .line 569
    goto/16 :goto_5

    .line 570
    .line 571
    :pswitch_17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    move-object/from16 v2, v16

    .line 575
    .line 576
    move-object/from16 v3, v17

    .line 577
    .line 578
    filled-new-array {v2, v6, v3}, [Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v11

    .line 594
    goto/16 :goto_5

    .line 595
    .line 596
    :pswitch_18
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v11

    .line 604
    goto/16 :goto_5

    .line 605
    .line 606
    :pswitch_19
    iget-object v0, v10, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 607
    .line 608
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    const-string v3, "CarrierFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    .line 617
    .line 618
    invoke-virtual {v2, v1, v3, v4, v11}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v11

    .line 626
    goto/16 :goto_5

    .line 627
    .line 628
    :pswitch_1a
    move-object/from16 v2, v16

    .line 629
    .line 630
    move-object/from16 v3, v17

    .line 631
    .line 632
    move-object/from16 v0, v18

    .line 633
    .line 634
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 635
    .line 636
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    sparse-switch v1, :sswitch_data_0

    .line 645
    .line 646
    .line 647
    goto/16 :goto_2

    .line 648
    .line 649
    :sswitch_0
    const-string v1, "TMB_OPEN"

    .line 650
    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    if-nez v0, :cond_1

    .line 656
    .line 657
    goto/16 :goto_2

    .line 658
    .line 659
    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-nez v0, :cond_1

    .line 664
    .line 665
    goto/16 :goto_2

    .line 666
    .line 667
    :sswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    if-nez v0, :cond_1

    .line 672
    .line 673
    goto/16 :goto_2

    .line 674
    .line 675
    :sswitch_3
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-nez v0, :cond_1

    .line 680
    .line 681
    goto/16 :goto_2

    .line 682
    .line 683
    :sswitch_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    if-nez v0, :cond_1

    .line 688
    .line 689
    goto/16 :goto_2

    .line 690
    .line 691
    :sswitch_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    if-nez v0, :cond_1

    .line 696
    .line 697
    goto/16 :goto_2

    .line 698
    .line 699
    :sswitch_6
    const-string v1, "TMK_OPEN"

    .line 700
    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-eqz v0, :cond_3

    .line 706
    .line 707
    goto/16 :goto_0

    .line 708
    .line 709
    :pswitch_1b
    move-object/from16 v0, v18

    .line 710
    .line 711
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->getRoamingIconType(I)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    const-string v1, "CDMA"

    .line 716
    .line 717
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v11

    .line 721
    goto/16 :goto_5

    .line 722
    .line 723
    :pswitch_1c
    move-object/from16 v0, v18

    .line 724
    .line 725
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->getRoamingIconType(I)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    const-string v1, "GSM"

    .line 730
    .line 731
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v11

    .line 735
    goto/16 :goto_5

    .line 736
    .line 737
    :pswitch_1d
    move-object/from16 v0, v18

    .line 738
    .line 739
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->getRoamingIconType(I)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    move-object/from16 v3, p3

    .line 744
    .line 745
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result v2

    .line 749
    if-nez v2, :cond_3

    .line 750
    .line 751
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 752
    .line 753
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    const-string v1, "USC"

    .line 758
    .line 759
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    move-result v0

    .line 763
    if-nez v0, :cond_3

    .line 764
    .line 765
    goto/16 :goto_0

    .line 766
    .line 767
    :pswitch_1e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 768
    .line 769
    .line 770
    const-string v2, "BST"

    .line 771
    .line 772
    const-string v3, "XAS"

    .line 773
    .line 774
    const-string v4, "SPR"

    .line 775
    .line 776
    const-string v5, "VMU"

    .line 777
    .line 778
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v11

    .line 794
    goto/16 :goto_5

    .line 795
    .line 796
    :pswitch_1f
    move-object/from16 v2, v19

    .line 797
    .line 798
    move-object/from16 v3, v20

    .line 799
    .line 800
    move-object/from16 v4, v21

    .line 801
    .line 802
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    const-string v5, "CTC"

    .line 806
    .line 807
    filled-new-array {v3, v2, v4, v5}, [Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 812
    .line 813
    .line 814
    move-result-object v2

    .line 815
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    move-result v11

    .line 823
    goto/16 :goto_5

    .line 824
    .line 825
    :pswitch_20
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->get5gIconConfig(I)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    const-string v1, "UseEnlargedIcon"

    .line 830
    .line 831
    invoke-static {v0, v1, v11}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 832
    .line 833
    .line 834
    move-result v11

    .line 835
    goto/16 :goto_5

    .line 836
    .line 837
    :pswitch_21
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->get5gIconConfig(I)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    const-string v1, "UseOneShapedIcon"

    .line 842
    .line 843
    invoke-static {v0, v1, v11}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 844
    .line 845
    .line 846
    move-result v11

    .line 847
    goto/16 :goto_5

    .line 848
    .line 849
    :pswitch_22
    move-object/from16 v3, p3

    .line 850
    .line 851
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->getLteWideBandConfig(I)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    const/4 v1, 0x1

    .line 860
    xor-int/lit8 v11, v0, 0x1

    .line 861
    .line 862
    goto/16 :goto_5

    .line 863
    .line 864
    :pswitch_23
    iget-object v0, v10, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 865
    .line 866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 867
    .line 868
    .line 869
    const-string v2, "SKT"

    .line 870
    .line 871
    const-string v3, "KOO"

    .line 872
    .line 873
    filled-new-array {v2, v14, v13, v3}, [Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 878
    .line 879
    .line 880
    move-result-object v2

    .line 881
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v2

    .line 889
    if-nez v2, :cond_3

    .line 890
    .line 891
    const-string v2, "OYB"

    .line 892
    .line 893
    const-string v3, "VID"

    .line 894
    .line 895
    const-string v4, "OYA"

    .line 896
    .line 897
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v2

    .line 901
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result v0

    .line 913
    if-nez v0, :cond_3

    .line 914
    .line 915
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 916
    goto/16 :goto_4

    .line 917
    .line 918
    :pswitch_24
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->getLteWideBandConfig(I)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    const-string v1, "4.5G"

    .line 923
    .line 924
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    move-result v11

    .line 928
    goto/16 :goto_5

    .line 929
    .line 930
    :pswitch_25
    iget-object v0, v10, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 931
    .line 932
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    move-result v11

    .line 940
    goto/16 :goto_5

    .line 941
    .line 942
    :pswitch_26
    iget-object v0, v10, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 943
    .line 944
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    .line 945
    .line 946
    .line 947
    move-result v0

    .line 948
    if-eqz v0, :cond_2

    .line 949
    .line 950
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    const-string v2, "CarrierFeature_SystemUI_ConfigOverrideDataIcon"

    .line 955
    .line 956
    invoke-virtual {v0, v1, v2, v4, v11}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    goto :goto_1

    .line 961
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    const-string v1, "CscFeature_SystemUI_ConfigOverrideDataIcon"

    .line 966
    .line 967
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    :goto_1
    const-string v1, "LTE"

    .line 972
    .line 973
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    move-result v11

    .line 977
    goto :goto_5

    .line 978
    :pswitch_27
    iget-object v0, v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 979
    .line 980
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 985
    .line 986
    .line 987
    move-result v11

    .line 988
    goto :goto_5

    .line 989
    :pswitch_28
    iget-object v0, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 990
    .line 991
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    .line 992
    .line 993
    const-string v1, "KR"

    .line 994
    .line 995
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    move-result v11

    .line 999
    goto :goto_5

    .line 1000
    :pswitch_29
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1001
    .line 1002
    .line 1003
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    const-string v2, "CarrierFeature_RIL_DisplayAntennaLimited"

    .line 1008
    .line 1009
    invoke-virtual {v0, v1, v2, v11, v11}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    .line 1010
    .line 1011
    .line 1012
    move-result v11

    .line 1013
    goto :goto_5

    .line 1014
    :pswitch_2a
    iget-object v0, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 1015
    .line 1016
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    .line 1017
    .line 1018
    const-string v2, "DE"

    .line 1019
    .line 1020
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v1

    .line 1024
    if-nez v1, :cond_4

    .line 1025
    .line 1026
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    .line 1027
    .line 1028
    const-string v1, "ICE"

    .line 1029
    .line 1030
    const/4 v2, 0x1

    .line 1031
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v0

    .line 1035
    if-eqz v0, :cond_3

    .line 1036
    .line 1037
    goto :goto_3

    .line 1038
    :cond_3
    :goto_2
    move v5, v11

    .line 1039
    goto :goto_4

    .line 1040
    :cond_4
    const/4 v2, 0x1

    .line 1041
    :goto_3
    move v5, v2

    .line 1042
    :goto_4
    move v11, v5

    .line 1043
    goto :goto_5

    .line 1044
    :pswitch_2b
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    .line 1045
    .line 1046
    .line 1047
    move-result v11

    .line 1048
    :goto_5
    return v11

    .line 1049
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    :sswitch_data_0
    .sparse-switch
        -0x7b822689 -> :sswitch_6
        0xfd27 -> :sswitch_5
        0xfe60 -> :sswitch_4
        0xfe81 -> :sswitch_3
        0x144e9 -> :sswitch_2
        0x144f2 -> :sswitch_1
        0x75223be0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final varargs set(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->overriddenIconBranding:Ljava/lang/String;

    .line 21
    .line 22
    :cond_0
    return-void
.end method
