.class public final Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAODClockStyleChanged()V
    .locals 1

    .line 1
    const-string p0, "PluginLockFaceWidget"

    .line 2
    .line 3
    const-string v0, "onAODClockStyleChanged() "

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onClockColorChanged()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onClockColorChanged() #"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 13
    .line 14
    const-string v1, "#FFFAFAFA"

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockDateColor()I

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v0, "PluginLockFaceWidget"

    .line 44
    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onClockFontChanged()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onClockFontChanged() "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockFontType()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    :goto_0
    const-string v1, "PluginLockFaceWidget"

    .line 23
    .line 24
    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onClockPackageChanged()V
    .locals 1

    .line 1
    const-string p0, "PluginLockFaceWidget"

    .line 2
    .line 3
    const-string v0, "onClockPackageChanged() "

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onClockPositionChanged(Z)V
    .locals 6

    .line 1
    const-string v0, "onClockPositionChanged() isCustomPositionChanged="

    .line 2
    .line 3
    const-string v1, "PluginLockFaceWidget"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v0, v2, v4

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    iget-wide v4, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 29
    .line 30
    sub-long/2addr v2, v4

    .line 31
    const-wide/16 v4, 0x1f40

    .line 32
    .line 33
    cmp-long v0, v2, v4

    .line 34
    .line 35
    if-gez v0, :cond_1

    .line 36
    .line 37
    const-string p0, "onClockPositionChanged() ignored"

    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const-string v0, "clock_position_changed"

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$mupdateLockStarData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void

    .line 57
    :cond_3
    :goto_0
    const-string p0, "onClockPositionChanged() wrong state"

    .line 58
    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onClockScaleChanged()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockScale()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "onClockScaleChanged() "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "PluginLockFaceWidget"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-wide v3, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 36
    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    cmp-long v1, v3, v5

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    iget v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    if-ne v1, v3, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    iget-wide v5, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 54
    .line 55
    sub-long/2addr v3, v5

    .line 56
    const-wide/16 v5, 0x1f40

    .line 57
    .line 58
    cmp-long v1, v3, v5

    .line 59
    .line 60
    if-gez v1, :cond_2

    .line 61
    .line 62
    const-string p0, "onClockScaleChanged() ignored"

    .line 63
    .line 64
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    const-string v1, "clock_scale"

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$mupdateLockStarData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void

    .line 82
    :cond_4
    :goto_1
    const-string p0, "onClockScaleChanged() wrong state"

    .line 83
    .line 84
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final onClockStyleChanged(Z)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onClockStyleChanged() mCallbackRegisterTime: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "PluginLockFaceWidget"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-wide v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 25
    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    cmp-long v0, v2, v4

    .line 29
    .line 30
    if-eqz v0, :cond_7

    .line 31
    .line 32
    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    if-ne v0, v2, :cond_0

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    iget-wide v8, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 44
    .line 45
    sub-long/2addr v6, v8

    .line 46
    const-wide/16 v8, 0x1f40

    .line 47
    .line 48
    cmp-long v0, v6, v8

    .line 49
    .line 50
    if-gez v0, :cond_1

    .line 51
    .line 52
    const-string p0, "onClockStyleChanged() ignored"

    .line 53
    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getLockClockType()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v3

    .line 75
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v6, "clock_type"

    .line 80
    .line 81
    invoke-static {p0, v6, v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$mupdateLockStarData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    .line 85
    .line 86
    if-eq v0, v3, :cond_6

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->reset(Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v0, "recover() mClockRecoverType: "

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    .line 104
    .line 105
    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    .line 109
    .line 110
    if-eq p1, v3, :cond_6

    .line 111
    .line 112
    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    const/4 v0, -0x2

    .line 126
    invoke-virtual {p1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClockState(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 132
    .line 133
    .line 134
    :cond_5
    const-string/jumbo p1, "plugin_lock_clock"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iput v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 141
    .line 142
    iput-wide v4, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 143
    .line 144
    new-instance p1, Landroid/os/Handler;

    .line 145
    .line 146
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$$ExternalSyntheticLambda0;

    .line 154
    .line 155
    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_1
    return-void

    .line 162
    :cond_7
    :goto_2
    const-string p0, "onClockStyleChanged() wrong state"

    .line 163
    .line 164
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final onClockVisibilityChanged()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    const-string v1, "onClockVisibilityChanged() "

    .line 16
    .line 17
    const-string v2, "PluginLockFaceWidget"

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-wide v3, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 23
    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    iget v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    iget-wide v5, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 41
    .line 42
    sub-long/2addr v3, v5

    .line 43
    const-wide/16 v5, 0x1f40

    .line 44
    .line 45
    cmp-long v1, v3, v5

    .line 46
    .line 47
    if-gez v1, :cond_2

    .line 48
    .line 49
    const-string p0, "onClockVisibilityChanged() ignored"

    .line 50
    .line 51
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    .line 56
    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    const-string v1, "clock_visibility"

    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$mupdateLockStarData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void

    .line 69
    :cond_4
    :goto_1
    const-string p0, "onClockVisibilityChanged() wrong state"

    .line 70
    .line 71
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void
.end method
