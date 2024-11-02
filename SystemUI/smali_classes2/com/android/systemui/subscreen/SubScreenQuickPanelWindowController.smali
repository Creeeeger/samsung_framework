.class public final Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static COVER_DISPLAY:I = 0x1


# instance fields
.field public final mAnimator:Lcom/android/systemui/qs/animator/QsCoverAnimator;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public mDisabled1:I

.field public mDisabled2:I

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public mExpandedFraction:F

.field public mExpandedHeight:F

.field public mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mFoldStateChangedListener:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;

.field public mFolderOpened:Z

.field public mIsAnnounced:Z

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mMaxExpandedHeight:F

.field public mPanelDisabled:Z

.field public mPanelExpanded:Z

.field public mPanelFullyExpanded:Z

.field public mPanelHeightAnimator:Landroid/animation/ValueAnimator;

.field public final mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

.field public final mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mQSPanel:Landroid/view/View;

.field public final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public final mSubScreenComponent:Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent$Factory;

.field public final mSubScreenQSEventHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

.field public mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

.field public mSubScreenStateChangedListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenQsPanelController;Lcom/android/systemui/log/SecPanelLogger;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/Context;Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent$Factory;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qp/util/SubscreenUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    move-object/from16 v2, p11

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    iput v7, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled1:I

    .line 14
    .line 15
    iput v7, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled2:I

    .line 16
    .line 17
    iput-boolean v7, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelDisabled:Z

    .line 18
    .line 19
    iput-boolean v7, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFolderOpened:Z

    .line 20
    .line 21
    iput-boolean v7, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mIsAnnounced:Z

    .line 22
    .line 23
    new-instance v3, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    .line 26
    .line 27
    .line 28
    iput-object v3, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFoldStateChangedListener:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 44
    .line 45
    iput-object v14, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 46
    .line 47
    move-object/from16 v3, p3

    .line 48
    .line 49
    iput-object v3, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 50
    .line 51
    move-object/from16 v3, p4

    .line 52
    .line 53
    iput-object v3, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 54
    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qp/SubscreenQsPanelController;->init()V

    .line 56
    .line 57
    .line 58
    move-object/from16 v3, p5

    .line 59
    .line 60
    iput-object v3, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 61
    .line 62
    move-object/from16 v12, p7

    .line 63
    .line 64
    iput-object v12, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 65
    .line 66
    move-object/from16 v3, p14

    .line 67
    .line 68
    iput-object v3, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenComponent:Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent$Factory;

    .line 69
    .line 70
    move-object/from16 v9, p15

    .line 71
    .line 72
    iput-object v9, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 73
    .line 74
    const-string v3, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 75
    .line 76
    move-object/from16 v15, p6

    .line 77
    .line 78
    invoke-virtual {v15, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    array-length v4, v3

    .line 83
    const/4 v5, 0x1

    .line 84
    if-le v4, v5, :cond_1

    .line 85
    .line 86
    aget-object v3, v3, v5

    .line 87
    .line 88
    move-object/from16 v4, p10

    .line 89
    .line 90
    invoke-virtual {v4, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    move-object/from16 v4, p10

    .line 96
    .line 97
    const-string v3, "initContext: fail to get sub-display"

    .line 98
    .line 99
    move-object v6, v14

    .line 100
    check-cast v6, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 101
    .line 102
    invoke-virtual {v6, v3}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    move-object v3, v4

    .line 106
    :goto_0
    iput-object v3, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const-string v6, "initCoverDisplay: "

    .line 113
    .line 114
    invoke-static {v6, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    move-object v8, v14

    .line 119
    check-cast v8, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 120
    .line 121
    invoke-virtual {v8, v6}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    sput v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->COVER_DISPLAY:I

    .line 125
    .line 126
    invoke-virtual/range {p11 .. p11}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    .line 127
    .line 128
    .line 129
    const/high16 v4, 0x3f000000    # 0.5f

    .line 130
    .line 131
    iput v4, v2, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    .line 132
    .line 133
    const v4, 0x3f19999a    # 0.6f

    .line 134
    .line 135
    .line 136
    iput v4, v2, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    .line 137
    .line 138
    invoke-virtual/range {p11 .. p11}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iput-object v2, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 143
    .line 144
    new-instance v2, Lcom/android/systemui/qs/animator/QsCoverAnimator;

    .line 145
    .line 146
    invoke-direct {v2, v3, v1}, Lcom/android/systemui/qs/animator/QsCoverAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/qp/SubscreenQsPanelController;)V

    .line 147
    .line 148
    .line 149
    iput-object v2, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mAnimator:Lcom/android/systemui/qs/animator/QsCoverAnimator;

    .line 150
    .line 151
    move-object/from16 v1, p16

    .line 152
    .line 153
    iput-object v0, v1, Lcom/android/systemui/qp/util/SubscreenUtil;->mSubScreenQuickPanelWindowController:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 154
    .line 155
    new-instance v13, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 156
    .line 157
    move-object v1, v13

    .line 158
    new-instance v3, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;

    .line 159
    .line 160
    move-object v2, v3

    .line 161
    invoke-direct {v3, v0, v7}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 162
    .line 163
    .line 164
    new-instance v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;

    .line 165
    .line 166
    move-object v3, v4

    .line 167
    invoke-direct {v4, v0, v5}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 168
    .line 169
    .line 170
    new-instance v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;

    .line 171
    .line 172
    move-object v4, v5

    .line 173
    const/4 v6, 0x2

    .line 174
    invoke-direct {v5, v0, v6}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 175
    .line 176
    .line 177
    new-instance v6, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda3;

    .line 178
    .line 179
    move-object v5, v6

    .line 180
    invoke-direct {v6, v0, v7}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 181
    .line 182
    .line 183
    new-instance v8, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda4;

    .line 184
    .line 185
    move-object v6, v8

    .line 186
    invoke-direct {v8, v0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    .line 187
    .line 188
    .line 189
    new-instance v10, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;

    .line 190
    .line 191
    move-object v8, v10

    .line 192
    invoke-direct {v10, v0, v7}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 193
    .line 194
    .line 195
    new-instance v11, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda6;

    .line 196
    .line 197
    move-object v10, v11

    .line 198
    invoke-direct {v11, v0, v7}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 199
    .line 200
    .line 201
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda3;

    .line 202
    .line 203
    move-object v11, v7

    .line 204
    const/4 v9, 0x3

    .line 205
    invoke-direct {v7, v0, v9}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 206
    .line 207
    .line 208
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda6;

    .line 209
    .line 210
    move-object v9, v13

    .line 211
    move-object v13, v7

    .line 212
    move-object/from16 p1, v9

    .line 213
    .line 214
    const/4 v9, 0x1

    .line 215
    invoke-direct {v7, v0, v9}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 216
    .line 217
    .line 218
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;

    .line 219
    .line 220
    move-object v15, v7

    .line 221
    const/4 v9, 0x2

    .line 222
    invoke-direct {v7, v0, v9}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 223
    .line 224
    .line 225
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;

    .line 226
    .line 227
    move-object/from16 v16, v7

    .line 228
    .line 229
    const/4 v9, 0x1

    .line 230
    invoke-direct {v7, v0, v9}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 231
    .line 232
    .line 233
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda3;

    .line 234
    .line 235
    move-object/from16 v20, v7

    .line 236
    .line 237
    invoke-direct {v7, v0, v9}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 238
    .line 239
    .line 240
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda2;

    .line 241
    .line 242
    move-object/from16 v22, v7

    .line 243
    .line 244
    invoke-direct {v7, v0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    .line 245
    .line 246
    .line 247
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda3;

    .line 248
    .line 249
    move-object/from16 v24, v7

    .line 250
    .line 251
    const/4 v9, 0x2

    .line 252
    invoke-direct {v7, v0, v9}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    .line 253
    .line 254
    .line 255
    move-object/from16 v7, p12

    .line 256
    .line 257
    move-object/from16 v25, p1

    .line 258
    .line 259
    move-object/from16 v9, p6

    .line 260
    .line 261
    move-object/from16 v12, p9

    .line 262
    .line 263
    move-object/from16 v14, p13

    .line 264
    .line 265
    move-object/from16 v17, p2

    .line 266
    .line 267
    move-object/from16 v18, p15

    .line 268
    .line 269
    move-object/from16 v19, p8

    .line 270
    .line 271
    move-object/from16 v21, p7

    .line 272
    .line 273
    move-object/from16 v23, p17

    .line 274
    .line 275
    invoke-direct/range {v1 .. v24}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/function/BooleanSupplier;Landroid/hardware/display/DisplayManager;Ljava/util/function/DoubleSupplier;Ljava/util/function/Supplier;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/navigationbar/NavigationModeController;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Lcom/android/systemui/log/SecPanelLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;Ljava/util/function/Supplier;Lcom/android/systemui/model/SysUiState;Ljava/util/function/DoubleConsumer;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/function/Supplier;)V

    .line 276
    .line 277
    .line 278
    move-object/from16 v1, v25

    .line 279
    .line 280
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQSEventHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 281
    .line 282
    return-void
.end method


# virtual methods
.method public final animateCollapsePanels(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 9
    .line 10
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 11
    .line 12
    const-string p2, "animateCollapsePanels"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p1, "animateExpandSettingsPanel"

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p1, "expandPanel"

    .line 30
    .line 31
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->createPanelHeightAnimatorAndRun(FZ)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public final checkNotInitialized()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final collapsePanel()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "collapsePanel"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 11
    .line 12
    check-cast v1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->createPanelHeightAnimatorAndRun(FZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final createPanelHeightAnimatorAndRun(FZ)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "createPanelHeightAnimatorAndRun vel: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " expand: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 24
    .line 25
    check-cast v1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    iget v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v0

    .line 37
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelFullyExpanded:Z

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    new-array v3, v3, [F

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    iget v5, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    .line 44
    .line 45
    aput v5, v3, v4

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    aput v1, v3, v4

    .line 49
    .line 50
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelHeightAnimator:Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    new-instance v3, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-direct {v3, p0, p2, v2}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;ZZ)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelHeightAnimator:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$3;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$3;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelHeightAnimator:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    iget v5, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    .line 81
    .line 82
    if-eqz p2, :cond_1

    .line 83
    .line 84
    iget v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    .line 85
    .line 86
    :cond_1
    move v6, v0

    .line 87
    sub-float p2, v6, v5

    .line 88
    .line 89
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    move v7, p1

    .line 94
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelHeightAnimator:Landroid/animation/ValueAnimator;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final disable(IIIZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p4, 0x1

    .line 9
    if-ne p1, p4, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled1:I

    .line 18
    .line 19
    xor-int/2addr p1, p2

    .line 20
    iput p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled1:I

    .line 21
    .line 22
    iget v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled2:I

    .line 23
    .line 24
    xor-int/2addr v0, p3

    .line 25
    iput p3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled2:I

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const/high16 v2, 0x10000

    .line 33
    .line 34
    and-int/2addr p1, v2

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    and-int p1, p2, v2

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const-string p1, "DISABLE_EXPAND "

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    .line 47
    .line 48
    .line 49
    :cond_2
    and-int/lit8 p1, v0, 0x1

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    const-string p1, "DISABLE2_QUICK_SETTINGS "

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    .line 59
    .line 60
    .line 61
    :cond_3
    and-int/lit8 p1, v0, 0x4

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    and-int/lit8 p1, p3, 0x4

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    const-string p1, "DISABLE2_NOTIFICATION_SHADE"

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    .line 75
    .line 76
    .line 77
    :cond_4
    and-int p1, p2, v2

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    and-int/lit8 p1, p3, 0x1

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    and-int/lit8 p1, p3, 0x4

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    const/4 p4, 0x0

    .line 91
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelDisabled:Z

    .line 92
    .line 93
    if-eq p1, p4, :cond_8

    .line 94
    .line 95
    iput-boolean p4, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelDisabled:Z

    .line 96
    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string p2, "Disable "

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_7

    .line 109
    .line 110
    const-string/jumbo v1, "released"

    .line 111
    .line 112
    .line 113
    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 121
    .line 122
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_8
    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SubScreenQuickPanelWindowController ============================================= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "    mMaxExpandedHeight = "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "    mExpandedHeight = "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "    mPanelExpanded = "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "    mPanelFullyExpanded = "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelFullyExpanded:Z

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "    mPanelDisabled = "

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelDisabled:Z

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "    mFolderOpened = "

    .line 109
    .line 110
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFolderOpened:Z

    .line 114
    .line 115
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    return-object v0
.end method

.method public final onCameraLaunchGestureDetected(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 9
    .line 10
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 11
    .line 12
    const-string v0, "onCameraLaunchGestureDetected"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final updatePanelExpansion(FZ)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-ltz v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    .line 7
    .line 8
    cmpl-float v1, p1, v1

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    .line 13
    .line 14
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    :cond_1
    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    .line 23
    .line 24
    cmpl-float p1, p1, v0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-lez p1, :cond_2

    .line 29
    .line 30
    move p1, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move p1, v2

    .line 33
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    .line 34
    .line 35
    if-eq p1, v3, :cond_6

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    .line 38
    .line 39
    new-instance v3, Landroid/content/Intent;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    const-string v4, "com.android.systemui.subscreen.EXPANDED"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const-string v4, "com.android.systemui.subscreen.COLLAPSED"

    .line 47
    .line 48
    :goto_1
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-class v4, Lcom/android/systemui/UiOffloadThread;

    .line 52
    .line 53
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/android/systemui/UiOffloadThread;

    .line 58
    .line 59
    new-instance v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda7;

    .line 60
    .line 61
    invoke-direct {v5, p0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;Landroid/content/Intent;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    move p1, v2

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    const/16 p1, 0x8

    .line 81
    .line 82
    :goto_2
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :cond_6
    :goto_3
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    .line 86
    .line 87
    iget v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    .line 88
    .line 89
    div-float/2addr p1, v3

    .line 90
    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    .line 91
    .line 92
    const/high16 v3, 0x3f800000    # 1.0f

    .line 93
    .line 94
    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mAnimator:Lcom/android/systemui/qs/animator/QsCoverAnimator;

    .line 95
    .line 96
    if-eqz v4, :cond_9

    .line 97
    .line 98
    iget-object v5, v4, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mPanelViewTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 99
    .line 100
    if-eqz v5, :cond_7

    .line 101
    .line 102
    invoke-virtual {v5, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 103
    .line 104
    .line 105
    :cond_7
    if-eqz p2, :cond_8

    .line 106
    .line 107
    iget-object p2, v4, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mPanelViewAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_8
    iget-object p1, v4, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mQSPanel:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 116
    .line 117
    .line 118
    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string p2, "mExpandedFraction: "

    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 135
    .line 136
    check-cast p2, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 137
    .line 138
    invoke-virtual {p2, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    .line 142
    .line 143
    cmpl-float p1, p1, v0

    .line 144
    .line 145
    if-nez p1, :cond_a

    .line 146
    .line 147
    const-string p1, "onSubQSPanelCollapsed"

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iput-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mIsAnnounced:Z

    .line 153
    .line 154
    :cond_a
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    .line 155
    .line 156
    cmpl-float p1, p1, v3

    .line 157
    .line 158
    if-nez p1, :cond_d

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_b

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_b
    sget-object p1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 168
    .line 169
    const-string v4, "QPBE2000"

    .line 170
    .line 171
    invoke-static {p1, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string p1, "onSubQSPanelFullyExpanded"

    .line 175
    .line 176
    invoke-virtual {p2, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mIsAnnounced:Z

    .line 180
    .line 181
    if-nez p1, :cond_c

    .line 182
    .line 183
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    .line 184
    .line 185
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    const v4, 0x7f1310d2

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    :cond_c
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mIsAnnounced:Z

    .line 198
    .line 199
    :cond_d
    :goto_5
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    .line 200
    .line 201
    cmpl-float p1, p1, v3

    .line 202
    .line 203
    if-nez p1, :cond_e

    .line 204
    .line 205
    move p1, v1

    .line 206
    goto :goto_6

    .line 207
    :cond_e
    move p1, v2

    .line 208
    :goto_6
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelFullyExpanded:Z

    .line 209
    .line 210
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenStateChangedListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 211
    .line 212
    if-eqz p1, :cond_f

    .line 213
    .line 214
    new-instance p1, Landroid/os/Bundle;

    .line 215
    .line 216
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string/jumbo p2, "quickPanelSwipeFraction"

    .line 220
    .line 221
    .line 222
    iget v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    .line 223
    .line 224
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 225
    .line 226
    .line 227
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenStateChangedListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 228
    .line 229
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    .line 230
    .line 231
    .line 232
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 233
    .line 234
    if-nez p1, :cond_10

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_10
    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    .line 238
    .line 239
    cmpl-float p0, p0, v0

    .line 240
    .line 241
    if-lez p0, :cond_11

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_11
    move v1, v2

    .line 245
    :goto_7
    const-wide/16 v2, 0x800

    .line 246
    .line 247
    invoke-virtual {p1, v2, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 248
    .line 249
    .line 250
    sget p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->COVER_DISPLAY:I

    .line 251
    .line 252
    invoke-virtual {p1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 253
    .line 254
    .line 255
    :goto_8
    return-void
.end method
