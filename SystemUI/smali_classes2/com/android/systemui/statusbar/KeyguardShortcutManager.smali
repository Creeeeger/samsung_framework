.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

.field public static final DEF_SHORTCUT:Ljava/lang/String;

.field public static final EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field public static final PHONE_INTENT:Landroid/content/Intent;

.field public static final SAMSUNG_EXPERT_RAW_CAMERA_INTENT:Landroid/content/Intent;

.field public static final SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

.field public static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field public final BLACK_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

.field public final WHITE_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

.field public final WHITE_BG_INVERT:Landroid/graphics/ColorMatrix;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public dndShortcutIndex:I

.field public isDndCallbackAdded:Z

.field public isLockTaskMode:Z

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mHasSPenFeature:Z

.field public mIconSize:I

.field public final mIntentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;

.field public final mIsFlashlightSupported:Z

.field public mIsPermDisabled:Z

.field public final mIsTablet:Z

.field public final mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mSb:Ljava/lang/StringBuilder;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mShortcutVisibleForMDM:Z

.field public final mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUpdateShortcutsRunnable:Lcom/android/systemui/statusbar/KeyguardShortcutManager$mUpdateShortcutsRunnable$1;

.field public final taskConfigs:Ljava/util/Set;

.field public final themeShortcutHashMap:Ljava/util/HashMap;

