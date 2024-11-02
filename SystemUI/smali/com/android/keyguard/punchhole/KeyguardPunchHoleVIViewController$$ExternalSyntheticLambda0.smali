.class public final synthetic Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 11
    .line 12
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "any_screen_running"

    .line 33
    .line 34
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mRotationConsumer:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda2;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecRotationWatcher;->addCallback(Ljava/util/function/IntConsumer;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 80
    .line 81
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "background"

    .line 89
    .line 90
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    const-string/jumbo v2, "statusbar"

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    or-long/2addr v0, v2

    .line 102
    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 106
    .line 107
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    .line 110
    .line 111
    check-cast v0, Ljava/util/ArrayList;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mEditModeListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 119
    .line 120
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLockStarCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 127
    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 144
    .line 145
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda1;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_2

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mRotationConsumer:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda2;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecRotationWatcher;->removeCallback(Ljava/util/function/IntConsumer;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 175
    .line 176
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 180
    .line 181
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 192
    .line 193
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    .line 196
    .line 197
    check-cast v0, Ljava/util/ArrayList;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mEditModeListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 205
    .line 206
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 207
    .line 208
    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 209
    .line 210
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 211
    .line 212
    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->unregisterCallback(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
