.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

.field public final synthetic f$1:Lcom/android/systemui/shade/NotificationShadeWindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Lcom/android/systemui/shade/NotificationShadeWindowState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_5

    .line 7
    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarSplitTouchable:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 23
    .line 24
    const/high16 v3, 0x800000

    .line 25
    .line 26
    or-int/2addr v2, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 29
    .line 30
    const v3, -0x800001

    .line 31
    .line 32
    .line 33
    and-int/2addr v2, v3

    .line 34
    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->isHideInformationMirroring:Z

    .line 41
    .line 42
    const/high16 v3, -0x80000000

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-boolean v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isInitFinished:Z

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    const/4 v3, 0x0

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/high16 v4, 0x40000

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 67
    .line 68
    .line 69
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 70
    .line 71
    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 72
    .line 73
    iget-object v6, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    .line 74
    .line 75
    if-nez v5, :cond_3

    .line 76
    .line 77
    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 78
    .line 79
    if-nez v5, :cond_4

    .line 80
    .line 81
    :cond_3
    if-eqz v6, :cond_4

    .line 82
    .line 83
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Lcom/android/systemui/doze/PluginAODManager;

    .line 88
    .line 89
    if-eqz v5, :cond_4

    .line 90
    .line 91
    iget-boolean v7, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 92
    .line 93
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    .line 94
    .line 95
    iget-object v5, v5, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 96
    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    invoke-interface {v5, v1, v7, p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V

    .line 100
    .line 101
    .line 102
    :cond_4
    if-eqz v6, :cond_6

    .line 103
    .line 104
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 109
    .line 110
    const/4 v5, 0x2

    .line 111
    if-eq v4, v5, :cond_5

    .line 112
    .line 113
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 114
    .line 115
    if-eq v4, v1, :cond_5

    .line 116
    .line 117
    move v1, v2

    .line 118
    goto :goto_2

    .line 119
    :cond_5
    move v1, v3

    .line 120
    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mIsDifferentOrientation:Z

    .line 121
    .line 122
    :cond_6
    :goto_3
    sget-boolean p0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 123
    .line 124
    if-eqz p0, :cond_8

    .line 125
    .line 126
    iget-object p0, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    iget-object v1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->keyguardViewMediatorLazy:Ldagger/Lazy;

    .line 143
    .line 144
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-nez p0, :cond_7

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    move v2, v3

    .line 162
    :goto_4
    if-eqz v2, :cond_8

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 169
    .line 170
    const/high16 v1, 0x100000

    .line 171
    .line 172
    or-int/2addr v0, v1

    .line 173
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 174
    .line 175
    :cond_8
    return-void

    .line 176
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    .line 186
    .line 187
    if-nez v1, :cond_9

    .line 188
    .line 189
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_a

    .line 194
    .line 195
    :cond_9
    iget-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    .line 196
    .line 197
    if-eqz v1, :cond_a

    .line 198
    .line 199
    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->applyBouncer(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 200
    .line 201
    .line 202
    :cond_a
    return-void

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