.field public final userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    .line 8
    .line 9
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "CscFeature_Setting_ConfigDefAppShortcutForLockScreen"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->DEF_SHORTCUT:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "com.sec.android.app.clockpackage"

    .line 22
    .line 23
    const-string v1, "com.samsung.android.calendar"

    .line 24
    .line 25
    const-string v2, "com.android.calendar"

    .line 26
    .line 27
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    .line 32
    .line 33
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    const-string v1, "android.intent.action.MAIN"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v2, "android.intent.category.LAUNCHER"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v3, "com.sec.android.app.camera"

    .line 47
    .line 48
    const-string v4, "com.sec.android.app.camera.Camera"

    .line 49
    .line 50
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 55
    .line 56
    new-instance v0, Landroid/content/Intent;

    .line 57
    .line 58
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 70
    .line 71
    new-instance v0, Landroid/content/Intent;

    .line 72
    .line 73
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "com.samsung.android.app.galaxyraw"

    .line 81
    .line 82
    const-string v2, "com.samsung.android.app.galaxyraw.GalaxyRaw"

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SAMSUNG_EXPERT_RAW_CAMERA_INTENT:Landroid/content/Intent;

    .line 89
    .line 90
    new-instance v0, Landroid/content/Intent;

    .line 91
    .line 92
    const-string v1, "android.intent.action.DIAL"

    .line 93
    .line 94
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v1, "com.samsung.android.dialer"

    .line 98
    .line 99
    const-string v2, "com.samsung.android.dialer.DialtactsActivity"

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->PHONE_INTENT:Landroid/content/Intent;

    .line 106
    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    .line 108
    .line 109
    invoke-direct {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;-><init>()V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    .line 113
    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ljava/util/Set;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v0, p1

    .line 6
    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    move-object v2, p2

    .line 9
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    move-object/from16 v2, p4

    .line 16
    .line 17
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    move-object/from16 v2, p5

    .line 20
    .line 21
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 22
    .line 23
    move-object/from16 v2, p6

    .line 24
    .line 25
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 26
    .line 27
    move-object/from16 v2, p7

    .line 28
    .line 29
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    move-object/from16 v2, p8

    .line 32
    .line 33
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 34
    .line 35
    move-object/from16 v2, p9

    .line 36
    .line 37
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->taskConfigs:Ljava/util/Set;

    .line 38
    .line 39
    move-object/from16 v2, p10

    .line 40
    .line 41
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    new-array v3, v2, [Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 45
    .line 46
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 47
    .line 48
    new-array v3, v2, [Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 49
    .line 50
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSb:Ljava/lang/StringBuilder;

    .line 58
    .line 59
    new-instance v3, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    .line 65
    .line 66
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mUpdateShortcutsRunnable$1;

    .line 67
    .line 68
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mUpdateShortcutsRunnable$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)V

    .line 69
    .line 70
    .line 71
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mUpdateShortcutsRunnable:Lcom/android/systemui/statusbar/KeyguardShortcutManager$mUpdateShortcutsRunnable$1;

    .line 72
    .line 73
    new-instance v3, Landroid/graphics/ColorMatrix;

    .line 74
    .line 75
    const/16 v4, 0x14

    .line 76
    .line 77
    new-array v5, v4, [F

    .line 78
    .line 79
    fill-array-data v5, :array_0

    .line 80
    .line 81
    .line 82
    invoke-direct {v3, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 83
    .line 84
    .line 85
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->WHITE_BG_INVERT:Landroid/graphics/ColorMatrix;

    .line 86
    .line 87
    new-instance v3, Landroid/graphics/ColorMatrix;

    .line 88
    .line 89
    new-array v5, v4, [F

    .line 90
    .line 91
    fill-array-data v5, :array_1

    .line 92
    .line 93
    .line 94
    invoke-direct {v3, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 95
    .line 96
    .line 97
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->WHITE_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

    .line 98
    .line 99
    new-instance v3, Landroid/graphics/ColorMatrix;

    .line 100
    .line 101
    new-array v4, v4, [F

    .line 102
    .line 103
    fill-array-data v4, :array_2

    .line 104
    .line 105
    .line 106
    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 107
    .line 108
    .line 109
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->BLACK_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

    .line 110
    .line 111
    new-instance v3, Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->themeShortcutHashMap:Ljava/util/HashMap;

    .line 117
    .line 118
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;

    .line 119
    .line 120
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)V

    .line 121
    .line 122
    .line 123
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIntentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;

    .line 124
    .line 125
    const-string v3, "KeyguardShortcutManager"

    .line 126
    .line 127
    const-string/jumbo v4, "themeAppIconDrawableArray error :"

    .line 128
    .line 129
    .line 130
    const-string/jumbo v5, "themeAppIconPackageArray error :"

    .line 131
    .line 132
    .line 133
    const/4 v6, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    const v8, 0x7f030076

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const v8, 0x7f030075

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    array-length v8, v7

    .line 157
    array-length v9, v0

    .line 158
    if-ne v8, v9, :cond_0

    .line 159
    .line 160
    array-length v4, v0

    .line 161
    move v5, v6

    .line 162
    :goto_0
    if-ge v5, v4, :cond_1

    .line 163
    .line 164
    iget-object v8, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->themeShortcutHashMap:Ljava/util/HashMap;

    .line 165
    .line 166
    aget-object v9, v7, v5

    .line 167
    .line 168
    aget-object v10, v0, v5

    .line 169
    .line 170
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    add-int/lit8 v5, v5, 0x1

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_0
    array-length v7, v7

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    array-length v0, v0

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    const-string v4, "Arrays must have the same size"

    .line 211
    .line 212
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v5, "Making theme hash error : "

    .line 220
    .line 221
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 235
    .line 236
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const v3, 0x7f0703f9

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    iput v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIconSize:I

    .line 248
    .line 249
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 252
    .line 253
    const-string/jumbo v3, "set_shortcuts_mode"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    if-eqz v4, :cond_2

    .line 261
    .line 262
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_2

    .line 271
    .line 272
    const/4 v0, 0x1

    .line 273
    goto :goto_1

    .line 274
    :cond_2
    move v0, v6

    .line 275
    :goto_1
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcutVisibleForMDM:Z

    .line 276
    .line 277
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIsTablet:Z

    .line 282
    .line 283
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const-string v4, "com.sec.feature.spen_usp"

    .line 290
    .line 291
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    const-string v4, "isSupportActionMemoOnLockScreen FEATURE_SPEN : "

    .line 296
    .line 297
    const-string v5, "DeviceType"

    .line 298
    .line 299
    invoke-static {v4, v0, v5}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mHasSPenFeature:Z

    .line 303
    .line 304
    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 305
    .line 306
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 311
    .line 312
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 313
    .line 314
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHasFlashlight:Z

    .line 315
    .line 316
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIsFlashlightSupported:Z

    .line 317
    .line 318
    :goto_2
    if-ge v6, v2, :cond_3

    .line 319
    .line 320
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 321
    .line 322
    new-instance v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 323
    .line 324
    invoke-direct {v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;-><init>()V

    .line 325
    .line 326
    .line 327
    aput-object v4, v0, v6

    .line 328
    .line 329
    add-int/lit8 v6, v6, 0x1

    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_3
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 333
    .line 334
    const-string v2, "lock_application_shortcut"

    .line 335
    .line 336
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    const-string v4, "current_sec_appicon_theme_package"

    .line 345
    .line 346
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    const-string v5, "accessibility_reduce_transparency"

    .line 351
    .line 352
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    filled-new-array {v2, v3, v4, v5}, [Landroid/net/Uri;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 364
    .line 365
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 366
    .line 367
    .line 368
    new-instance v0, Landroid/content/IntentFilter;

    .line 369
    .line 370
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 374
    .line 375
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 379
    .line 380
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 384
    .line 385
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 389
    .line 390
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    const-string/jumbo v2, "package"

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 400
    .line 401
    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIntentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;

    .line 402
    .line 403
    const/4 v4, 0x0

    .line 404
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 405
    .line 406
    const/4 v6, 0x0

    .line 407
    const/4 v7, 0x0

    .line 408
    const/16 v8, 0x30

    .line 409
    .line 410
    const/4 v9, 0x0

    .line 411
    const/4 v10, 0x0

    .line 412
    const/4 v11, 0x0

    .line 413
    const/16 v12, 0x30

    .line 414
    .line 415
    move-object p1, v2

    .line 416
    move-object p2, v3

    .line 417
    move-object/from16 p3, v0

    .line 418
    .line 419
    move-object/from16 p4, v9

    .line 420
    .line 421
    move-object/from16 p5, v5

    .line 422
    .line 423
    move/from16 p6, v10

    .line 424
    .line 425
    move-object/from16 p7, v11

    .line 426
    .line 427
    move/from16 p8, v12

    .line 428
    .line 429
    invoke-static/range {p1 .. p8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 430
    .line 431
    .line 432
    new-instance v0, Landroid/content/IntentFilter;

    .line 433
    .line 434
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 435
    .line 436
    .line 437
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 438
    .line 439
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 443
    .line 444
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 448
    .line 449
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 453
    .line 454
    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIntentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;

    .line 455
    .line 456
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 457
    .line 458
    move-object p1, v2

    .line 459
    move-object p2, v3

    .line 460
    move-object/from16 p3, v0

    .line 461
    .line 462
    move-object/from16 p5, v5

    .line 463
    .line 464
    invoke-static/range {p1 .. p8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 465
    .line 466
    .line 467
    new-instance v0, Landroid/content/IntentFilter;

    .line 468
    .line 469
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 470
    .line 471
    .line 472
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    .line 473
    .line 474
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 478
    .line 479
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 483
    .line 484
    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIntentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;

    .line 485
    .line 486
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 487
    .line 488
    move-object p1, v2

    .line 489
    move-object p2, v3

    .line 490
    move-object/from16 p3, v0

    .line 491
    .line 492
    move-object/from16 p4, v4

    .line 493
    .line 494
    move-object/from16 p5, v5

    .line 495
    .line 496
    move/from16 p6, v6

    .line 497
    .line 498
    move-object/from16 p7, v7

    .line 499
    .line 500
    move/from16 p8, v8

    .line 501
    .line 502
    invoke-static/range {p1 .. p8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 503
    .line 504
    .line 505
    new-instance v0, Landroid/content/IntentFilter;

    .line 506
    .line 507
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 508
    .line 509
    .line 510
    const-string v2, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    .line 511
    .line 512
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    const-string v2, "com.samsung.applock.intent.action.SSECURE_UPDATE"

    .line 516
    .line 517
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    .line 521
    .line 522
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 526
    .line 527
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIntentReceiver:Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;

    .line 528
    .line 529
    const/4 v3, 0x0

    .line 530
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 531
    .line 532
    const/4 v5, 0x0

    .line 533
    const/4 v6, 0x0

    .line 534
    const/16 v7, 0x30

    .line 535
    .line 536
    move-object p0, v2

    .line 537
    move-object p1, v1

    .line 538
    move-object p2, v0

    .line 539
    move-object/from16 p3, v3

    .line 540
    .line 541
    move-object/from16 p4, v4

    .line 542
    .line 543
    move/from16 p5, v5

    .line 544
    .line 545
    move-object/from16 p6, v6

    .line 546
    .line 547
    move/from16 p7, v7

    .line 548
    .line 549
    invoke-static/range {p0 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 550
    .line 551
    .line 552
    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40466666    # 3.1f
        0x0
        0x0
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x40466666    # 3.1f
        0x0
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x0
        0x40466666    # 3.1f
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x40133333    # 2.3f
        0x0
        0x0
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x40133333    # 2.3f
        0x0
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x0
        0x40133333    # 2.3f
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static final access$getFgPanelIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getCropFg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public static final access$getShortcutIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/content/pm/ActivityInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 9
    .line 10
    const-string v3, "current_sec_appicon_theme_package"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->themeShortcutHashMap:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    move-object v2, v7

    .line 44
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    const-string v10, "drawable"

    .line 53
    .line 54
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-virtual {v9, v2, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .line 65
    .line 66
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-boolean v5, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    .line 71
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-static {v10, v2, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 76
    .line 77
    .line 78
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .line 79
    .line 80
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-boolean v5, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    .line 85
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-static {v10, v2, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 90
    .line 91
    .line 92
    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 93
    .line 94
    if-eq v9, v5, :cond_2

    .line 95
    .line 96
    move v9, v5

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    move v9, v4

    .line 99
    :goto_0
    if-eqz v9, :cond_3

    .line 100
    .line 101
    invoke-virtual {v8, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    move-object v2, v7

    .line 107
    :goto_1
    if-nez v2, :cond_5

    .line 108
    .line 109
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .line 110
    .line 111
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-boolean v5, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 115
    .line 116
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    const v10, 0x7f080ab1

    .line 121
    .line 122
    .line 123
    invoke-static {v8, v10, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 124
    .line 125
    .line 126
    iget v8, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 127
    .line 128
    if-eq v8, v5, :cond_4

    .line 129
    .line 130
    move v8, v5

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    move v8, v4

    .line 133
    :goto_2
    if-eqz v8, :cond_5

    .line 134
    .line 135
    const/16 v2, 0x100

    .line 136
    .line 137
    invoke-virtual {p1, v6, v5, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :cond_5
    :goto_3
    if-nez v2, :cond_6

    .line 142
    .line 143
    invoke-virtual {p1, v6, v5, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :cond_6
    if-nez v2, :cond_7

    .line 148
    .line 149
    invoke-virtual {p1, v6}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    :cond_7
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isblendNeeded(Landroid/content/pm/ActivityInfo;Landroid/graphics/drawable/Drawable;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_c

    .line 158
    .line 159
    :try_start_0
    const-string p1, "com.sec.android.app.camera"

    .line 160
    .line 161
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_8

    .line 166
    .line 167
    iget-object p1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 168
    .line 169
    invoke-virtual {p1, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-nez p1, :cond_8

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_8
    move v5, v4

    .line 181
    :goto_4
    if-eqz v5, :cond_9

    .line 182
    .line 183
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    goto :goto_5

    .line 188
    :cond_9
    move-object p1, v2

    .line 189
    check-cast p1, Landroid/graphics/drawable/DrawableWrapper;

    .line 190
    .line 191
    if-eqz p1, :cond_a

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    :cond_a
    check-cast v7, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 198
    .line 199
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    :goto_5
    if-eqz p1, :cond_c

    .line 207
    .line 208
    if-eqz p2, :cond_b

    .line 209
    .line 210
    :goto_6
    move-object v2, p1

    .line 211
    goto :goto_7

    .line 212
    :cond_b
    invoke-virtual {p0, v0, p1, v4, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getBlendingFgIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    .line 213
    .line 214
    .line 215
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    if-eqz p1, :cond_c

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :catch_0
    move-exception p1

    .line 220
    const-string p2, "Making samsung Icon error : "

    .line 221
    .line 222
    const-string v0, "KeyguardShortcutManager"

    .line 223
    .line 224
    invoke-static {p2, p1, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_c
    :goto_7
    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIconSize:I

    .line 228
    .line 229
    invoke-virtual {p0, v2, p1, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    return-object p0
.end method

.method public static final access$resetShortcut(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    .line 10
    .line 11
    aget-object v1, v0, p1

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    aget-object v1, v0, p1

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    aget-object v1, v0, p1

    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mPanelTransitDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    aget-object v0, v0, p1

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static final access$sendUpdateIconOnlyToCallback(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutCallback;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutCallback;

    .line 35
    .line 36
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;

    .line 37
    .line 38
    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 43
    .line 44
    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    .line 45
    .line 46
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;

    .line 47
    .line 48
    invoke-direct {v2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;-><init>(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public static synthetic getMIntentReceiver$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static imgShadow(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Landroid/graphics/Matrix;

    .line 16
    .line 17
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Landroid/graphics/RectF;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    int-to-float v5, v5

    .line 27
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    int-to-float v6, v6

    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Landroid/graphics/RectF;

    .line 37
    .line 38
    int-to-float v6, v0

    .line 39
    int-to-float v8, v1

    .line 40
    invoke-direct {v5, v7, v7, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 41
    .line 42
    .line 43
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 44
    .line 45
    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 46
    .line 47
    .line 48
    new-instance v4, Landroid/graphics/Matrix;

    .line 49
    .line 50
    invoke-direct {v4, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 54
    .line 55
    .line 56
    new-instance v5, Landroid/graphics/Canvas;

    .line 57
    .line 58
    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Landroid/graphics/Paint;

    .line 62
    .line 63
    const/4 v8, 0x1

    .line 64
    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, p0, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 68
    .line 69
    .line 70
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    .line 71
    .line 72
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 73
    .line 74
    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, p0, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    .line 84
    .line 85
    const/high16 v5, 0x40800000    # 4.0f

    .line 86
    .line 87
    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    .line 88
    .line 89
    invoke-direct {v4, v5, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Landroid/graphics/Paint;

    .line 108
    .line 109
    invoke-direct {p1, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 113
    .line 114
    .line 115
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 116
    .line 117
    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v1, Landroid/graphics/Canvas;

    .line 122
    .line 123
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p0, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    .line 134
    .line 135
    return-object v0
.end method

.method public static isAllowNonPlatformKeyApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_0
    const-string v3, "SHA-256"

    .line 19
    .line 20
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/high16 v4, 0x8000000

    .line 29
    .line 30
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_0
    array-length p1, p0

    .line 52
    move v4, v2

    .line 53
    :goto_1
    if-ge v4, p1, :cond_2

    .line 54
    .line 55
    aget-object v5, p0, v4

    .line 56
    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    array-length v7, v5

    .line 79
    move v8, v2

    .line 80
    :goto_2
    if-ge v8, v7, :cond_1

    .line 81
    .line 82
    aget-byte v9, v5, v8

    .line 83
    .line 84
    and-int/lit16 v9, v9, 0xff

    .line 85
    .line 86
    add-int/lit16 v9, v9, 0x100

    .line 87
    .line 88
    const/16 v10, 0x10

    .line 89
    .line 90
    invoke-static {v10}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    .line 91
    .line 92
    .line 93
    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    add-int/lit8 v8, v8, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    add-int/lit8 v4, v4, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v3, "isAllowNonPlatformKeyApp : "

    .line 125
    .line 126
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string p1, "AppSignature"

    .line 137
    .line 138
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_3

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    move v1, v2

    .line 165
    :goto_3
    return v1
.end method

.method public static isSamsungCameraPackage(Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "com.sec.android.app.camera"

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    :goto_0
    return p0
.end method


# virtual methods
.method public final drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "KeyguardShortcutManager"

    .line 4
    .line 5
    const-string p1, "drawableToScaledBitmapDrawable : drawable is null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance p3, Landroid/graphics/Canvas;

    .line 19
    .line 20
    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {p1, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p2, "ShortcutManager state:"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "  CurrentUserId = "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p2, "  Shortcut count = 2"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 35
    .line 36
    const-string v0, "lockscreen_show_shortcut"

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/4 v0, 0x0

    .line 47
    const/4 v1, 0x1

    .line 48
    if-ne p2, v1, :cond_0

    .line 49
    .line 50
    move p2, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move p2, v0

    .line 53
    :goto_0
    const-string v2, "  Master switch = "

    .line 54
    .line 55
    invoke-static {v2, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 56
    .line 57
    .line 58
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcutVisibleForMDM:Z

    .line 59
    .line 60
    xor-int/2addr p2, v1

    .line 61
    const-string v1, "  disabled shortcut by MDM = "

    .line 62
    .line 63
    invoke-static {v1, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 67
    .line 68
    array-length v1, p2

    .line 69
    :goto_1
    if-ge v0, v1, :cond_3

    .line 70
    .line 71
    const-string v2, "  Shortcut "

    .line 72
    .line 73
    invoke-static {v2, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 74
    .line 75
    .line 76
    aget-object v2, p2, v0

    .line 77
    .line 78
    if-nez v2, :cond_1

    .line 79
    .line 80
    const-string v2, "    null"

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    .line 87
    .line 88
    const-string v4, "    enabled = "

    .line 89
    .line 90
    invoke-static {v4, v3, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v5, "    component = "

    .line 98
    .line 99
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 113
    .line 114
    const-string v4, "    label = "

    .line 115
    .line 116
    invoke-static {v4, v3, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 117
    .line 118
    .line 119
    iget-object v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 120
    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getSuspended(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const-string v4, "    isSuspended = "

    .line 132
    .line 133
    invoke-static {v4, v3, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 134
    .line 135
    .line 136
    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 137
    .line 138
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const-string v3, "    isLockTaskPermitted = "

    .line 150
    .line 151
    invoke-static {v3, v2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 152
    .line 153
    .line 154
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    return-void
.end method

.method public final getBlendingFgIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "bottom"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    :try_start_0
    invoke-static {p2}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    if-nez p4, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    :cond_1
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const v2, 0x7f08069b

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const v2, 0x7f0806a3

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    if-eqz v1, :cond_4

    .line 40
    .line 41
    const v2, 0x7f08069a

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    const v2, 0x7f0806a1

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x1

    .line 54
    if-eqz p3, :cond_5

    .line 55
    .line 56
    if-eqz p4, :cond_5

    .line 57
    .line 58
    move v6, v9

    .line 59
    goto :goto_1

    .line 60
    :cond_5
    move v6, v8

    .line 61
    :goto_1
    const/4 v7, 0x0

    .line 62
    move-object v2, p0

    .line 63
    move v4, v1

    .line 64
    move-object v5, p1

    .line 65
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->grayInvertDrawable(Landroid/graphics/Bitmap;ZLjava/lang/String;ZZ)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getCropFg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    invoke-static {p0, p3, p4, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-eqz v1, :cond_a

    .line 86
    .line 87
    const-string v1, "com.samsung.android.oneconnect"

    .line 88
    .line 89
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_7

    .line 94
    .line 95
    const-string v1, "com.samsung.android.tvplus"

    .line 96
    .line 97
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    move v1, v8

    .line 105
    goto :goto_3

    .line 106
    :cond_7
    :goto_2
    move v1, v9

    .line 107
    :goto_3
    if-nez v1, :cond_a

    .line 108
    .line 109
    const-string v1, "com.samsung.android.aremoji"

    .line 110
    .line 111
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_8

    .line 116
    .line 117
    const-string v1, "com.sec.android.mimage.avatarstickers"

    .line 118
    .line 119
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_9

    .line 124
    .line 125
    :cond_8
    move v8, v9

    .line 126
    :cond_9
    if-nez v8, :cond_a

    .line 127
    .line 128
    const p1, 0x7f0607fe

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_a
    const p1, 0x7f0607fb

    .line 133
    .line 134
    .line 135
    :goto_4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->imgShadow(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 144
    .line 145
    invoke-static {p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    new-instance p3, Landroid/graphics/Canvas;

    .line 150
    .line 151
    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    .line 153
    .line 154
    new-instance p4, Landroid/graphics/Paint;

    .line 155
    .line 156
    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 157
    .line 158
    .line 159
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p3, p2, v0, v0, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 164
    .line 165
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 166
    .line 167
    invoke-direct {v1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, p0, v0, v0, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 174
    .line 175
    .line 176
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 177
    .line 178
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :catch_0
    move-exception p0

    .line 183
    const-string p1, "Making samsung Icon error : "

    .line 184
    .line 185
    const-string p2, "KeyguardShortcutManager"

    .line 186
    .line 187
    invoke-static {p1, p0, p2}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const/4 p0, 0x0

    .line 191
    :goto_5
    return-object p0
.end method

.method public final getCropFg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f0703f4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    mul-int/lit8 v1, p0, 0x2

    .line 19
    .line 20
    sub-int/2addr v0, v1

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int/2addr v2, v1

    .line 26
    invoke-static {p1, p0, p0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final getIntent(I)Landroid/content/Intent;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "KeyguardShortcutManager"

    .line 3
    .line 4
    if-ltz p1, :cond_9

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-lt p1, v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 12
    .line 13
    aget-object v3, v2, p1

    .line 14
    .line 15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-string/jumbo v4, "th = "

    .line 25
    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " is camera package"

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSecure()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_2
    aget-object v3, v2, p1

    .line 64
    .line 65
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 69
    .line 70
    if-nez v3, :cond_3

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const-string v5, "com.samsung.android.app.galaxyraw"

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    :goto_0
    if-eqz v3, :cond_4

    .line 85
    .line 86
    const-string p0, " is expert raw camera package"

    .line 87
    .line 88
    invoke-static {v4, p1, p0, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SAMSUNG_EXPERT_RAW_CAMERA_INTENT:Landroid/content/Intent;

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 95
    .line 96
    const-string v3, "android.intent.action.MAIN"

    .line 97
    .line 98
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSecure()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_8

    .line 106
    .line 107
    aget-object v4, v2, p1

    .line 108
    .line 109
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->launchInsecureMain:Z

    .line 113
    .line 114
    if-eqz v4, :cond_8

    .line 115
    .line 116
    const-string v4, "android.intent.category.LAUNCHER"

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    aget-object v4, v2, p1

    .line 122
    .line 123
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 127
    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    move-object v4, v0

    .line 136
    :goto_1
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 144
    .line 145
    const/4 v5, 0x1

    .line 146
    invoke-virtual {p0, v1, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-eqz p0, :cond_6

    .line 151
    .line 152
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 153
    .line 154
    :cond_6
    if-eqz v0, :cond_7

    .line 155
    .line 156
    new-instance p1, Landroid/content/ComponentName;

    .line 157
    .line 158
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 159
    .line 160
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 161
    .line 162
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 163
    .line 164
    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    aget-object p0, v2, p1

    .line 172
    .line 173
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 177
    .line 178
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_8
    aget-object p0, v2, p1

    .line 183
    .line 184
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 188
    .line 189
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    :goto_2
    const-string p0, "isSecure"

    .line 193
    .line 194
    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    const/high16 p0, 0x10010000

    .line 198
    .line 199
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    :goto_3
    return-object p0

    .line 204
    :cond_9
    :goto_4
    const-string p0, "getIntent wrong param : "

    .line 205
    .line 206
    invoke-static {p0, p1, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-object v0
.end method

.method public final getKeyguardBottomAreaShortcutTask(Ljava/lang/String;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->taskConfigs:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    check-cast v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    .line 37
    .line 38
    :cond_2
    return-object v0
.end method

.method public final getQuickAffordanceConfigList()Ljava/util/List;
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->values()[Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_4

    .line 14
    .line 15
    aget-object v4, v0, v3

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 22
    .line 23
    aget-object v6, v5, v4

    .line 24
    .line 25
    if-eqz v6, :cond_3

    .line 26
    .line 27
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    .line 28
    .line 29
    if-eqz v7, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-nez v7, :cond_0

    .line 36
    .line 37
    iget-object v7, v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 38
    .line 39
    if-eqz v7, :cond_3

    .line 40
    .line 41
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    if-nez v7, :cond_0

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    aget-object v4, v5, v4

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v4, 0x0

    .line 62
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getKeyguardBottomAreaShortcutTask(Ljava/lang/String;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;

    .line 68
    .line 69
    invoke-direct {v5, v6, p0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 70
    .line 71
    .line 72
    move-object v4, v5

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    :goto_2
    sget-object v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    .line 75
    .line 76
    :goto_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    return-object v1
.end method

.method public final getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isDefaultShortcutIcon(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v1, "com.sec.android.app.camera"

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const p1, 0x7f080797

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    :goto_1
    return-object v0
.end method

.method public final getShortcutContentDescription(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 8
    .line 9
    aget-object v0, p0, p1

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string p0, "Shortcut"

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    aget-object p0, p0, p1

    .line 26
    .line 27
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const-string p0, "IllegalArgument : "

    .line 34
    .line 35
    const-string v0, "KeyguardShortcutManager"

    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    :goto_1
    return-object p0
.end method

.method public final getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 8
    .line 9
    aget-object p0, p0, p1

    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    const-string p0, "IllegalArgument : "

    .line 18
    .line 19
    const-string v0, "KeyguardShortcutManager"

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getSuspended(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "getSuspended() - Not found package name = "

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "KeyguardShortcutManager"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final grayInvertDrawable(Landroid/graphics/Bitmap;ZLjava/lang/String;ZZ)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p1, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "com.samsung.android.aremoji"

    .line 27
    .line 28
    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    const-string v3, "com.sec.android.mimage.avatarstickers"

    .line 35
    .line 36
    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v3, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    move v3, v1

    .line 46
    :goto_1
    const/4 v4, 0x0

    .line 47
    if-nez v3, :cond_a

    .line 48
    .line 49
    const v3, 0x7f0607fd

    .line 50
    .line 51
    .line 52
    const v5, 0x7f0607fc

    .line 53
    .line 54
    .line 55
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    if-nez p3, :cond_3

    .line 58
    .line 59
    if-eqz p4, :cond_3

    .line 60
    .line 61
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    move v3, v5

    .line 66
    :cond_2
    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 71
    .line 72
    invoke-direct {p0, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 76
    .line 77
    .line 78
    goto :goto_6

    .line 79
    :cond_3
    const-string p4, "com.samsung.android.oneconnect"

    .line 80
    .line 81
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    if-nez p4, :cond_5

    .line 86
    .line 87
    const-string p4, "com.samsung.android.tvplus"

    .line 88
    .line 89
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-eqz p3, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    move p3, v2

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    :goto_2
    move p3, v1

    .line 99
    :goto_3
    if-eqz p3, :cond_7

    .line 100
    .line 101
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    .line 102
    .line 103
    if-eqz p2, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    move v3, v5

    .line 107
    :goto_4
    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 112
    .line 113
    invoke-direct {p0, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_7
    new-instance p3, Landroid/graphics/ColorMatrix;

    .line 121
    .line 122
    invoke-direct {p3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 126
    .line 127
    .line 128
    iget-object p4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 129
    .line 130
    invoke-virtual {p4}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 131
    .line 132
    .line 133
    move-result p4

    .line 134
    if-eqz p4, :cond_8

    .line 135
    .line 136
    if-nez p5, :cond_8

    .line 137
    .line 138
    move v2, v1

    .line 139
    :cond_8
    xor-int/2addr p2, v2

    .line 140
    if-eqz p2, :cond_9

    .line 141
    .line 142
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->WHITE_BG_INVERT:Landroid/graphics/ColorMatrix;

    .line 143
    .line 144
    invoke-virtual {p3, p2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->WHITE_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

    .line 148
    .line 149
    invoke-virtual {p3, p0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->BLACK_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

    .line 154
    .line 155
    invoke-virtual {p3, p0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 156
    .line 157
    .line 158
    :goto_5
    new-instance p0, Landroid/graphics/ColorMatrixColorFilter;

    .line 159
    .line 160
    invoke-direct {p0, p3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 164
    .line 165
    .line 166
    :cond_a
    :goto_6
    new-instance p0, Landroid/graphics/Canvas;

    .line 167
    .line 168
    invoke-direct {p0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 172
    .line 173
    .line 174
    return-object p1
.end method

.method public final hasShortcut(I)Z
    .locals 5

    .line 1
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v2, 0x2

    .line 20
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 21
    .line 22
    if-gt v2, p1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 28
    .line 29
    const-string v4, "lockscreen_show_shortcut"

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ne v2, v0, :cond_1

    .line 40
    .line 41
    move v2, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v2, v1

    .line 44
    :goto_0
    if-eqz v2, :cond_2

    .line 45
    .line 46
    aget-object v2, v3, p1

    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    move v2, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    move v2, v1

    .line 58
    :goto_2
    if-eqz v2, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    aget-object v2, v3, p1

    .line 67
    .line 68
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    :cond_3
    aget-object v2, v3, p1

    .line 76
    .line 77
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    aget-object p1, v3, p1

    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_5

    .line 103
    .line 104
    :cond_4
    move v1, v0

    .line 105
    :cond_5
    return v1
.end method

.method public final isDefaultShortcutIcon(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->DEF_SHORTCUT:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    if-eqz p1, :cond_5

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mHasSPenFeature:Z

    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIsTablet:Z

    .line 30
    .line 31
    sparse-switch v0, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :sswitch_0
    const-string p0, "com.sec.android.app.camera"

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_4

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :sswitch_1
    const-string v0, "com.samsung.android.app.notes"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    if-eqz p0, :cond_5

    .line 54
    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :sswitch_2
    const-string p0, "Flashlight"

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :sswitch_3
    const-string v0, "com.samsung.android.dialer"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    xor-int/lit8 v2, p0, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :sswitch_4
    const-string v0, "com.sec.android.app.sbrowser"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    if-eqz p0, :cond_5

    .line 89
    .line 90
    if-nez v3, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :sswitch_5
    const-string p0, "Dnd"

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    :goto_0
    move v2, v1

    .line 103
    :cond_5
    :goto_1
    return v2

    .line 104
    nop

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x10cfa -> :sswitch_5
        0x263106eb -> :sswitch_4
        0x2a3b2bfd -> :sswitch_3
        0x304d9746 -> :sswitch_2
        0x466f1cd4 -> :sswitch_1
        0x72a8643b -> :sswitch_0
    .end sparse-switch
.end method

.method public final isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v0, "device_policy"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    :goto_0
    return p0
.end method

.method public final isNoUnlockNeeded(I)Z
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 8
    .line 9
    aget-object p0, p0, p1

    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mNoUnlockNeeded:Z

    .line 15
    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const-string p0, "isNoUnlockNeeded wrong param: "

    .line 18
    .line 19
    const-string v0, "KeyguardShortcutManager"

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final isPanelIconTransitionNeeded(I)Z
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ge p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 7
    .line 8
    aget-object v0, p0, p1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    aget-object p0, p0, p1

    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "Flashlight"

    .line 31
    .line 32
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_1
    :goto_0
    const-string p0, "IllegalArgument : "

    .line 38
    .line 39
    const-string v0, "KeyguardShortcutManager"

    .line 40
    .line 41
    invoke-static {p0, p1, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final isSecure()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 7
    .line 8
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public final isShortcutForCamera(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isShortcutForLiveIcon(I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 2
    .line 3
    aget-object v0, p0, p1

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    aget-object p0, p0, p1

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 20
    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    .line 29
    .line 30
    array-length v0, p1

    .line 31
    move v2, v1

    .line 32
    :goto_0
    if-ge v2, v0, :cond_2

    .line 33
    .line 34
    aget-object v3, p1, v2

    .line 35
    .line 36
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return v1
.end method

.method public final isShortcutForPhone(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-string p1, "com.samsung.android.dialer"

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p1, "com.samsung.android.dialer.DialtactsActivity"

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    return p0
.end method

.method public final isShortcutPermission(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.samsung.keyguard.SHORTCUT_PERMISSION"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    const v3, -0x27755efa

    .line 21
    .line 22
    .line 23
    const-string v4, "com.snapchat.android"

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    if-eq v0, v3, :cond_3

    .line 28
    .line 29
    const v3, 0x3ae42c58

    .line 30
    .line 31
    .line 32
    if-eq v0, v3, :cond_2

    .line 33
    .line 34
    const v3, 0x7cd40770

    .line 35
    .line 36
    .line 37
    if-eq v0, v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "9c1c8918e17cc686d3274f41cd04154b4cbe6a5272700de3f4f30c2c62ae2ad4"

    .line 48
    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isAllowNonPlatformKeyApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const-string v0, "com.sec.android.app.popupcalculator"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_6

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-string v0, "com.instagram.android"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    const-string v0, "2f4eaa0c67e2a670935ca79164f3ba4b426988b6997a97bb31152cc317dc648a"

    .line 78
    .line 79
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isAllowNonPlatformKeyApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const-string v0, "a044dbdb712ab81e76949f5d76ada4dd7035643b462cb7ea2b75ecae637c2da3"

    .line 85
    .line 86
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isAllowNonPlatformKeyApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    const-string v0, "9e92121f90ad13d9f1085b06ea9e7c72ca6d5b603cdfd6adaff7b3071792d71f"

    .line 93
    .line 94
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isAllowNonPlatformKeyApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    move p0, v2

    .line 102
    goto :goto_2

    .line 103
    :cond_6
    :goto_1
    move p0, v1

    .line 104
    :goto_2
    if-eqz p0, :cond_7

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_7
    move v1, v2

    .line 108
    :cond_8
    :goto_3
    return v1
.end method

.method public final isTaskType(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-lt p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 9
    .line 10
    aget-object p0, p0, p1

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->shortcutProperty:I

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    if-ne p0, p1, :cond_1

    .line 19
    .line 20
    move v0, p1

    .line 21
    :cond_1
    return v0

    .line 22
    :cond_2
    :goto_0
    const-string p0, "isTaskType wrong param: "

    .line 23
    .line 24
    const-string v1, "KeyguardShortcutManager"

    .line 25
    .line 26
    invoke-static {p0, p1, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v0
.end method

.method public final isTaskTypeEnabled(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ge p1, v1, :cond_3

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 8
    .line 9
    aget-object v1, p0, p1

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    sget-object v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    aget-object v1, p0, p1

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Flashlight"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    aget-object p0, p0, p1

    .line 40
    .line 41
    check-cast p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 44
    .line 45
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v2, "Dnd"

    .line 53
    .line 54
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    aget-object p0, p0, p1

    .line 61
    .line 62
    check-cast p0, Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;->controller:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 65
    .line 66
    check-cast p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 67
    .line 68
    iget p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 69
    .line 70
    if-eqz p0, :cond_2

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    :cond_2
    :goto_0
    return v0

    .line 74
    :cond_3
    :goto_1
    const-string p0, "IllegalArgument : "

    .line 75
    .line 76
    const-string v1, "KeyguardShortcutManager"

    .line 77
    .line 78
    invoke-static {p0, p1, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v0
.end method

.method public final isblendNeeded(Landroid/content/pm/ActivityInfo;Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "com.sec.android.app.camera"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 16
    .line 17
    const-string v0, "current_sec_appicon_theme_package"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    move p0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p0, v2

    .line 32
    :goto_0
    if-nez p0, :cond_3

    .line 33
    .line 34
    instance-of p0, p2, Landroid/graphics/drawable/DrawableWrapper;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    const-string p2, "com.sec.android.app.launcher.icon_theme"

    .line 44
    .line 45
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_1
    if-eqz p1, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v1, v2

    .line 53
    :cond_3
    :goto_1
    return v1
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 4

    .line 1
    const-string v0, "lock_application_shortcut"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    const-string v0, "current_sec_appicon_theme_package"

    .line 14
    .line 15
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const-string/jumbo v0, "set_shortcuts_mode"

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcutVisibleForMDM:Z

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcutVisibleForMDM:Z

    .line 65
    .line 66
    const-string v1, "onSystemSettingsChanged oldShortcutVisibleForMDM = "

    .line 67
    .line 68
    const-string v2, ", mShortcutVisibleForMDM = "

    .line 69
    .line 70
    const-string v3, "KeyguardShortcutManager"

    .line 71
    .line 72
    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcutVisibleForMDM:Z

    .line 76
    .line 77
    if-eq p1, v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    const-string v0, "accessibility_reduce_transparency"

    .line 84
    .line 85
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutIcons()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_2
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIsPermDisabled:Z

    .line 2
    .line 3
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIsPermDisabled:Z

    .line 19
    .line 20
    if-eq p1, p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutForLiveIcon(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutIcon(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutForLiveIcon(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutIcon(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final sendUpdateShortcutViewToCallback(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutCallback;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutCallback;

    .line 35
    .line 36
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;->updateShortcutView(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public final updateShortcutIcon(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;

    .line 10
    .line 11
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;-><init>(ILcom/android/systemui/statusbar/KeyguardShortcutManager;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 19
    .line 20
    aget-object v0, v0, p1

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;

    .line 30
    .line 31
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2;-><init>(ILcom/android/systemui/statusbar/KeyguardShortcutManager;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateShortcutIcons()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutIcon(I)V

    .line 6
    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void
.end method

.method public final updateShortcuts()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mUpdateShortcutsRunnable:Lcom/android/systemui/statusbar/KeyguardShortcutManager$mUpdateShortcutsRunnable$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isDndCallbackAdded:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 16
    .line 17
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->dndShortcutIndex:I

    .line 18
    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    check-cast v0, Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;->callback:Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig$callback$1;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;->controller:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 26
    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isDndCallbackAdded:Z

    .line 34
    .line 35
    :cond_0
    return-void
.end method
