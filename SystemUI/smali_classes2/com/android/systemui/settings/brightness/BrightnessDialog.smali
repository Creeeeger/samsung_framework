.class public Lcom/android/systemui/settings/brightness/BrightnessDialog;
.super Landroid/app/Activity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBackgroundHandler:Landroid/os/Handler;

.field public mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field public mCoverscreenIsOn:Z

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mFoldStateChangedListener:Lcom/android/systemui/settings/brightness/BrightnessDialog$1;

.field public mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

.field public mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

.field public final mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDialog$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDialog;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mFoldStateChangedListener:Lcom/android/systemui/settings/brightness/BrightnessDialog$1;

    .line 13
    .line 14
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDialog$3;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDialog;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 26
    .line 27
    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    iput-object p5, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBackgroundHandler:Landroid/os/Handler;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/16 v0, 0x31

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    const/4 v2, -0x2

    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 27
    .line 28
    .line 29
    const-string p1, "BrightnessDialog"

    .line 30
    .line 31
    const-string v2, "onCreate"

    .line 32
    .line 33
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string/jumbo v2, "registerUpdateMonitor"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 70
    .line 71
    iget-boolean v3, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 72
    .line 73
    xor-int/2addr v3, v0

    .line 74
    iput-boolean v3, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mCoverscreenIsOn:Z

    .line 75
    .line 76
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mFoldStateChangedListener:Lcom/android/systemui/settings/brightness/BrightnessDialog$1;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    const/16 v2, 0x8

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iget-boolean v3, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mCoverscreenIsOn:Z

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    const-string p1, "activity"

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/app/ActivityManager;

    .line 106
    .line 107
    const/4 v1, 0x5

    .line 108
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 127
    .line 128
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-class v3, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_2

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    const p1, 0x7f0d0438

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 154
    .line 155
    .line 156
    const p1, 0x7f0a01af

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 167
    .line 168
    .line 169
    new-instance p1, Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 170
    .line 171
    const v0, 0x7f0a0b10

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 179
    .line 180
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qp/SubscreenBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V

    .line 181
    .line 182
    .line 183
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 184
    .line 185
    const-string v0, "brightness_dialog_subscreen"

    .line 186
    .line 187
    iput-object v0, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->BRIGHTNESS_DIALOG_TAG:Ljava/lang/String;

    .line 188
    .line 189
    iput-object p0, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_4
    const p1, 0x7f0d032f

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 196
    .line 197
    .line 198
    const p1, 0x7f0a01ae

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Landroid/widget/FrameLayout;

    .line 206
    .line 207
    const/4 v0, 0x0

    .line 208
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    const v4, 0x7f070a38

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 229
    .line 230
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Landroid/graphics/Rect;

    .line 236
    .line 237
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 238
    .line 239
    .line 240
    new-instance v4, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda0;

    .line 241
    .line 242
    invoke-direct {v4, v0, v3}, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Rect;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 249
    .line 250
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v5}, Lcom/android/systemui/util/ViewController;->init()V

    .line 255
    .line 256
    .line 257
    iget-object v0, v5, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 258
    .line 259
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 260
    .line 261
    .line 262
    const v0, 0x7f0a01a8

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    const-string p1, "brightness_dialog"

    .line 273
    .line 274
    iput-object p1, v5, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->BRIGHTNESS_DIALOG_TAG:Ljava/lang/String;

    .line 275
    .line 276
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 277
    .line 278
    iget-object v6, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 279
    .line 280
    iget-object v7, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 281
    .line 282
    iget-object v8, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 283
    .line 284
    iget-object v9, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBackgroundHandler:Landroid/os/Handler;

    .line 285
    .line 286
    move-object v3, p1

    .line 287
    move-object v4, p0

    .line 288
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/settings/brightness/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 289
    .line 290
    .line 291
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 292
    .line 293
    iput-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    .line 294
    .line 295
    :goto_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const-string v0, "onKeyDown : keyCode :"

    .line 2
    .line 3
    const-string v1, "BrightnessDialog"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0xdd

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0xdc

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x10a0000

    .line 5
    .line 6
    const v1, 0x10a0001

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onStart()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mCoverscreenIsOn:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mStartListeningRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$7;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :goto_0
    const/16 v0, 0xdc

    .line 32
    .line 33
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    const-string v0, "BrightnessDialog"

    .line 37
    .line 38
    const-string v1, "onStart"

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 48
    .line 49
    const-wide/16 v3, 0x1388

    .line 50
    .line 51
    const-wide/16 v5, 0x3e8

    .line 52
    .line 53
    move-object v1, v0

    .line 54
    move-object v2, p0

    .line 55
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/settings/brightness/BrightnessDialog$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDialog;JJ)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 68
    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public final onStop()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xdc

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mCoverscreenIsOn:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 19
    .line 20
    iget-object v3, v2, Lcom/android/systemui/qp/SubscreenBrightnessController;->mStopListeningRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$8;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    sput-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mControlValueInitialized:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 31
    .line 32
    iget-object v3, v2, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$3;

    .line 33
    .line 34
    iget-object v4, v2, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    iput-boolean v1, v2, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 40
    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mFoldStateChangedListener:Lcom/android/systemui/settings/brightness/BrightnessDialog$1;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const-string v0, "BrightnessDialog"

    .line 57
    .line 58
    const-string/jumbo v1, "unregisterUpdateMonitor"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 81
    .line 82
    .line 83
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Lcom/android/systemui/settings/brightness/BrightnessDialog$2;

    .line 84
    .line 85
    return-void
.end method
