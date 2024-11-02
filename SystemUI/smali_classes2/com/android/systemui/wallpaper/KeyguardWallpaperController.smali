.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpaper/KeyguardWallpaper;
.implements Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# static fields
.field public static sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# instance fields
.field public final mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

.field public mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

.field public mBottom:I

.field public mBouncer:Z

.field public final mColorProvider:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDismissCancelled:Z

.field public mDlsRestoreDispatcher:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

.field public mDlsViewMode:I

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mIsBlurredViewAdded:Z

.field public mIsFingerPrintTouchDown:Z

.field public mIsGoingToSleep:Z

.field public mIsKeyguardShowing:Z

.field public mIsLockscreenDisabled:Z

.field public mIsPendingTypeChange:Z

.field public mIsPendingTypeChangeForTransition:Z

.field public mIsPluginLockReady:Z

.field public final mKnoxStateCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMainHandler:Landroid/os/Handler;

.field public mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

.field public mNoSensorConsumer:Ljava/util/function/Consumer;

.field public final mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

.field public mOccluded:Z

.field public mOldLockScreenWallpaperSettingsValue:I

.field public mOldLockScreenWallpaperSubSettingsValue:I

.field public mOldTransparentType:I

.field public mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

.field public mPendingRotationForTransitionView:Z

.field public final mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public mRootView:Landroid/view/ViewGroup;

.field public mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

.field public mRunnableSetBackground:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;

.field public mRunnableUpdate:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

.field public mScreenOn:Z

.field public final mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public final mService:Landroid/app/IWallpaperManager;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field public final mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

.field public final mTransitionListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

.field public mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mVisibility:I

.field public final mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

.field public final mWallpaperChangeNotifier:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

.field public mWallpaperChanged:Z

.field public final mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

.field public final mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

.field public mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

.field public mWcgConsumer:Ljava/util/function/Consumer;

