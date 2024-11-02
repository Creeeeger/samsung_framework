.class public final Lcom/android/systemui/shade/SecPanelConfigurationBellTower;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mCachedDisplayWidth:I

.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public final mControllerConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

.field public mDispatchConfigurationChangeConsumer:Ljava/util/function/Consumer;

.field public final mHandler:Landroid/os/Handler;

.field public final mPanelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mTmpConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

.field public final mViewConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

.field public mWindowVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mWindowVisibility:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mCachedDisplayWidth:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mPanelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 17
    .line 18
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/os/Handler;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    new-instance p1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-direct {p1, p2}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mControllerConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 35
    .line 36
    new-instance p1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 37
    .line 38
    invoke-direct {p1, p2}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mViewConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 42
    .line 43
    new-instance p1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 44
    .line 45
    invoke-direct {p1, p2}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mTmpConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 49
    .line 50
    check-cast p5, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 51
    .line 52
    invoke-virtual {p5, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mTmpConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "New Cs."

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-wide v2, v0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "newOri:"

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->printConfigurationStateLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mControllerConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 42
    .line 43
    iget-wide v1, p1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 44
    .line 45
    iget-wide v3, v0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 46
    .line 47
    cmp-long v1, v1, v3

    .line 48
    .line 49
    if-ltz v1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mConfiguration:Landroid/content/res/Configuration;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mWindowVisibility:I

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mPanelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 64
    .line 65
    iget p1, p1, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    const/4 v1, 0x1

    .line 69
    if-eq p1, v0, :cond_2

    .line 70
    .line 71
    if-ne p1, v1, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 75
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 78
    .line 79
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->shouldRingBell()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    const-string p1, "LsRune.KEYGUARD_FORCE_UPDATE_LATEST_CONFIGURATION"

    .line 98
    .line 99
    const-string v0, ""

    .line 100
    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->printConfigurationStateLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->ringConfigurationBell()V

    .line 105
    .line 106
    .line 107
    :cond_3
    return-void
.end method

.method public final printConfigurationStateLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, " (cSeq."

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mControllerConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 12
    .line 13
    iget-wide v1, p1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " : vSeq."

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mViewConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 24
    .line 25
    iget-wide v2, v1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ") dState(dW:"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, ", dH:"

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, ") rPicker(pW:"

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, ", pH:"

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelHeight(Landroid/content/Context;)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v3, ", adH:"

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v3, ", cH:"

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isPortrait(Landroid/content/Context;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_0

    .line 107
    .line 108
    iget v3, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mCutoutHeight:I

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    iget v3, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mCutoutHeightLandscape:I

    .line 112
    .line 113
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v3, ", nbH:"

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p0, ") Rotation("

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object p0, p1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mConfiguration:Landroid/content/res/Configuration;

    .line 151
    .line 152
    if-eqz p0, :cond_1

    .line 153
    .line 154
    const-string p0, ", c:"

    .line 155
    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object p0, p1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mConfiguration:Landroid/content/res/Configuration;

    .line 160
    .line 161
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :cond_1
    iget-object p0, v1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mConfiguration:Landroid/content/res/Configuration;

    .line 171
    .line 172
    if-eqz p0, :cond_2

    .line 173
    .line 174
    const-string p0, ", v:"

    .line 175
    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object p0, v1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mConfiguration:Landroid/content/res/Configuration;

    .line 180
    .line 181
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    :cond_2
    const-string p0, ") "

    .line 191
    .line 192
    const-string p1, "SecPanelConfigurationBellTower"

    .line 193
    .line 194
    invoke-static {v0, p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final ringConfigurationBell()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mViewConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mControllerConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 6
    .line 7
    iget-wide v3, v2, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 8
    .line 9
    cmp-long v0, v0, v3

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mDispatchConfigurationChangeConsumer:Ljava/util/function/Consumer;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, v2, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mConfiguration:Landroid/content/res/Configuration;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Ring_Bell_!! from Cs."

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v3, v2, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 31
    .line 32
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, v2, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mConfiguration:Landroid/content/res/Configuration;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->printConfigurationStateLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mDispatchConfigurationChangeConsumer:Ljava/util/function/Consumer;

    .line 53
    .line 54
    iget-object v0, v2, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mConfiguration:Landroid/content/res/Configuration;

    .line 55
    .line 56
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public final shouldRingBell()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mControllerConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 8
    .line 9
    iget-wide v1, v1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mViewConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 12
    .line 13
    iget-wide v3, v3, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 14
    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    cmp-long v5, v1, v5

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    if-lez v5, :cond_0

    .line 21
    .line 22
    cmp-long v7, v1, v3

    .line 23
    .line 24
    if-nez v7, :cond_0

    .line 25
    .line 26
    return v6

    .line 27
    :cond_0
    const/4 v7, 0x1

    .line 28
    if-lez v5, :cond_1

    .line 29
    .line 30
    cmp-long v1, v1, v3

    .line 31
    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    return v7

    .line 35
    :cond_1
    iget v1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mCachedDisplayWidth:I

    .line 36
    .line 37
    if-eq v1, v0, :cond_2

    .line 38
    .line 39
    iput v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mCachedDisplayWidth:I

    .line 40
    .line 41
    return v7

    .line 42
    :cond_2
    return v6
.end method