.field public final mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/WallpaperManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/pluginlock/PluginLockUtils;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/wallpaper/WallpaperChangeObserver;Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 14
    .line 15
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 16
    .line 17
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsGoingToSleep:Z

    .line 18
    .line 19
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsFingerPrintTouchDown:Z

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    iput v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    .line 23
    .line 24
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 25
    .line 26
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChangeForTransition:Z

    .line 27
    .line 28
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPendingRotationForTransitionView:Z

    .line 29
    .line 30
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    .line 31
    .line 32
    iput v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 33
    .line 34
    const/4 v5, -0x1

    .line 35
    iput v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    .line 36
    .line 37
    iput v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    .line 38
    .line 39
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    .line 40
    .line 41
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 42
    .line 43
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    .line 44
    .line 45
    iput v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 46
    .line 47
    new-instance v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

    .line 48
    .line 49
    invoke-direct {v6, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 50
    .line 51
    .line 52
    iput-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mColorProvider:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

    .line 53
    .line 54
    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    .line 55
    .line 56
    const/4 v6, 0x2

    .line 57
    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iput-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 62
    .line 63
    new-instance v6, Landroid/os/HandlerThread;

    .line 64
    .line 65
    const-string v7, "KeyguardWallpaperThread"

    .line 66
    .line 67
    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v7, Landroid/os/Handler;

    .line 71
    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    .line 78
    .line 79
    iput-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 80
    .line 81
    new-instance v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    .line 82
    .line 83
    invoke-direct {v7, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 84
    .line 85
    .line 86
    iput-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    .line 87
    .line 88
    new-instance v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    .line 89
    .line 90
    invoke-direct {v7, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 91
    .line 92
    .line 93
    iput-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKnoxStateCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    .line 94
    .line 95
    new-instance v8, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 96
    .line 97
    invoke-direct {v8, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 98
    .line 99
    .line 100
    iput-object v8, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 101
    .line 102
    new-instance v8, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    .line 103
    .line 104
    invoke-direct {v8, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 105
    .line 106
    .line 107
    iput-object v8, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    .line 108
    .line 109
    const-string v8, "KeyguardWallpaperController"

    .line 110
    .line 111
    const-string v9, "KeyguardWallpaperController()"

    .line 112
    .line 113
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iput-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    move-object/from16 v9, p2

    .line 119
    .line 120
    iput-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 121
    .line 122
    move-object/from16 v9, p3

    .line 123
    .line 124
    iput-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 125
    .line 126
    move-object/from16 v9, p8

    .line 127
    .line 128
    iput-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 129
    .line 130
    move-object/from16 v9, p11

    .line 131
    .line 132
    iput-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 133
    .line 134
    move-object/from16 v9, p14

    .line 135
    .line 136
    iput-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 137
    .line 138
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 139
    .line 140
    .line 141
    const/16 v9, 0xa

    .line 142
    .line 143
    invoke-virtual {v6, v9}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 144
    .line 145
    .line 146
    new-instance v9, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 147
    .line 148
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-direct {v9, v0, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Looper;)V

    .line 153
    .line 154
    .line 155
    iput-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 156
    .line 157
    iput-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 158
    .line 159
    move-object/from16 v6, p5

    .line 160
    .line 161
    iput-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 162
    .line 163
    iput-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 164
    .line 165
    sput-object v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-static {v6, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(ILandroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    move-object/from16 v6, p9

    .line 175
    .line 176
    iput-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 177
    .line 178
    move-object/from16 v6, p10

    .line 179
    .line 180
    iput-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 181
    .line 182
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    .line 183
    .line 184
    invoke-direct {v6, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    iput-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 188
    .line 189
    const-string/jumbo v6, "wallpaper"

    .line 190
    .line 191
    .line 192
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-static {v6}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    iput-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    .line 201
    .line 202
    const-string v10, "DisplaySolution"

    .line 203
    .line 204
    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    check-cast v10, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 209
    .line 210
    iput-object v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 211
    .line 212
    move-object/from16 v10, p16

    .line 213
    .line 214
    iput-object v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChangeNotifier:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    .line 215
    .line 216
    new-instance v10, Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    .line 217
    .line 218
    invoke-direct {v10, v1, v2, v3}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/util/SettingsHelper;)V

    .line 219
    .line 220
    .line 221
    iput-object v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    .line 222
    .line 223
    const-string/jumbo v11, "wallpaper_pref"

    .line 224
    .line 225
    .line 226
    iget-object v12, v10, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->mContext:Landroid/content/Context;

    .line 227
    .line 228
    invoke-virtual {v12, v11, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    const-string/jumbo v12, "version"

    .line 233
    .line 234
    .line 235
    invoke-interface {v11, v12, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    const/4 v13, 0x1

    .line 240
    const/16 v14, 0x12

    .line 241
    .line 242
    const/4 v15, 0x6

    .line 243
    if-lt v5, v13, :cond_0

    .line 244
    .line 245
    move v5, v13

    .line 246
    goto :goto_0

    .line 247
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v13, "migrateIfNeeds: perform migration. from="

    .line 250
    .line 251
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v5, ", to=1"

    .line 258
    .line 259
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    const-string v5, "WallpaperAnalytics"

    .line 267
    .line 268
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    invoke-virtual {v10, v15}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    .line 272
    .line 273
    .line 274
    const/4 v4, 0x5

    .line 275
    invoke-virtual {v10, v4}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    .line 276
    .line 277
    .line 278
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 279
    .line 280
    if-eqz v4, :cond_1

    .line 281
    .line 282
    invoke-virtual {v10, v14}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    .line 283
    .line 284
    .line 285
    const/16 v4, 0x11

    .line 286
    .line 287
    invoke-virtual {v10, v4}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    .line 288
    .line 289
    .line 290
    :cond_1
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    const/4 v5, 0x1

    .line 295
    invoke-interface {v4, v12, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 296
    .line 297
    .line 298
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 299
    .line 300
    .line 301
    :goto_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 302
    .line 303
    const-string v10, "android.intent.action.WALLPAPER_CHANGED"

    .line 304
    .line 305
    invoke-direct {v4, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    new-instance v10, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$7;

    .line 309
    .line 310
    invoke-direct {v10, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$7;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    iput v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    .line 321
    .line 322
    new-instance v4, Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 323
    .line 324
    invoke-direct {v4}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    .line 325
    .line 326
    .line 327
    iput-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 328
    .line 329
    const/4 v4, 0x0

    .line 330
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    .line 331
    .line 332
    .line 333
    move-result v10

    .line 334
    iput v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    .line 335
    .line 336
    const/16 v4, 0x10

    .line 337
    .line 338
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    iput v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    .line 343
    .line 344
    if-nez v6, :cond_2

    .line 345
    .line 346
    const-string v0, "WallpaperManagerService is not ready yet! Just return here!"

    .line 347
    .line 348
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :cond_2
    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;

    .line 353
    .line 354
    invoke-direct {v3, v9}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;)V

    .line 355
    .line 356
    .line 357
    move-object/from16 v4, p15

    .line 358
    .line 359
    iput-object v3, v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mEventConsumer:Ljava/util/function/Consumer;

    .line 360
    .line 361
    new-instance v3, Ljava/lang/Thread;

    .line 362
    .line 363
    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 364
    .line 365
    const/4 v9, 0x0

    .line 366
    invoke-direct {v4, v0, v9}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 367
    .line 368
    .line 369
    const-string v10, "LockWallpaperCB"

    .line 370
    .line 371
    invoke-direct {v3, v4, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 375
    .line 376
    .line 377
    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 378
    .line 379
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 384
    .line 385
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 386
    .line 387
    invoke-virtual {v3, v7}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 388
    .line 389
    .line 390
    check-cast v2, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 391
    .line 392
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 393
    .line 394
    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 395
    .line 396
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 397
    .line 398
    if-eqz v2, :cond_3

    .line 399
    .line 400
    iput-object v0, v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 401
    .line 402
    :cond_3
    const/16 v2, 0x25f

    .line 403
    .line 404
    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 405
    .line 406
    .line 407
    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 408
    .line 409
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 410
    .line 411
    if-eqz v2, :cond_4

    .line 412
    .line 413
    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda3;

    .line 414
    .line 415
    invoke-direct {v3, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 416
    .line 417
    .line 418
    const/16 v0, 0x3e9

    .line 419
    .line 420
    move-object/from16 v4, p13

    .line 421
    .line 422
    check-cast v4, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 423
    .line 424
    invoke-virtual {v4, v3, v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;I)Z

    .line 425
    .line 426
    .line 427
    :cond_4
    :try_start_0
    invoke-interface {v6, v15}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    const/4 v3, 0x3

    .line 432
    if-ne v0, v3, :cond_5

    .line 433
    .line 434
    move v4, v5

    .line 435
    goto :goto_1

    .line 436
    :cond_5
    move v4, v9

    .line 437
    :goto_1
    if-nez v4, :cond_7

    .line 438
    .line 439
    if-eqz v2, :cond_7

    .line 440
    .line 441
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 442
    .line 443
    if-nez v0, :cond_7

    .line 444
    .line 445
    invoke-interface {v6, v14}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-ne v0, v3, :cond_6

    .line 450
    .line 451
    move v4, v5

    .line 452
    goto :goto_2

    .line 453
    :cond_6
    move v4, v9

    .line 454
    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    .line 455
    .line 456
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->enableDlsIfDisabled(Landroid/content/Context;)Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    if-nez v0, :cond_8

    .line 461
    .line 462
    const-string v0, "Failed to enable DLS."

    .line 463
    .line 464
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .line 466
    .line 467
    goto :goto_3

    .line 468
    :catch_0
    move-exception v0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v2, "System dead?"

    .line 472
    .line 473
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    :cond_8
    :goto_3
    return-void
.end method

.method public static isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p0, v1, :cond_5

    .line 8
    .line 9
    if-eqz p0, :cond_6

    .line 10
    .line 11
    if-eq p0, v2, :cond_4

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq p0, v1, :cond_4

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq p0, v1, :cond_3

    .line 18
    .line 19
    const/16 v1, 0x3e8

    .line 20
    .line 21
    if-eq p0, v1, :cond_6

    .line 22
    .line 23
    const/4 v1, 0x7

    .line 24
    if-eq p0, v1, :cond_2

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    if-eq p0, v1, :cond_1

    .line 29
    .line 30
    const-string p1, "isMatching: Invalid type. type = "

    .line 31
    .line 32
    const-string v1, "KeyguardWallpaperController"

    .line 33
    .line 34
    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    instance-of p0, p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 39
    .line 40
    if-eqz p0, :cond_7

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    instance-of p0, p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 44
    .line 45
    if-eqz p0, :cond_7

    .line 46
    .line 47
    return v2

    .line 48
    :cond_3
    instance-of p0, p1, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    .line 49
    .line 50
    if-eqz p0, :cond_7

    .line 51
    .line 52
    return v2

    .line 53
    :cond_4
    instance-of p0, p1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 54
    .line 55
    if-eqz p0, :cond_7

    .line 56
    .line 57
    return v2

    .line 58
    :cond_5
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 59
    .line 60
    if-nez p0, :cond_6

    .line 61
    .line 62
    return v0

    .line 63
    :cond_6
    instance-of p0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 64
    .line 65
    if-eqz p0, :cond_7

    .line 66
    .line 67
    return v2

    .line 68
    :cond_7
    :goto_0
    return v0
.end method

.method public static isSubDisplay()Z
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method


# virtual methods
.method public final applyBlur(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string p0, "KeyguardWallpaperController"

    .line 7
    .line 8
    const-string p1, "applyBlur: ignored by DLS"

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->showBlurredViewIfNeededOnUiThread()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 31
    .line 32
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    move p1, v1

    .line 48
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-ne v0, v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurInternalOnUiThread(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 63
    .line 64
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;

    .line 65
    .line 66
    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method public final applyBlurFilter(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast v0, Landroid/view/View;

    .line 6
    .line 7
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;->run()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final applyBlurInternalOnUiThread(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "applyBlurInternal: amount = "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "KeyguardWallpaperController"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    int-to-float v1, p1

    .line 28
    const/4 v2, 0x0

    .line 29
    cmpl-float v1, v1, v2

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateBlurState(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    int-to-float p0, p1

    .line 58
    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->applyBlur(F)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurFilter(I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    int-to-float p0, p1

    .line 70
    sput p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sLastAmount:F

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_BLUR:Z

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    instance-of v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 82
    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurFilter(I)V

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_2
    return-void
.end method

.method public final cleanUp(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperAndLockDisabled(ILandroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "KeyguardWallpaperController"

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "cleanUpOnUiThread, remove runnable"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;ZI)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v0, "cleanUp() is cancelled because view is already null"

    .line 50
    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "cleanUp: DO NOT clean up keyguard wallpaper"

    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public final cleanUpBlurredView()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpBlurredViewOnUiThread()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final cleanUpBlurredViewOnUiThread()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "cleanUpBlurredView: mBlurredView = "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "KeyguardWallpaperController"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->cleanUp()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 45
    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    .line 48
    .line 49
    return-void
.end method

.method public final disableRotateIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p1, "KeyguardWallpaperController: "

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p3, "WallpaperEventNotifier:"

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    new-instance p3, Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 19
    .line 20
    invoke-direct {p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/text/DateFormat;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 31
    .line 32
    .line 33
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object p1, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string p3, "\n"

    .line 40
    .line 41
    const-string v0, "\tLast wallpaper color = "

    .line 42
    .line 43
    const-string v1, "KeyguardWallpaperColors:"

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 54
    .line 55
    .line 56
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :try_start_2
    iget-object p1, p1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    const/4 p1, 0x0

    .line 69
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_1
    move-exception p1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, "\nDump error: "

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    throw p0

    .line 116
    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 117
    .line 118
    if-eqz p0, :cond_1

    .line 119
    .line 120
    const-string p1, "MultiPackDispatcher"

    .line 121
    .line 122
    const-string p3, "mLastUri = "

    .line 123
    .line 124
    invoke-static {p2, p1, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLastUri:Landroid/net/Uri;

    .line 129
    .line 130
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    sget-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 141
    .line 142
    const-string p0, "Dump of WallpaperUtils: "

    .line 143
    .line 144
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string p0, "  isAdaptiveColorMode: "

    .line 148
    .line 149
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 159
    .line 160
    .line 161
    const-string p0, "  isExternalLiveWallpaper: "

    .line 162
    .line 163
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper()Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 171
    .line 172
    .line 173
    const-string p0, "  Emergency mode: "

    .line 174
    .line 175
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    sget-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 179
    .line 180
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 181
    .line 182
    .line 183
    const-string p0, "  UltraPowerSavingMode: "

    .line 184
    .line 185
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sget-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 189
    .line 190
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 191
    .line 192
    .line 193
    const-string p0, "  DeXMode: "

    .line 194
    .line 195
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const/4 p0, 0x0

    .line 199
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 200
    .line 201
    .line 202
    const-string p0, "  Type: "

    .line 203
    .line 204
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    .line 208
    .line 209
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    const-string p0, "  isVideoWallpaper: "

    .line 213
    .line 214
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 222
    .line 223
    .line 224
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 225
    .line 226
    if-eqz p0, :cond_2

    .line 227
    .line 228
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 229
    .line 230
    if-nez p0, :cond_2

    .line 231
    .line 232
    const-string p0, "  sCachedWallpaperColors(FLAG_DISPLAY_PHONE): "

    .line 233
    .line 234
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaperColors:Landroid/util/SparseArray;

    .line 238
    .line 239
    const/4 p1, 0x4

    .line 240
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    const-string p1, "  sCachedWallpaperColors(FLAG_DISPLAY_SUB): "

    .line 248
    .line 249
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const/16 p1, 0x10

    .line 253
    .line 254
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 262
    .line 263
    .line 264
    return-void
.end method

.method public final forceBroadcastWhiteKeyguardWallpaper(I)V
    .locals 3

    .line 1
    const-string v0, "forceBroadcastWhiteKeyguardWallpaper: cur = "

    .line 2
    .line 3
    const-string v1, " , old = "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    .line 10
    .line 11
    const-string v2, "KeyguardWallpaperController"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "white_lockscreen_wallpaper"

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    .line 39
    .line 40
    return-void
.end method

.method public final getFbeWallpaperType(I)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isPluginLockFbeCondition()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 24
    .line 25
    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 30
    .line 31
    check-cast v2, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 40
    .line 41
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperVideo(I)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    const/16 p1, 0x8

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move p1, v1

    .line 53
    :cond_2
    :goto_1
    return p1
.end method

.method public final getHint(JZ)Landroid/app/SemWallpaperColors$Item;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_3
    const-string p0, "KeyguardWallpaperController"

    .line 44
    .line 45
    const-string p1, "getDummyHintItem()"

    .line 46
    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    new-instance p0, Landroid/app/SemWallpaperColors$Item;

    .line 51
    .line 52
    const/high16 p1, 0x3f000000    # 0.5f

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    const/high16 p3, 0x3f800000    # 1.0f

    .line 56
    .line 57
    invoke-direct {p0, p2, p3, p1}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    .line 58
    .line 59
    .line 60
    return-object p0
.end method

.method public final getLockWallpaperType(Z)I
    .locals 8

    .line 1
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    :cond_1
    const-string v2, "\n - isIncludePluginLock: "

    .line 19
    .line 20
    const-string v4, "\n - mService: "

    .line 21
    .line 22
    invoke-static {v2, p1, v4}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    .line 32
    .line 33
    const-string v5, "KeyguardWallpaperController"

    .line 34
    .line 35
    const/4 v6, -0x1

    .line 36
    if-eqz v4, :cond_b

    .line 37
    .line 38
    const-string v7, "\n - type[from WMS]: "

    .line 39
    .line 40
    if-eqz p1, :cond_a

    .line 41
    .line 42
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 43
    .line 44
    check-cast p1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const-string v4, "\n - isDlsWallpaperEnabled: "

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 59
    .line 60
    check-cast p1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 69
    .line 70
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 73
    .line 74
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 77
    .line 78
    if-eqz p0, :cond_2

    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    check-cast p1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 93
    .line 94
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .line 96
    const/4 p1, 0x2

    .line 97
    if-eq p0, p1, :cond_3

    .line 98
    .line 99
    :cond_2
    move v1, v3

    .line 100
    :cond_3
    :try_start_1
    const-string p0, "\n - type[DLS]: "

    .line 101
    .line 102
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isPluginLockFbeCondition()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    invoke-virtual {p0, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getFbeWallpaperType(I)I

    .line 122
    .line 123
    .line 124
    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 125
    :try_start_3
    const-string p0, "\n - type[from FBE]: "

    .line 126
    .line 127
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    .line 132
    .line 133
    :goto_0
    move v6, v1

    .line 134
    goto/16 :goto_5

    .line 135
    .line 136
    :catch_0
    move-exception p0

    .line 137
    goto :goto_3

    .line 138
    :cond_5
    :try_start_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 139
    .line 140
    check-cast p1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled(I)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_9

    .line 147
    .line 148
    const/4 p1, 0x3

    .line 149
    if-ne v6, p1, :cond_9

    .line 150
    .line 151
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_6

    .line 156
    .line 157
    const/4 p1, 0x1

    .line 158
    goto :goto_1

    .line 159
    :cond_6
    move p1, v3

    .line 160
    :goto_1
    if-eqz p1, :cond_8

    .line 161
    .line 162
    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 163
    .line 164
    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 169
    .line 170
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_8

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 179
    .line 180
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 181
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperVideo(I)Z

    .line 183
    .line 184
    .line 185
    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 186
    if-eqz p0, :cond_7

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_7
    move v1, v3

    .line 190
    goto :goto_2

    .line 191
    :cond_8
    move v1, v6

    .line 192
    :goto_2
    :try_start_5
    const-string p0, "\n - type[force FBE]: "

    .line 193
    .line 194
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :goto_3
    move v6, v1

    .line 202
    goto :goto_4

    .line 203
    :cond_9
    :try_start_6
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :catch_1
    move-exception p0

    .line 211
    goto :goto_4

    .line 212
    :cond_a
    invoke-interface {v4, v0}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v0, "System dead?"

    .line 226
    .line 227
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    :cond_b
    :goto_5
    const-string p0, "\n - WallpaperUtils.getCurrentWhich(): "

    .line 241
    .line 242
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    sget p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 246
    .line 247
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string p1, "getLockWallpaperType: "

    .line 253
    .line 254
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    return v6
.end method

.method public final getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final getWallpaperColors(Z)Landroid/app/SemWallpaperColors;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    :cond_0
    const/16 p1, 0x11

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const/16 p1, 0x12

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 p1, 0x6

    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final getWallpaperViewType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 13
    .line 14
    instance-of v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    instance-of v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 p0, 0x4

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    instance-of v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const/4 p0, 0x7

    .line 31
    goto :goto_1

    .line 32
    :cond_3
    instance-of p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 33
    .line 34
    if-eqz p0, :cond_4

    .line 35
    .line 36
    const/16 p0, 0x8

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_4
    const/4 p0, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_5
    :goto_0
    const/4 p0, -0x1

    .line 42
    :goto_1
    const-string v0, "getWallpaperViewType: type = "

    .line 43
    .line 44
    const-string v1, "KeyguardWallpaperController"

    .line 45
    .line 46
    invoke-static {v0, p0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return p0
.end method

.method public final handleAdaptiveColorModeChanged(Z)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorModeSub:Z

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 14
    .line 15
    const-string v3, "lock_adaptive_color_sub"

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :goto_1
    if-eq v0, v1, :cond_5

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const-string v4, "lockscreen_pref"

    .line 48
    .line 49
    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "9010"

    .line 58
    .line 59
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v2, "9009"

    .line 77
    .line 78
    const-string v3, "Adaptive color (Default)"

    .line 79
    .line 80
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    .line 90
    .line 91
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iget-object v0, v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catch_0
    const/4 v0, 0x0

    .line 123
    :goto_2
    const-wide/16 v2, 0x2

    .line 124
    .line 125
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ZJLandroid/app/SemWallpaperColors;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    if-eqz p1, :cond_6

    .line 129
    .line 130
    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorModeSub:Z

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    .line 134
    .line 135
    :goto_3
    return-void
.end method

.method public final handleColorThemeStateChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled$1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v2, "lock_adaptive_color_sub"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v2, "lock_adaptive_color"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    and-int/lit8 v0, v1, 0x2

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 41
    .line 42
    or-int/lit8 v1, v1, 0x2

    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveColorMode(IZ)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    and-int/lit8 v0, v1, 0x2

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 53
    .line 54
    and-int/lit8 v1, v1, -0x3

    .line 55
    .line 56
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveColorMode(IZ)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 60
    .line 61
    const-wide/16 v1, 0x400

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ZJLandroid/app/SemWallpaperColors;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final handleDlsViewMode(IZ)V
    .locals 2

    .line 1
    const-string v0, "handleDlsViewMode: mode = "

    .line 2
    .line 3
    const-string v1, "KeyguardWallpaperController"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 11
    .line 12
    if-eq p2, p1, :cond_3

    .line 13
    .line 14
    :cond_0
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    const/4 v0, 0x0

    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const/16 p1, 0x64

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move p1, v0

    .line 32
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-ne p2, v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurInternalOnUiThread(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 47
    .line 48
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;

    .line 49
    .line 50
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method public final handleDlsViewModeDelayed(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleWallpaperTypeChanged mDlsViewMode: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 9
    .line 10
    const-string v2, "KeyguardWallpaperController"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 21
    .line 22
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 26
    .line 27
    .line 28
    int-to-long p0, p1

    .line 29
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final handleWallpaperResourceUpdated()V
    .locals 13

    .line 1
    const-string v0, ", mWallpaperView == null ? "

    .line 2
    .line 3
    const-string v1, ", mRootView == null ? "

    .line 4
    .line 5
    const-string v2, ", isLiveWallpaperEnabled = "

    .line 6
    .line 7
    const-string v3, "handleWallpaperResourceUpdated: mIsLockscreenDisabled = "

    .line 8
    .line 9
    const-string v4, "KeyguardWallpaperController"

    .line 10
    .line 11
    const-string v5, "handleWallpaperResourceUpdated"

    .line 12
    .line 13
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    invoke-static {v6, v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperAndLockDisabled(ILandroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, 0x1

    .line 27
    if-nez v5, :cond_4

    .line 28
    .line 29
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 30
    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 44
    .line 45
    if-nez v5, :cond_4

    .line 46
    .line 47
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 58
    .line 59
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    if-nez v1, :cond_1

    .line 97
    .line 98
    move v1, v6

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    move v1, v3

    .line 101
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 117
    .line 118
    if-nez v0, :cond_2

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    move v6, v3

    .line 122
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :catch_0
    const-string v0, "handleWallpaperResourceUpdated: Exception while printing log."

    .line 141
    .line 142
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 146
    .line 147
    const/4 v1, 0x3

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_3

    .line 156
    .line 157
    const/4 v2, 0x0

    .line 158
    const/4 v4, 0x0

    .line 159
    const/4 v5, 0x1

    .line 160
    const/4 v6, 0x1

    .line 161
    const/4 v3, 0x0

    .line 162
    move-object v1, p0

    .line 163
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZZZ)V

    .line 164
    .line 165
    .line 166
    :cond_3
    return-void

    .line 167
    :cond_4
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_5

    .line 172
    .line 173
    const/4 v8, 0x0

    .line 174
    const/4 v10, 0x0

    .line 175
    const/4 v11, 0x1

    .line 176
    const/4 v12, 0x1

    .line 177
    const/4 v9, 0x0

    .line 178
    move-object v7, p0

    .line 179
    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZZZ)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableUpdate:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 184
    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    const-string v0, "handleWallpaperResourceUpdated, remove update runnable"

    .line 188
    .line 189
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableUpdate:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 200
    .line 201
    invoke-virtual {v0, v6}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 205
    .line 206
    const/16 v1, 0xd

    .line 207
    .line 208
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 209
    .line 210
    .line 211
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableUpdate:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 212
    .line 213
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    .line 217
    .line 218
    :goto_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 219
    .line 220
    if-eqz v0, :cond_7

    .line 221
    .line 222
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_7

    .line 227
    .line 228
    iput-boolean v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    .line 229
    .line 230
    :cond_7
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_8

    .line 235
    .line 236
    const/16 v0, 0x10

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_8
    const/4 v0, 0x4

    .line 240
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    .line 241
    .line 242
    or-int/lit8 v0, v0, 0x2

    .line 243
    .line 244
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method public final handleWallpaperTypeChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string p1, "handleWallpaperTypeChanged: mRootView is null."

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(IZ)V

    return-void
.end method

.method public final handleWallpaperTypeChanged(IZ)V
    .locals 55

    move-object/from16 v7, p0

    move/from16 v1, p2

    .line 4
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-static {v2, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperAndLockDisabled(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-boolean v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-eqz v0, :cond_0

    const-string v0, "handleWallpaperTypeChanged: mIsLockscreenDisabled"

    .line 6
    invoke-virtual {v7, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 7
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    return-void

    .line 8
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "handleWallpaperTypeChanged: type = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 10
    sget-boolean v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 11
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled(Z)Z

    move-result v3

    .line 12
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v9

    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getFbeWallpaperType(I)I

    move-result v10

    .line 14
    sget v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 15
    sget-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 16
    sget-object v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    aput v10, v4, v6

    const/4 v4, 0x6

    goto :goto_0

    .line 17
    :cond_1
    sget-object v5, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    aput v10, v5, v9

    .line 18
    :goto_0
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", which = "

    .line 19
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    sget v5, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 21
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", userId = "

    .line 22
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", upsm = "

    .line 23
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", em = "

    .line 24
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isLiveWallpaperSettingEnabled = "

    .line 25
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    iget-object v5, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda5;

    invoke-direct {v11, v7, v0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;ZZ)V

    invoke-virtual {v5, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    move-result v5

    const/16 v11, 0x8

    const/4 v12, 0x1

    if-eqz v5, :cond_2

    if-ne v10, v11, :cond_2

    iget-object v5, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v5, :cond_2

    move v5, v12

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    const-string v13, "KeyguardWallpaperController"

    if-eqz v5, :cond_3

    .line 28
    iget-boolean v5, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPendingRotationForTransitionView:Z

    if-eqz v5, :cond_3

    const-string v5, "handleWallpaperTypeChanged: Pending no sensor operation"

    .line 29
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 30
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    :goto_2
    if-nez v0, :cond_1a

    if-eqz v2, :cond_4

    goto/16 :goto_14

    .line 31
    :cond_4
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 32
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_5

    .line 33
    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    if-eqz v0, :cond_5

    move v0, v12

    goto :goto_3

    :cond_5
    move v0, v6

    :goto_3
    if-eqz v0, :cond_7

    const-string v0, ", MDM mode"

    .line 34
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 36
    new-instance v2, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v13, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v14, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    iget-object v15, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_6

    iget-boolean v1, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    if-nez v1, :cond_6

    move/from16 v17, v12

    goto :goto_4

    :cond_6
    move/from16 v17, v6

    :goto_4
    iget-object v1, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    iget-object v3, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v5, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v6, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    iget-object v8, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mColorProvider:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

    move-object v11, v2

    move-object v12, v0

    move/from16 v16, v4

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    invoke-direct/range {v11 .. v22}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;IZLcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;Ljavax/inject/Provider;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    .line 37
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZZZ)V

    return-void

    :cond_7
    const/16 v15, 0x96

    const/16 v23, 0x10

    const/4 v14, 0x4

    if-eqz v3, :cond_b

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    .line 38
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZZZ)V

    const-string v0, ", Live wallpaper"

    .line 39
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 41
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    invoke-virtual {v7, v15}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsViewModeDelayed(I)V

    :cond_8
    if-eqz v9, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v23, v14

    .line 43
    :goto_5
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    or-int/lit8 v1, v23, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    .line 44
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_a

    .line 45
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, v10, v12, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchWallpaperTypeChanged(IZZ)V

    goto :goto_6

    .line 46
    :cond_a
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;

    invoke-direct {v1, v7, v10, v12, v9}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;IZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    return-void

    .line 47
    :cond_b
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-nez v0, :cond_c

    .line 48
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    invoke-virtual {v0, v12}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    .line 49
    :cond_c
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    if-eqz v0, :cond_d

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpBlurredView()V

    :cond_d
    if-eqz v10, :cond_15

    if-eq v10, v12, :cond_14

    const-string v2, "System dead?"

    const/4 v3, 0x0

    if-eq v10, v14, :cond_13

    const/4 v0, 0x7

    if-eq v10, v0, :cond_12

    if-eq v10, v11, :cond_f

    const-string v0, "handleWallpaperTypeChanged: default wallpaper or DLS is displayed."

    .line 51
    invoke-virtual {v7, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v13, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    iget-object v5, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_e

    iget-boolean v1, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    if-nez v1, :cond_e

    move/from16 v17, v12

    goto :goto_7

    :cond_e
    move/from16 v17, v6

    :goto_7
    iget-object v1, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    iget-object v6, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v12, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v11, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    move/from16 v24, v9

    iget-object v9, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mColorProvider:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

    move-object/from16 v21, v11

    move-object v11, v0

    move-object/from16 v20, v12

    move-object v12, v2

    move/from16 v25, v14

    move-object v14, v3

    move/from16 v26, v15

    move-object v15, v5

    move/from16 v16, v4

    move-object/from16 v18, v1

    move-object/from16 v19, v6

    move-object/from16 v22, v9

    invoke-direct/range {v11 .. v22}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;IZLcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;Ljavax/inject/Provider;)V

    goto/16 :goto_f

    :cond_f
    move/from16 v24, v9

    move/from16 v25, v14

    move/from16 v26, v15

    .line 53
    :try_start_0
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v4}, Landroid/app/IWallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 54
    :try_start_1
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v4}, Landroid/app/IWallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 55
    :try_start_2
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v4}, Landroid/app/IWallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :try_start_3
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v11, ""

    if-eqz v0, :cond_10

    .line 57
    :try_start_4
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    move-result-object v5

    .line 58
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperUri()Landroid/net/Uri;

    move-result-object v3

    move-object v6, v11

    .line 59
    :cond_10
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isPluginLockFbeCondition()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 60
    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    move-result v0

    .line 61
    iget-object v4, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    invoke-virtual {v4, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 62
    iget-object v4, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    invoke-virtual {v4, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperPath(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v31, v3

    goto :goto_c

    :cond_11
    move-object v11, v6

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v4, v3

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v6, v3

    :goto_8
    move-object v4, v3

    move-object v9, v4

    :goto_9
    move-object v3, v6

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    move-object v9, v5

    .line 63
    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v3

    move-object v3, v4

    :goto_b
    move-object/from16 v31, v3

    move-object v0, v5

    :goto_c
    const-string v2, "handleWallpaperTypeChanged: VIDEO wallpaper path = "

    const-string v3, ", pkg = "

    const-string v4, " , filename = "

    .line 64
    invoke-static {v2, v0, v3, v11, v4}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , mVisibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isFolderStateChanged ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    move-object/from16 v27, v1

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    move-object/from16 v28, v2

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v33, v2

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v34, v2

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    move-object/from16 v35, v2

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v36, v2

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    move-object/from16 v37, v2

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-object/from16 v38, v2

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    move-object/from16 v39, v2

    iget-boolean v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    move/from16 v40, v2

    iget-boolean v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    move/from16 v41, v2

    iget v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    move/from16 v42, v2

    iget-boolean v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    move/from16 v43, v2

    move-object/from16 v29, v0

    move-object/from16 v30, v11

    move-object/from16 v32, v9

    invoke-direct/range {v27 .. v43}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;ZZIZ)V

    move-object v3, v1

    goto/16 :goto_10

    :cond_12
    move/from16 v24, v9

    move/from16 v25, v14

    move/from16 v26, v15

    .line 67
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    iget-object v1, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    iget-object v4, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v5, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v6, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    iget-boolean v9, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    iget-boolean v11, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    iget v12, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    const/16 v53, 0x0

    iget-object v13, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v43, v0

    move-object/from16 v44, v1

    move-object/from16 v45, v2

    move-object/from16 v46, v3

    move-object/from16 v47, v4

    move-object/from16 v48, v5

    move-object/from16 v49, v6

    move/from16 v50, v9

    move/from16 v51, v11

    move/from16 v52, v12

    move-object/from16 v54, v13

    invoke-direct/range {v43 .. v54}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;ZZIZLcom/android/systemui/util/SettingsHelper;)V

    goto/16 :goto_f

    :cond_13
    move/from16 v24, v9

    move/from16 v25, v14

    move/from16 v26, v15

    .line 68
    :try_start_5
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v4}, Landroid/app/IWallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v13, v0

    goto :goto_d

    :catch_4
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v3

    .line 70
    :goto_d
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    iget-object v12, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v14, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v15, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    move-object v11, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/function/Consumer;I)V

    goto :goto_f

    :cond_14
    move/from16 v24, v9

    move/from16 v25, v14

    move/from16 v26, v15

    .line 71
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    iget-object v12, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v13, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v14, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    iget-object v15, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    move-object v11, v0

    move-object/from16 v16, v1

    move/from16 v17, v4

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;I)V

    goto :goto_f

    :cond_15
    move/from16 v24, v9

    move/from16 v25, v14

    move/from16 v26, v15

    .line 72
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget-object v2, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v13, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v14, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    iget-object v15, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_16

    iget-boolean v1, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    if-nez v1, :cond_16

    move/from16 v17, v12

    goto :goto_e

    :cond_16
    const/4 v1, 0x0

    move/from16 v17, v1

    :goto_e
    iget-object v1, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    iget-object v3, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v5, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v6, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    iget-object v9, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mColorProvider:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

    move-object v11, v0

    move-object v12, v2

    move/from16 v16, v4

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    invoke-direct/range {v11 .. v22}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;IZLcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;Ljavax/inject/Provider;)V

    :goto_f
    move-object v3, v0

    .line 73
    :goto_10
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 74
    instance-of v6, v3, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    .line 75
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZZZ)V

    .line 76
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_17

    .line 77
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    move/from16 v2, v24

    invoke-interface {v0, v10, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchWallpaperTypeChanged(IZZ)V

    goto :goto_11

    :cond_17
    move/from16 v2, v24

    const/4 v1, 0x0

    .line 78
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;

    invoke-direct {v3, v7, v10, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;IZZ)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :goto_11
    iput-boolean v1, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 80
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_18

    move/from16 v15, v26

    goto :goto_12

    :cond_18
    const/16 v15, 0x64

    :goto_12
    invoke-virtual {v7, v15}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsViewModeDelayed(I)V

    .line 81
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_13

    :cond_19
    move/from16 v23, v25

    .line 82
    :goto_13
    iget-object v0, v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    or-int/lit8 v1, v23, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    return-void

    .line 83
    :cond_1a
    :goto_14
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    .line 84
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZZZ)V

    return-void
.end method

.method public final hideLockOnlyLiveWallpaperImmediately()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "KeyguardWallpaperController"

    .line 10
    .line 11
    const-string v1, "hideLockOnlyLiveWallpaperImmediately"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 17
    .line 18
    check-cast p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setSurfaceAlpha(F)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final isPluginLockFbeCondition()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v1, v2

    .line 24
    :goto_1
    return v1
.end method

.method public final isStartMultipackCondition()Z
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, 0x2

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v3

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isWallpaperUpdateFromDls()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x0

    .line 25
    const-string v6, "KeyguardWallpaperController"

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    const-string p0, "isStartMultipackCondition: PluginLock manages lockscreen wallpaper."

    .line 30
    .line 31
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return v5

    .line 35
    :cond_2
    const/4 v4, -0x1

    .line 36
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    .line 37
    .line 38
    invoke-interface {v7, v0}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v8, "System dead?"

    .line 47
    .line 48
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move v0, v4

    .line 62
    :goto_1
    const-string v7, "isStartMultipackCondition: type = "

    .line 63
    .line 64
    invoke-static {v7, v0, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    const/4 v8, 0x3

    .line 69
    if-ne v0, v8, :cond_3

    .line 70
    .line 71
    return v7

    .line 72
    :cond_3
    if-ne v0, v4, :cond_9

    .line 73
    .line 74
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    const-string p0, "isStartMultipackCondition: Live wallpaper is enabled."

    .line 81
    .line 82
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v5

    .line 86
    :cond_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    move v1, v2

    .line 98
    goto :goto_2

    .line 99
    :cond_6
    move v1, v3

    .line 100
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;I)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    const-string p0, "isStartMultipackCondition: Operator wallpaper."

    .line 109
    .line 110
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return v5

    .line 114
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 117
    .line 118
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getDefaultWallpaperType(I)I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-ne p0, v8, :cond_8

    .line 127
    .line 128
    move p0, v7

    .line 129
    goto :goto_3

    .line 130
    :cond_8
    move p0, v5

    .line 131
    :goto_3
    if-eqz p0, :cond_9

    .line 132
    .line 133
    return v7

    .line 134
    :cond_9
    return v5
.end method

.method public final isWallpaperUpdateFromDls()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 15
    .line 16
    const-string v2, "WPaperChangedByDls"

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v0, "WPaperChangedByDlsSub"

    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {p0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public final onDataCleared()V
    .locals 2

    .line 1
    const-string v0, "onDataCleared()"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setWallpaperUpdateFromDls(IZ)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x262

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "mWallpaperView.onPause() visibility = "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " shouldControlScreenOff = "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "KeyguardWallpaperController"

    .line 34
    .line 35
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 42
    .line 43
    invoke-interface {v2, v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 44
    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 49
    .line 50
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onPause()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public final onReady()V
    .locals 1

    .line 1
    const-string v0, "onReady()"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    .line 13
    .line 14
    const/16 v0, 0x263

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    const-string v0, "KeyguardWallpaperController"

    .line 2
    .line 3
    const-string v1, "mWallpaperView.onResume()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 40
    .line 41
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onResume()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 46
    .line 47
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 48
    .line 49
    const/4 v2, 0x7

    .line 50
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public final onSemBackupStatusChanged(III)V
    .locals 3

    .line 1
    const-string v0, "onSemBackupStatusChanged: which = "

    .line 2
    .line 3
    const-string v1, ", status = "

    .line 4
    .line 5
    const-string v2, " , key = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    and-int/lit8 v0, p1, 0x2

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "which"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo p1, "status"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    const-string p1, "key"

    .line 60
    .line 61
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const/16 p1, 0x261

    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(IZLandroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string p1, "onSemBackupStatusChanged: mPluginWallpaperManager is null."

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public final onSemMultipackApplied(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "onSemMultipackApplied: which = "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "which"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const/16 p1, 0x265

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(IZLandroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onSemWallpaperChanged(IILandroid/os/Bundle;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "include_dls"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "which"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "onSemWallpaperChanged: type = "

    .line 21
    .line 22
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, ", which = "

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChangeNotifier:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    .line 44
    .line 45
    invoke-virtual {v1, p2}, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->notify(I)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-static {p2, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    const/16 v3, 0x8

    .line 57
    .line 58
    invoke-static {p2, v3}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    :cond_1
    return-void

    .line 75
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    invoke-virtual {v3, v4}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    .line 79
    .line 80
    .line 81
    const/16 v3, 0x3e8

    .line 82
    .line 83
    if-ne p1, v3, :cond_7

    .line 84
    .line 85
    const-string/jumbo p1, "trigger"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    const-string p3, "dls"

    .line 95
    .line 96
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    const-string/jumbo v1, "screen"

    .line 101
    .line 102
    .line 103
    if-nez p3, :cond_5

    .line 104
    .line 105
    const-string/jumbo p3, "snapshot"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_3

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    const-string p1, "flag"

    .line 116
    .line 117
    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string v3, "/"

    .line 137
    .line 138
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    add-int/2addr p1, v4

    .line 143
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string/jumbo p3, "type"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    const/16 p1, 0x3e9

    .line 161
    .line 162
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(IZLandroid/os/Bundle;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_5
    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    const/16 p1, 0x3ea

    .line 174
    .line 175
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(IZLandroid/os/Bundle;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    :goto_0
    return-void

    .line 179
    :cond_7
    const/4 p3, 0x3

    .line 180
    const-string v3, "delay"

    .line 181
    .line 182
    if-eq p1, p3, :cond_9

    .line 183
    .line 184
    iget-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    invoke-virtual {p3, v4, p2}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 188
    .line 189
    .line 190
    iget-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 191
    .line 192
    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    check-cast p3, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 197
    .line 198
    invoke-virtual {p3, v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled(I)Z

    .line 199
    .line 200
    .line 201
    move-result p3

    .line 202
    if-eqz p3, :cond_9

    .line 203
    .line 204
    sget-boolean p3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 205
    .line 206
    if-eqz p3, :cond_8

    .line 207
    .line 208
    sget-boolean p3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 209
    .line 210
    if-nez p3, :cond_8

    .line 211
    .line 212
    iget-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 213
    .line 214
    iget-boolean p3, p3, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    .line 215
    .line 216
    if-eqz p3, :cond_8

    .line 217
    .line 218
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    .line 219
    .line 220
    .line 221
    move-result p3

    .line 222
    if-eqz p3, :cond_8

    .line 223
    .line 224
    iget-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 225
    .line 226
    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 227
    .line 228
    invoke-direct {v4, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 229
    .line 230
    .line 231
    const-wide/16 v5, 0x3e8

    .line 232
    .line 233
    invoke-virtual {p3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_8
    iget-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 241
    .line 242
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    check-cast p3, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 247
    .line 248
    invoke-virtual {p3, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->onLockWallpaperChanged(I)V

    .line 249
    .line 250
    .line 251
    :cond_9
    :goto_1
    const/4 p3, -0x1

    .line 252
    if-ne p1, p3, :cond_a

    .line 253
    .line 254
    const-wide/16 v4, 0x1f4

    .line 255
    .line 256
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 257
    .line 258
    .line 259
    :cond_a
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 260
    .line 261
    if-eqz p1, :cond_d

    .line 262
    .line 263
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 264
    .line 265
    if-nez p1, :cond_d

    .line 266
    .line 267
    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 268
    .line 269
    and-int/lit8 p3, p1, 0x3c

    .line 270
    .line 271
    if-nez p3, :cond_b

    .line 272
    .line 273
    or-int/lit8 p1, p1, 0x4

    .line 274
    .line 275
    :cond_b
    and-int/lit8 p3, p2, 0x3c

    .line 276
    .line 277
    if-nez p3, :cond_c

    .line 278
    .line 279
    or-int/lit8 p3, p2, 0x4

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_c
    move p3, p2

    .line 283
    :goto_2
    if-eq p1, p3, :cond_d

    .line 284
    .line 285
    const-string p0, "Ignore wallpaper change for not current which : "

    .line 286
    .line 287
    const-string p1, "KeyguardWallpaperController"

    .line 288
    .line 289
    invoke-static {p0, p2, p1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :cond_d
    const/16 p1, 0x259

    .line 294
    .line 295
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(IZLandroid/os/Bundle;)V

    .line 296
    .line 297
    .line 298
    return-void
.end method

.method public final onSemWallpaperColorsAnalysisRequested(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 2
    .line 3
    const/16 v1, 0x38a

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "which"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo p1, "userid"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "onSemWallpaperColorsChanged: SemWallpaperColors == null"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    const-string/jumbo v1, "set system color which = "

    .line 14
    .line 15
    .line 16
    const-string v2, ", opacity = "

    .line 17
    .line 18
    invoke-static {v1, p2, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getDarkModeDimOpacity()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "KeyguardWallpaperController"

    .line 34
    .line 35
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v3, "setColor: which = "

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "SystemWallpaperColors"

    .line 59
    .line 60
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    and-int/lit8 v2, p2, 0x1

    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    and-int/lit8 v2, p2, 0x3c

    .line 69
    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    or-int/lit8 v2, p2, 0x4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v2, p2

    .line 76
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v5, "setColor : put color for which "

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v5, ", color = "

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iget-object v1, v1, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mSystemWallpaperColors:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_1
    const/16 v1, 0x8

    .line 108
    .line 109
    invoke-static {p2, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_4

    .line 120
    .line 121
    const-string p1, "onSemWallpaperColorsChanged: DEX."

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 128
    .line 129
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 130
    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 134
    .line 135
    if-nez v2, :cond_7

    .line 136
    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    if-nez v2, :cond_7

    .line 140
    .line 141
    and-int/lit8 v2, p2, 0x3

    .line 142
    .line 143
    const/4 v3, 0x2

    .line 144
    if-ne v2, v3, :cond_5

    .line 145
    .line 146
    const/4 v2, 0x1

    .line 147
    goto :goto_2

    .line 148
    :cond_5
    const/4 v2, 0x0

    .line 149
    :goto_2
    if-eqz v2, :cond_7

    .line 150
    .line 151
    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaperColors:Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_6

    .line 158
    .line 159
    const/16 v3, 0x10

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    const/4 v3, 0x4

    .line 163
    :goto_3
    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 167
    .line 168
    const-string v3, "onSemWallpaperColorsChanged: Not avaiable on this model. which = "

    .line 169
    .line 170
    const-string v4, "onSemWallpaperColorsChanged: Not for lockscreen. which = "

    .line 171
    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    if-nez v0, :cond_8

    .line 175
    .line 176
    and-int/lit8 v5, p2, 0x10

    .line 177
    .line 178
    if-nez v5, :cond_8

    .line 179
    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_8
    if-eqz v0, :cond_c

    .line 197
    .line 198
    and-int/lit8 v0, p2, 0x10

    .line 199
    .line 200
    if-eqz v0, :cond_c

    .line 201
    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_9
    sget-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 219
    .line 220
    if-eqz v5, :cond_b

    .line 221
    .line 222
    if-nez v0, :cond_a

    .line 223
    .line 224
    and-int/lit8 v5, p2, 0x20

    .line 225
    .line 226
    if-nez v5, :cond_a

    .line 227
    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_a
    if-eqz v0, :cond_c

    .line 245
    .line 246
    and-int/lit8 v0, p2, 0x20

    .line 247
    .line 248
    if-eqz v0, :cond_c

    .line 249
    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_b
    if-nez v0, :cond_c

    .line 267
    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 285
    .line 286
    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    .line 287
    .line 288
    if-eqz v0, :cond_d

    .line 289
    .line 290
    const-string p1, "onSemWallpaperColorsChanged: Theme is currently applying. Send message later."

    .line 291
    .line 292
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_d
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 297
    .line 298
    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 299
    .line 300
    if-nez v0, :cond_10

    .line 301
    .line 302
    if-eqz v3, :cond_e

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_e
    const-string v0, "onSemWallpaperColorsChanged: which = "

    .line 306
    .line 307
    const-string v3, ", userId = "

    .line 308
    .line 309
    const-string v4, ", colors = "

    .line 310
    .line 311
    invoke-static {v0, p2, v3, p3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 330
    .line 331
    const/16 v3, 0x260

    .line 332
    .line 333
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 337
    .line 338
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    new-instance v3, Landroid/os/Bundle;

    .line 343
    .line 344
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string/jumbo v4, "wallpaper_colors"

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 351
    .line 352
    .line 353
    const-string/jumbo p1, "which"

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    const-string/jumbo p1, "userid"

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 366
    .line 367
    .line 368
    if-eqz v1, :cond_f

    .line 369
    .line 370
    if-nez v2, :cond_f

    .line 371
    .line 372
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 373
    .line 374
    const-wide/16 p1, 0x32

    .line 375
    .line 376
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 381
    .line 382
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    .line 384
    .line 385
    :goto_4
    return-void

    .line 386
    :cond_10
    :goto_5
    const-string p1, "onSemWallpaperColorsChanged: We are in UPSM or EM. We don\'t need this event for now."

    .line 387
    .line 388
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    return-void
.end method

.method public final onTransitionAod(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onTransitionAod: mDozeParameters.shouldControlScreenOff() = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "KeyguardWallpaperController"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;ZI)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 42
    .line 43
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 60
    .line 61
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 68
    .line 69
    const/16 v1, 0xe

    .line 70
    .line 71
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public final onWallpaperChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V
    .locals 4

    .line 1
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v2, v1, 0x2

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v0, "onWallpaperHintUpdate: invalid which. which = "

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    if-eq v1, v0, :cond_2

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v3, "onWallpaperHintUpdate: which mismatched. curWhich = "

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", colorWhich="

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "KeyguardWallpaperController"

    .line 64
    .line 65
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 69
    .line 70
    invoke-virtual {p0, p1, v1}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final onWallpaperUpdate(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onWallpaperUpdate, cacheClear:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 37
    .line 38
    .line 39
    const/16 p1, 0x12

    .line 40
    .line 41
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    move p1, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_0
    if-eqz p1, :cond_2

    .line 54
    .line 55
    const-string/jumbo p1, "onWallpaperUpdate: Error. onWallpaperUpdate SHOULD NOT be called on multi-user."

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    sget-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 63
    .line 64
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 65
    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isWallpaperUpdateFromDls()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_4

    .line 76
    .line 77
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setWallpaperUpdateFromDls(IZ)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 85
    .line 86
    check-cast p1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled(Z)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 107
    .line 108
    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadLiveWallpaperSettings(ILandroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    const/16 p1, 0x25c

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_6
    :goto_1
    const-string/jumbo p1, "onWallpaperUpdate: We are handling wallpaper update by settings changed event for UPSM or EM."

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final printLognAddHistory(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 2
    .line 3
    const-string v0, "KeyguardWallpaperController"

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final removeAllChildViews(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "removeAllChildViews: childCount = "

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "KeyguardWallpaperController"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    if-ltz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-nez p2, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 48
    .line 49
    check-cast v3, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    instance-of v3, v1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    const-string/jumbo v1, "removeAllChildViews: skip transition view."

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string/jumbo v4, "removeAllChildViews : e = "

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo p2, "removeAllChildViews: childCount after remove = "

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final sendUpdateWallpaperMessage(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(IZLandroid/os/Bundle;)V

    return-void
.end method

.method public final sendUpdateWallpaperMessage(IZLandroid/os/Bundle;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x264

    if-eq p1, v1, :cond_0

    const/16 v1, 0x265

    if-eq p1, v1, :cond_0

    const/16 v1, 0x261

    if-eq p1, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendUpdateWallpaperMessage: remove message what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-string p1, "delay"

    const-wide/16 v1, 0x0

    .line 8
    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 11
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 12
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZZZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;

    .line 2
    .line 3
    const-string v1, "KeyguardWallpaperController"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "setBackground, remove runnable"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;

    .line 24
    .line 25
    move-object v2, v0

    .line 26
    move-object v3, p0

    .line 27
    move-object v4, p1

    .line 28
    move v5, p5

    .line 29
    move-object v6, p2

    .line 30
    move v7, p3

    .line 31
    move v8, p4

    .line 32
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZZ)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;

    .line 36
    .line 37
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 44
    .line 45
    check-cast p1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChangeForTransition:Z

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    const-string/jumbo p0, "setBackground: Postpone setBackground()"

    .line 62
    .line 63
    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChangeForTransition:Z

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method public final setKeyguardShowing(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setKeyguardShowing() showing:"

    .line 2
    .line 3
    .line 4
    const-string v1, ", mIsPendingTypeChange:"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", mOccluded:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 21
    .line 22
    const-string v2, "KeyguardWallpaperController"

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const-string/jumbo p1, "setKeyguardShowing, remove cleanUp runnable"

    .line 40
    .line 41
    .line 42
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(IZ)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 65
    .line 66
    invoke-interface {p1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onKeyguardShowing(Z)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 72
    .line 73
    const/16 v1, 0xb

    .line 74
    .line 75
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 91
    .line 92
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperAndLockDisabled(ILandroid/content/Context;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 115
    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onResume()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 123
    .line 124
    const/16 p1, 0x259

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_0
    return-void
.end method

.method public final setRootView(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setRootView"

    .line 2
    .line 3
    .line 4
    const-string v1, "KeyguardWallpaperController"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->removeAllChildViews(Landroid/view/ViewGroup;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string/jumbo p1, "setRootView: mRootView is null!"

    .line 43
    .line 44
    .line 45
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final setThumbnailVisibility(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    .line 9
    .line 10
    aget v0, v1, v0

    .line 11
    .line 12
    const/4 v1, 0x7

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsFingerPrintTouchDown:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const-string p0, "KeyguardWallpaperController"

    .line 35
    .line 36
    const-string p1, "Thumbnail should be shown when unlocking using fingerprint."

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 53
    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->setThumbnailVisibility(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 61
    .line 62
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;

    .line 63
    .line 64
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_1
    return-void
.end method

.method public final setWallpaperUpdateFromDls(IZ)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo p2, "setWallpaperUpdateFromDls: User ("

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, ") changed wallpaper. Don\'t update WPAPER_CHANGED_BY_DLS."

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x2

    .line 43
    const-string v3, "WPaperChangedByDlsSub"

    .line 44
    .line 45
    const-string v4, "WPaperChangedByDls"

    .line 46
    .line 47
    if-ne p1, v0, :cond_3

    .line 48
    .line 49
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {p1, v3, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eq p1, p2, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {p1, v3, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {p1, v4, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eq p1, p2, :cond_6

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {p0, v4, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    if-ne p1, v1, :cond_4

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {p1, v3, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eq p1, p2, :cond_6

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {p0, v3, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {p1, v4, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eq p1, p2, :cond_6

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {p0, v4, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {p1, v4, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eq p1, p2, :cond_6

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    invoke-static {p0, v4, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_1
    return-void
.end method

.method public final showBlurredViewIfNeededOnUiThread()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    check-cast v0, Landroid/view/View;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 47
    .line 48
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;

    .line 49
    .line 50
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final startMultipack(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "startMultipack: which = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string p0, "KeyguardWallpaperController"

    .line 24
    .line 25
    const-string/jumbo p1, "startMultipack: mIsPluginLockReady is false"

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 43
    .line 44
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockUtils;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 48
    .line 49
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;

    .line 55
    .line 56
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->startMultipack(I)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method
