.class public abstract Lcom/android/systemui/SystemUIInitializer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUIFactory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

.field private mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

.field private mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

.field private mWMComponent:Lcom/android/systemui/dagger/WMComponent;


# direct methods
.method public static synthetic $r8$lambda$fM3ZYlHSXv2LZLPIQt0xKKN2evU(Lcom/android/systemui/SystemUIInitializer;Lcom/android/systemui/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/WMComponent$Builder;->setShellMainThread(Landroid/os/HandlerThread;)Lcom/android/systemui/dagger/WMComponent$Builder;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/android/systemui/dagger/WMComponent$Builder;->build()Lcom/android/systemui/dagger/WMComponent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract getGlobalRootComponentBuilder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
.end method

.method public getRootComponent()Lcom/android/systemui/dagger/GlobalRootComponent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVendorComponent(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 1
    const p0, 0x7f13038a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getWMComponent()Lcom/android/systemui/dagger/WMComponent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 2
    .line 3
    return-object p0
.end method

.method public init(Z)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIInitializer;->getGlobalRootComponentBuilder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->context(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->instrumentationTest(Z)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->build()Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/android/systemui/dagger/GlobalRootComponent;->getInitializationChecker()Lcom/android/systemui/util/InitializationChecker;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/android/systemui/dagger/GlobalRootComponent;->getWMComponentBuilder()Lcom/android/systemui/dagger/WMComponent$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const v2, 0x7f05001a

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 62
    .line 63
    const-string/jumbo v2, "wmshell.main"

    .line 64
    .line 65
    .line 66
    const/4 v3, -0x4

    .line 67
    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    .line 71
    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    new-instance v2, Landroid/os/Handler;

    .line 75
    .line 76
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v3, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule$1;

    .line 80
    .line 81
    invoke-direct {v3, v0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule$1;-><init>(Landroid/os/HandlerThread;)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v4, 0x2710

    .line 85
    .line 86
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-instance v3, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda6;

    .line 101
    .line 102
    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/SystemUIInitializer;Lcom/android/systemui/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V

    .line 103
    .line 104
    .line 105
    const-wide/16 v0, 0x1388

    .line 106
    .line 107
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const-string p0, "SystemUIFactory"

    .line 115
    .line 116
    const-string p1, "Failed to initialize WMComponent"

    .line 117
    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    new-instance p0, Ljava/lang/RuntimeException;

    .line 122
    .line 123
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_3
    :goto_0
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent$Builder;->build()Lcom/android/systemui/dagger/WMComponent;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 132
    .line 133
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 134
    .line 135
    invoke-interface {v0}, Lcom/android/systemui/dagger/GlobalRootComponent;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 142
    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/SystemUIInitializer;->prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 148
    .line 149
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getShell()Lcom/android/wm/shell/sysui/ShellInterface;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setShell(Lcom/android/wm/shell/sysui/ShellInterface;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 158
    .line 159
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getPip()Ljava/util/Optional;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 168
    .line 169
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreen()Ljava/util/Optional;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 178
    .line 179
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getOneHanded()Ljava/util/Optional;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 188
    .line 189
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getBubbles()Ljava/util/Optional;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 198
    .line 199
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getTaskViewFactory()Ljava/util/Optional;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 208
    .line 209
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getTransitions()Lcom/android/wm/shell/transition/ShellTransitions;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 218
    .line 219
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getKeyguardTransitions()Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setKeyguardTransitions(Lcom/android/wm/shell/keyguard/KeyguardTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 228
    .line 229
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getStartingSurface()Ljava/util/Optional;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 238
    .line 239
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getDisplayAreaHelper()Ljava/util/Optional;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDisplayAreaHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 248
    .line 249
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getRecentTasks()Ljava/util/Optional;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setRecentTasks(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 258
    .line 259
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getBackAnimation()Ljava/util/Optional;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setBackAnimation(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 268
    .line 269
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getDesktopMode()Ljava/util/Optional;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDesktopMode(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 278
    .line 279
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getEnterSplitGestureHandler()Ljava/util/Optional;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setEnterSplitGestureHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 288
    .line 289
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreenController()Ljava/util/Optional;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSplitScreenController(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 298
    .line 299
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getDisplayController()Ljava/util/Optional;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDisplayController(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 308
    .line 309
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->init()V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_2

    .line 313
    .line 314
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 315
    .line 316
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/SystemUIInitializer;->prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    new-instance v1, Lcom/android/systemui/SystemUIInitializer$3;

    .line 321
    .line 322
    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIInitializer$3;-><init>(Lcom/android/systemui/SystemUIInitializer;)V

    .line 323
    .line 324
    .line 325
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setShell(Lcom/android/wm/shell/sysui/ShellInterface;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    const/4 v1, 0x0

    .line 330
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    new-instance v2, Lcom/android/systemui/SystemUIInitializer$2;

    .line 371
    .line 372
    invoke-direct {v2, p0}, Lcom/android/systemui/SystemUIInitializer$2;-><init>(Lcom/android/systemui/SystemUIInitializer;)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    new-instance v2, Lcom/android/systemui/SystemUIInitializer$1;

    .line 380
    .line 381
    invoke-direct {v2, p0}, Lcom/android/systemui/SystemUIInitializer$1;-><init>(Lcom/android/systemui/SystemUIInitializer;)V

    .line 382
    .line 383
    .line 384
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setKeyguardTransitions(Lcom/android/wm/shell/keyguard/KeyguardTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDisplayAreaHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setRecentTasks(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setBackAnimation(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDesktopMode(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setEnterSplitGestureHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSplitScreenController(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 445
    .line 446
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getDisplayController()Ljava/util/Optional;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDisplayController(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    :goto_2
    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->build()Lcom/android/systemui/dagger/SysUIComponent;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    iput-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 459
    .line 460
    if-eqz p1, :cond_5

    .line 461
    .line 462
    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent;->init()V

    .line 463
    .line 464
    .line 465
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 466
    .line 467
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->createDependency()Lcom/android/systemui/Dependency;

    .line 468
    .line 469
    .line 470
    move-result-object p0

    .line 471
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    .line 472
    .line 473
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    new-instance v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    .line 477
    .line 478
    const/4 v1, 0x0

    .line 479
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 480
    .line 481
    .line 482
    sget-object p1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 483
    .line 484
    iget-object v2, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    .line 485
    .line 486
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    .line 490
    .line 491
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    new-instance v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda3;

    .line 495
    .line 496
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda3;-><init>(Ldagger/Lazy;I)V

    .line 497
    .line 498
    .line 499
    sget-object p1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 500
    .line 501
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mMainLooper:Ldagger/Lazy;

    .line 505
    .line 506
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    new-instance v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda3;

    .line 510
    .line 511
    const/16 v3, 0x15

    .line 512
    .line 513
    invoke-direct {v0, p1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda3;-><init>(Ldagger/Lazy;I)V

    .line 514
    .line 515
    .line 516
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 517
    .line 518
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mMainHandler:Ldagger/Lazy;

    .line 522
    .line 523
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    new-instance v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda4;

    .line 527
    .line 528
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda4;-><init>(Ldagger/Lazy;I)V

    .line 529
    .line 530
    .line 531
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 532
    .line 533
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mMainExecutor:Ldagger/Lazy;

    .line 537
    .line 538
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    new-instance v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda4;

    .line 542
    .line 543
    const/16 v3, 0xd

    .line 544
    .line 545
    invoke-direct {v0, p1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda4;-><init>(Ldagger/Lazy;I)V

    .line 546
    .line 547
    .line 548
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 549
    .line 550
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mBackgroundExecutor:Ldagger/Lazy;

    .line 554
    .line 555
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    new-instance v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda4;

    .line 559
    .line 560
    const/16 v4, 0x18

    .line 561
    .line 562
    invoke-direct {v0, p1, v4}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda4;-><init>(Ldagger/Lazy;I)V

    .line 563
    .line 564
    .line 565
    sget-object p1, Lcom/android/systemui/Dependency;->BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 566
    .line 567
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mActivityStarter:Ldagger/Lazy;

    .line 571
    .line 572
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 573
    .line 574
    invoke-static {p1, p1, v1, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 575
    .line 576
    .line 577
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mBroadcastDispatcher:Ldagger/Lazy;

    .line 578
    .line 579
    const/16 v0, 0x10

    .line 580
    .line 581
    const-class v5, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 582
    .line 583
    invoke-static {p1, p1, v0, v2, v5}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 584
    .line 585
    .line 586
    const-class p1, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 587
    .line 588
    iget-object v5, p0, Lcom/android/systemui/Dependency;->mAsyncSensorManager:Ldagger/Lazy;

    .line 589
    .line 590
    const/16 v6, 0x1b

    .line 591
    .line 592
    invoke-static {v5, v5, v6, v2, p1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 593
    .line 594
    .line 595
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    .line 596
    .line 597
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    new-instance v5, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 601
    .line 602
    invoke-direct {v5, p1, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 603
    .line 604
    .line 605
    const-class p1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 606
    .line 607
    invoke-virtual {v2, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSBluetoothController:Ldagger/Lazy;

    .line 611
    .line 612
    const/16 v5, 0xb

    .line 613
    .line 614
    const-class v7, Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 615
    .line 616
    invoke-static {p1, p1, v5, v2, v7}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 617
    .line 618
    .line 619
    const-class p1, Landroid/hardware/SensorPrivacyManager;

    .line 620
    .line 621
    iget-object v7, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyManager:Ldagger/Lazy;

    .line 622
    .line 623
    const/16 v8, 0x16

    .line 624
    .line 625
    invoke-static {v7, v7, v8, v2, p1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 626
    .line 627
    .line 628
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mLocationController:Ldagger/Lazy;

    .line 629
    .line 630
    const-class v7, Lcom/android/systemui/statusbar/policy/LocationController;

    .line 631
    .line 632
    invoke-static {p1, p1, v1, v2, v7}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 633
    .line 634
    .line 635
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mRotationLockController:Ldagger/Lazy;

    .line 636
    .line 637
    const/16 v7, 0xe

    .line 638
    .line 639
    const-class v9, Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 640
    .line 641
    invoke-static {p1, p1, v7, v2, v9}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 642
    .line 643
    .line 644
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SETTINGS_SUBSCREEN:Z

    .line 645
    .line 646
    const/16 v9, 0x19

    .line 647
    .line 648
    if-eqz p1, :cond_6

    .line 649
    .line 650
    iget-object v10, p0, Lcom/android/systemui/Dependency;->mNetworkController:Ldagger/Lazy;

    .line 651
    .line 652
    const-class v11, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 653
    .line 654
    invoke-static {v10, v10, v9, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 655
    .line 656
    .line 657
    :cond_6
    iget-object v10, p0, Lcom/android/systemui/Dependency;->mSRotationLockController:Ldagger/Lazy;

    .line 658
    .line 659
    const-class v11, Lcom/android/systemui/statusbar/policy/SRotationLockControllerImpl;

    .line 660
    .line 661
    invoke-static {v10, v10, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 662
    .line 663
    .line 664
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mZenModeController:Ldagger/Lazy;

    .line 665
    .line 666
    const/16 v10, 0x11

    .line 667
    .line 668
    const-class v11, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 669
    .line 670
    invoke-static {v1, v1, v10, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 671
    .line 672
    .line 673
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mHotspotController:Ldagger/Lazy;

    .line 674
    .line 675
    const/16 v11, 0x1c

    .line 676
    .line 677
    const-class v12, Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 678
    .line 679
    invoke-static {v1, v1, v11, v2, v12}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 680
    .line 681
    .line 682
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mCastController:Ldagger/Lazy;

    .line 683
    .line 684
    const/16 v12, 0x9

    .line 685
    .line 686
    const-class v13, Lcom/android/systemui/statusbar/policy/CastController;

    .line 687
    .line 688
    invoke-static {v1, v1, v12, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 689
    .line 690
    .line 691
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mFlashlightController:Ldagger/Lazy;

    .line 692
    .line 693
    const/16 v12, 0xa

    .line 694
    .line 695
    const-class v13, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 696
    .line 697
    invoke-static {v1, v1, v12, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 698
    .line 699
    .line 700
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mKeyguardMonitor:Ldagger/Lazy;

    .line 701
    .line 702
    const-class v12, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 703
    .line 704
    invoke-static {v1, v1, v5, v2, v12}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 705
    .line 706
    .line 707
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 708
    .line 709
    iget-object v5, p0, Lcom/android/systemui/Dependency;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 710
    .line 711
    const/16 v12, 0xc

    .line 712
    .line 713
    invoke-static {v5, v5, v12, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 714
    .line 715
    .line 716
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mUserSwitcherController:Ldagger/Lazy;

    .line 717
    .line 718
    const-class v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 719
    .line 720
    invoke-static {v1, v1, v3, v2, v5}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 721
    .line 722
    .line 723
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mUserInfoController:Ldagger/Lazy;

    .line 724
    .line 725
    const-class v3, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 726
    .line 727
    invoke-static {v1, v1, v7, v2, v3}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 728
    .line 729
    .line 730
    const-class v1, Landroid/hardware/display/NightDisplayListener;

    .line 731
    .line 732
    iget-object v3, p0, Lcom/android/systemui/Dependency;->mNightDisplayListener:Ldagger/Lazy;

    .line 733
    .line 734
    const/16 v5, 0xf

    .line 735
    .line 736
    invoke-static {v3, v3, v5, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 737
    .line 738
    .line 739
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mReduceBrightColorsController:Ldagger/Lazy;

    .line 740
    .line 741
    const-class v3, Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 742
    .line 743
    invoke-static {v1, v1, v0, v2, v3}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 744
    .line 745
    .line 746
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mManagedProfileController:Ldagger/Lazy;

    .line 747
    .line 748
    const-class v3, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 749
    .line 750
    invoke-static {v1, v1, v10, v2, v3}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 751
    .line 752
    .line 753
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mNextAlarmController:Ldagger/Lazy;

    .line 754
    .line 755
    const/16 v3, 0x12

    .line 756
    .line 757
    const-class v10, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 758
    .line 759
    invoke-static {v1, v1, v3, v2, v10}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 760
    .line 761
    .line 762
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDataSaverController:Ldagger/Lazy;

    .line 763
    .line 764
    const/16 v3, 0x13

    .line 765
    .line 766
    const-class v10, Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 767
    .line 768
    invoke-static {v1, v1, v3, v2, v10}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 769
    .line 770
    .line 771
    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 772
    .line 773
    iget-object v3, p0, Lcom/android/systemui/Dependency;->mAccessibilityController:Ldagger/Lazy;

    .line 774
    .line 775
    const/16 v10, 0x14

    .line 776
    .line 777
    invoke-static {v3, v3, v10, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 778
    .line 779
    .line 780
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    .line 781
    .line 782
    const-class v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 783
    .line 784
    invoke-static {v1, v1, v8, v2, v3}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 785
    .line 786
    .line 787
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    .line 788
    .line 789
    const/16 v3, 0x17

    .line 790
    .line 791
    const-class v13, Lcom/android/systemui/plugins/PluginManager;

    .line 792
    .line 793
    invoke-static {v1, v1, v3, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 794
    .line 795
    .line 796
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    .line 797
    .line 798
    const-class v13, Lcom/android/systemui/assist/AssistManager;

    .line 799
    .line 800
    invoke-static {v1, v1, v4, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 801
    .line 802
    .line 803
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mSecurityController:Ldagger/Lazy;

    .line 804
    .line 805
    const-class v4, Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 806
    .line 807
    invoke-static {v1, v1, v9, v2, v4}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 808
    .line 809
    .line 810
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mLeakDetector:Ldagger/Lazy;

    .line 811
    .line 812
    const/16 v4, 0x1a

    .line 813
    .line 814
    const-class v13, Lcom/android/systemui/util/leak/LeakDetector;

    .line 815
    .line 816
    invoke-static {v1, v1, v4, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 817
    .line 818
    .line 819
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mLeakReportEmail:Ldagger/Lazy;

    .line 820
    .line 821
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    new-instance v13, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda3;

    .line 825
    .line 826
    invoke-direct {v13, v1, v6}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda3;-><init>(Ldagger/Lazy;I)V

    .line 827
    .line 828
    .line 829
    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    .line 830
    .line 831
    invoke-virtual {v2, v1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mLeakReporter:Ldagger/Lazy;

    .line 835
    .line 836
    const-class v13, Lcom/android/systemui/util/leak/LeakReporter;

    .line 837
    .line 838
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 839
    .line 840
    .line 841
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mGarbageMonitor:Ldagger/Lazy;

    .line 842
    .line 843
    const/16 v11, 0x1d

    .line 844
    .line 845
    const-class v13, Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 846
    .line 847
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 848
    .line 849
    .line 850
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    .line 851
    .line 852
    const/4 v11, 0x1

    .line 853
    const-class v13, Lcom/android/systemui/tuner/TunerService;

    .line 854
    .line 855
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 856
    .line 857
    .line 858
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mNotificationShadeWindowController:Ldagger/Lazy;

    .line 859
    .line 860
    const/4 v11, 0x2

    .line 861
    const-class v13, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 862
    .line 863
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 864
    .line 865
    .line 866
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mTempStatusBarWindowController:Ldagger/Lazy;

    .line 867
    .line 868
    const/4 v11, 0x3

    .line 869
    const-class v13, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 870
    .line 871
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 872
    .line 873
    .line 874
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    .line 875
    .line 876
    const/4 v11, 0x4

    .line 877
    const-class v13, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 878
    .line 879
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 880
    .line 881
    .line 882
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mConfigurationController:Ldagger/Lazy;

    .line 883
    .line 884
    const/4 v11, 0x5

    .line 885
    const-class v13, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 886
    .line 887
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 888
    .line 889
    .line 890
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mStatusBarIconController:Ldagger/Lazy;

    .line 891
    .line 892
    const/4 v11, 0x6

    .line 893
    const-class v13, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 894
    .line 895
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 896
    .line 897
    .line 898
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mScreenLifecycle:Ldagger/Lazy;

    .line 899
    .line 900
    const/4 v11, 0x7

    .line 901
    const-class v13, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 902
    .line 903
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 904
    .line 905
    .line 906
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mWakefulnessLifecycle:Ldagger/Lazy;

    .line 907
    .line 908
    const/16 v11, 0x8

    .line 909
    .line 910
    const-class v13, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 911
    .line 912
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 913
    .line 914
    .line 915
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    .line 916
    .line 917
    const/16 v11, 0x9

    .line 918
    .line 919
    const-class v13, Lcom/android/systemui/fragments/FragmentService;

    .line 920
    .line 921
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 922
    .line 923
    .line 924
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mExtensionController:Ldagger/Lazy;

    .line 925
    .line 926
    const/16 v11, 0xa

    .line 927
    .line 928
    const-class v13, Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 929
    .line 930
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 931
    .line 932
    .line 933
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mPluginDependencyProvider:Ldagger/Lazy;

    .line 934
    .line 935
    const/16 v11, 0xb

    .line 936
    .line 937
    const-class v13, Lcom/android/systemui/plugins/PluginDependencyProvider;

    .line 938
    .line 939
    invoke-static {v1, v1, v11, v2, v13}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 940
    .line 941
    .line 942
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mLocalBluetoothManager:Ldagger/Lazy;

    .line 943
    .line 944
    const-class v11, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 945
    .line 946
    invoke-static {v1, v1, v12, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 947
    .line 948
    .line 949
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    .line 950
    .line 951
    const-class v11, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 952
    .line 953
    invoke-static {v1, v1, v7, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 954
    .line 955
    .line 956
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    .line 957
    .line 958
    iget-object v11, p0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    .line 959
    .line 960
    invoke-static {v11, v11, v5, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 961
    .line 962
    .line 963
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mAccessibilityManagerWrapper:Ldagger/Lazy;

    .line 964
    .line 965
    const-class v11, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 966
    .line 967
    invoke-static {v1, v1, v0, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 968
    .line 969
    .line 970
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 971
    .line 972
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mSysuiColorExtractor:Ldagger/Lazy;

    .line 973
    .line 974
    const/16 v11, 0x11

    .line 975
    .line 976
    invoke-static {v1, v1, v11, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 977
    .line 978
    .line 979
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTunablePaddingService:Ldagger/Lazy;

    .line 980
    .line 981
    const/16 v1, 0x12

    .line 982
    .line 983
    const-class v11, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    .line 984
    .line 985
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 986
    .line 987
    .line 988
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mForegroundServiceController:Ldagger/Lazy;

    .line 989
    .line 990
    const/16 v1, 0x13

    .line 991
    .line 992
    const-class v11, Lcom/android/systemui/ForegroundServiceController;

    .line 993
    .line 994
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 995
    .line 996
    .line 997
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    .line 998
    .line 999
    const-class v1, Lcom/android/systemui/UiOffloadThread;

    .line 1000
    .line 1001
    invoke-static {v0, v0, v10, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mWarningsUI:Ldagger/Lazy;

    .line 1005
    .line 1006
    const/16 v1, 0x15

    .line 1007
    .line 1008
    const-class v11, Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 1009
    .line 1010
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    .line 1014
    .line 1015
    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1016
    .line 1017
    invoke-static {v0, v0, v8, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1018
    .line 1019
    .line 1020
    const-class v0, Landroid/view/IWindowManager;

    .line 1021
    .line 1022
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mIWindowManager:Ldagger/Lazy;

    .line 1023
    .line 1024
    invoke-static {v1, v1, v3, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1025
    .line 1026
    .line 1027
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mOverviewProxyService:Ldagger/Lazy;

    .line 1028
    .line 1029
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 1030
    .line 1031
    invoke-static {v0, v0, v9, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1032
    .line 1033
    .line 1034
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    .line 1035
    .line 1036
    const-class v1, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 1037
    .line 1038
    invoke-static {v0, v0, v4, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1039
    .line 1040
    .line 1041
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAccessibilityButtonModeObserver:Ldagger/Lazy;

    .line 1042
    .line 1043
    const-class v1, Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    .line 1044
    .line 1045
    invoke-static {v0, v0, v6, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1046
    .line 1047
    .line 1048
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAccessibilityButtonListController:Ldagger/Lazy;

    .line 1049
    .line 1050
    const/16 v1, 0x1c

    .line 1051
    .line 1052
    const-class v11, Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    .line 1053
    .line 1054
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1055
    .line 1056
    .line 1057
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mEnhancedEstimates:Ldagger/Lazy;

    .line 1058
    .line 1059
    const/16 v1, 0x1d

    .line 1060
    .line 1061
    const-class v11, Lcom/android/systemui/power/EnhancedEstimates;

    .line 1062
    .line 1063
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1064
    .line 1065
    .line 1066
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mVibratorHelper:Ldagger/Lazy;

    .line 1067
    .line 1068
    const/4 v1, 0x1

    .line 1069
    const-class v11, Lcom/android/systemui/statusbar/VibratorHelper;

    .line 1070
    .line 1071
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1072
    .line 1073
    .line 1074
    const-class v0, Lcom/android/internal/statusbar/IStatusBarService;

    .line 1075
    .line 1076
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mIStatusBarService:Ldagger/Lazy;

    .line 1077
    .line 1078
    const/4 v11, 0x2

    .line 1079
    invoke-static {v1, v1, v11, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1080
    .line 1081
    .line 1082
    const-class v0, Landroid/util/DisplayMetrics;

    .line 1083
    .line 1084
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDisplayMetrics:Ldagger/Lazy;

    .line 1085
    .line 1086
    const/4 v11, 0x3

    .line 1087
    invoke-static {v1, v1, v11, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1088
    .line 1089
    .line 1090
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLockscreenGestureLogger:Ldagger/Lazy;

    .line 1091
    .line 1092
    const/4 v1, 0x4

    .line 1093
    const-class v11, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 1094
    .line 1095
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1096
    .line 1097
    .line 1098
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mShadeController:Ldagger/Lazy;

    .line 1099
    .line 1100
    const/4 v1, 0x5

    .line 1101
    const-class v11, Lcom/android/systemui/shade/ShadeController;

    .line 1102
    .line 1103
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1104
    .line 1105
    .line 1106
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

    .line 1107
    .line 1108
    const/4 v1, 0x6

    .line 1109
    const-class v11, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    .line 1110
    .line 1111
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1112
    .line 1113
    .line 1114
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAppOpsController:Ldagger/Lazy;

    .line 1115
    .line 1116
    const/4 v1, 0x7

    .line 1117
    const-class v11, Lcom/android/systemui/appops/AppOpsController;

    .line 1118
    .line 1119
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1120
    .line 1121
    .line 1122
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    .line 1123
    .line 1124
    const/16 v1, 0x8

    .line 1125
    .line 1126
    const-class v11, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 1127
    .line 1128
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAccessibilityFloatingMenuController:Ldagger/Lazy;

    .line 1132
    .line 1133
    const/16 v1, 0x9

    .line 1134
    .line 1135
    const-class v11, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    .line 1136
    .line 1137
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1138
    .line 1139
    .line 1140
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    .line 1141
    .line 1142
    const/16 v1, 0xa

    .line 1143
    .line 1144
    const-class v11, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 1145
    .line 1146
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationLockscreenUserManager:Ldagger/Lazy;

    .line 1150
    .line 1151
    const/16 v1, 0xb

    .line 1152
    .line 1153
    const-class v11, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 1154
    .line 1155
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1156
    .line 1157
    .line 1158
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    .line 1159
    .line 1160
    const-class v1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 1161
    .line 1162
    invoke-static {v0, v0, v12, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1163
    .line 1164
    .line 1165
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationGutsManager:Ldagger/Lazy;

    .line 1166
    .line 1167
    const/16 v1, 0xd

    .line 1168
    .line 1169
    const-class v11, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 1170
    .line 1171
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1172
    .line 1173
    .line 1174
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManager:Ldagger/Lazy;

    .line 1175
    .line 1176
    const-class v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 1177
    .line 1178
    invoke-static {v0, v0, v7, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1179
    .line 1180
    .line 1181
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSmartReplyConstants:Ldagger/Lazy;

    .line 1182
    .line 1183
    const-class v1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 1184
    .line 1185
    invoke-static {v0, v0, v5, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1186
    .line 1187
    .line 1188
    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    .line 1189
    .line 1190
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mNotificationListener:Ldagger/Lazy;

    .line 1191
    .line 1192
    const/16 v11, 0x11

    .line 1193
    .line 1194
    invoke-static {v1, v1, v11, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1195
    .line 1196
    .line 1197
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationLogger:Ldagger/Lazy;

    .line 1198
    .line 1199
    const/16 v1, 0x12

    .line 1200
    .line 1201
    const-class v11, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 1202
    .line 1203
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1204
    .line 1205
    .line 1206
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardDismissUtil:Ldagger/Lazy;

    .line 1207
    .line 1208
    const/16 v1, 0x13

    .line 1209
    .line 1210
    const-class v11, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 1211
    .line 1212
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1213
    .line 1214
    .line 1215
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSmartReplyController:Ldagger/Lazy;

    .line 1216
    .line 1217
    const-class v1, Lcom/android/systemui/statusbar/SmartReplyController;

    .line 1218
    .line 1219
    invoke-static {v0, v0, v10, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1220
    .line 1221
    .line 1222
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

    .line 1223
    .line 1224
    const/16 v1, 0x15

    .line 1225
    .line 1226
    const-class v11, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 1227
    .line 1228
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1229
    .line 1230
    .line 1231
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mClockManager:Ldagger/Lazy;

    .line 1232
    .line 1233
    const-class v1, Lcom/android/keyguard/clock/ClockManager;

    .line 1234
    .line 1235
    invoke-static {v0, v0, v8, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1236
    .line 1237
    .line 1238
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPrivacyItemController:Ldagger/Lazy;

    .line 1239
    .line 1240
    const-class v1, Lcom/android/systemui/privacy/PrivacyItemController;

    .line 1241
    .line 1242
    invoke-static {v0, v0, v3, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1243
    .line 1244
    .line 1245
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mActivityManagerWrapper:Ldagger/Lazy;

    .line 1246
    .line 1247
    const/16 v1, 0x18

    .line 1248
    .line 1249
    const-class v11, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 1250
    .line 1251
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1252
    .line 1253
    .line 1254
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDevicePolicyManagerWrapper:Ldagger/Lazy;

    .line 1255
    .line 1256
    const-class v1, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    .line 1257
    .line 1258
    invoke-static {v0, v0, v9, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1259
    .line 1260
    .line 1261
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPackageManagerWrapper:Ldagger/Lazy;

    .line 1262
    .line 1263
    const-class v1, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 1264
    .line 1265
    invoke-static {v0, v0, v4, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1266
    .line 1267
    .line 1268
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyController:Ldagger/Lazy;

    .line 1269
    .line 1270
    const/16 v1, 0x1c

    .line 1271
    .line 1272
    const-class v11, Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    .line 1273
    .line 1274
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1275
    .line 1276
    .line 1277
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDockManager:Ldagger/Lazy;

    .line 1278
    .line 1279
    const/16 v1, 0x1d

    .line 1280
    .line 1281
    const-class v11, Lcom/android/systemui/dock/DockManager;

    .line 1282
    .line 1283
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1284
    .line 1285
    .line 1286
    const-class v0, Landroid/app/INotificationManager;

    .line 1287
    .line 1288
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mINotificationManager:Ldagger/Lazy;

    .line 1289
    .line 1290
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    new-instance v11, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 1294
    .line 1295
    const/4 v13, 0x1

    .line 1296
    invoke-direct {v11, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {v2, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    .line 1301
    .line 1302
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSysUiStateFlagsContainer:Ldagger/Lazy;

    .line 1303
    .line 1304
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    .line 1306
    .line 1307
    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 1308
    .line 1309
    const/4 v11, 0x2

    .line 1310
    invoke-direct {v1, v0, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 1311
    .line 1312
    .line 1313
    const-class v0, Lcom/android/systemui/model/SysUiState;

    .line 1314
    .line 1315
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    .line 1317
    .line 1318
    const-class v0, Landroid/app/AlarmManager;

    .line 1319
    .line 1320
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mAlarmManager:Ldagger/Lazy;

    .line 1321
    .line 1322
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    new-instance v11, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 1326
    .line 1327
    const/4 v13, 0x3

    .line 1328
    invoke-direct {v11, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v2, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    .line 1333
    .line 1334
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardSecurityModel:Ldagger/Lazy;

    .line 1335
    .line 1336
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 1340
    .line 1341
    const/4 v11, 0x4

    .line 1342
    invoke-direct {v1, v0, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 1343
    .line 1344
    .line 1345
    const-class v0, Lcom/android/keyguard/KeyguardSecurityModel;

    .line 1346
    .line 1347
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDozeParameters:Ldagger/Lazy;

    .line 1351
    .line 1352
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 1356
    .line 1357
    const/4 v11, 0x5

    .line 1358
    invoke-direct {v1, v0, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 1359
    .line 1360
    .line 1361
    const-class v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 1362
    .line 1363
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    .line 1365
    .line 1366
    const-class v0, Landroid/app/IWallpaperManager;

    .line 1367
    .line 1368
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mWallpaperManager:Ldagger/Lazy;

    .line 1369
    .line 1370
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    new-instance v11, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 1374
    .line 1375
    const/4 v13, 0x6

    .line 1376
    invoke-direct {v11, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v2, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    .line 1381
    .line 1382
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 1383
    .line 1384
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mCommandQueue:Ldagger/Lazy;

    .line 1385
    .line 1386
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    .line 1388
    .line 1389
    new-instance v11, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 1390
    .line 1391
    const/4 v13, 0x7

    .line 1392
    invoke-direct {v11, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v2, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProtoTracer:Ldagger/Lazy;

    .line 1399
    .line 1400
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    .line 1402
    .line 1403
    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 1404
    .line 1405
    const/16 v11, 0x8

    .line 1406
    .line 1407
    invoke-direct {v1, v0, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 1408
    .line 1409
    .line 1410
    const-class v0, Lcom/android/systemui/tracing/ProtoTracer;

    .line 1411
    .line 1412
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    .line 1414
    .line 1415
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDeviceConfigProxy:Ldagger/Lazy;

    .line 1416
    .line 1417
    const/4 v1, 0x1

    .line 1418
    const-class v11, Lcom/android/systemui/util/DeviceConfigProxy;

    .line 1419
    .line 1420
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1421
    .line 1422
    .line 1423
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTelephonyListenerManager:Ldagger/Lazy;

    .line 1424
    .line 1425
    const/4 v1, 0x2

    .line 1426
    const-class v11, Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 1427
    .line 1428
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1429
    .line 1430
    .line 1431
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAutoHideController:Ldagger/Lazy;

    .line 1432
    .line 1433
    const/4 v1, 0x3

    .line 1434
    const-class v11, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 1435
    .line 1436
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1437
    .line 1438
    .line 1439
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mRecordingController:Ldagger/Lazy;

    .line 1440
    .line 1441
    const/4 v1, 0x4

    .line 1442
    const-class v11, Lcom/android/systemui/screenrecord/RecordingController;

    .line 1443
    .line 1444
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1445
    .line 1446
    .line 1447
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMediaOutputDialogFactory:Ldagger/Lazy;

    .line 1448
    .line 1449
    const/4 v1, 0x5

    .line 1450
    const-class v11, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 1451
    .line 1452
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1453
    .line 1454
    .line 1455
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSystemStatusAnimationSchedulerLazy:Ldagger/Lazy;

    .line 1456
    .line 1457
    const/4 v1, 0x6

    .line 1458
    const-class v11, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 1459
    .line 1460
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1461
    .line 1462
    .line 1463
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPrivacyDotViewControllerLazy:Ldagger/Lazy;

    .line 1464
    .line 1465
    const/4 v1, 0x7

    .line 1466
    const-class v11, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 1467
    .line 1468
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1469
    .line 1470
    .line 1471
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mInternetDialogFactory:Ldagger/Lazy;

    .line 1472
    .line 1473
    const/16 v1, 0x8

    .line 1474
    .line 1475
    const-class v11, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

    .line 1476
    .line 1477
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1478
    .line 1479
    .line 1480
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mEdgeBackGestureHandlerFactoryLazy:Ldagger/Lazy;

    .line 1481
    .line 1482
    const/16 v1, 0x9

    .line 1483
    .line 1484
    const-class v11, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;

    .line 1485
    .line 1486
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1487
    .line 1488
    .line 1489
    const-class v0, Lcom/android/internal/logging/UiEventLogger;

    .line 1490
    .line 1491
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mUiEventLogger:Ldagger/Lazy;

    .line 1492
    .line 1493
    const/16 v11, 0xa

    .line 1494
    .line 1495
    invoke-static {v1, v1, v11, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1496
    .line 1497
    .line 1498
    const-class v0, Lcom/android/systemui/flags/FeatureFlags;

    .line 1499
    .line 1500
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mFeatureFlagsLazy:Ldagger/Lazy;

    .line 1501
    .line 1502
    invoke-static {v1, v1, v12, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1503
    .line 1504
    .line 1505
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mContentInsetsProviderLazy:Ldagger/Lazy;

    .line 1506
    .line 1507
    const/16 v1, 0xd

    .line 1508
    .line 1509
    const-class v11, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 1510
    .line 1511
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1512
    .line 1513
    .line 1514
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationSectionsManagerLazy:Ldagger/Lazy;

    .line 1515
    .line 1516
    const-class v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    .line 1517
    .line 1518
    invoke-static {v0, v0, v7, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1519
    .line 1520
    .line 1521
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mScreenOffAnimationController:Ldagger/Lazy;

    .line 1522
    .line 1523
    const-class v1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 1524
    .line 1525
    invoke-static {v0, v0, v5, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1526
    .line 1527
    .line 1528
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAmbientStateLazy:Ldagger/Lazy;

    .line 1529
    .line 1530
    const/16 v1, 0x10

    .line 1531
    .line 1532
    const-class v11, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1533
    .line 1534
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1535
    .line 1536
    .line 1537
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mGroupMembershipManagerLazy:Ldagger/Lazy;

    .line 1538
    .line 1539
    const/16 v1, 0x11

    .line 1540
    .line 1541
    const-class v11, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 1542
    .line 1543
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1544
    .line 1545
    .line 1546
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mGroupExpansionManagerLazy:Ldagger/Lazy;

    .line 1547
    .line 1548
    const/16 v1, 0x12

    .line 1549
    .line 1550
    const-class v11, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    .line 1551
    .line 1552
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1553
    .line 1554
    .line 1555
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSystemUIDialogManagerLazy:Ldagger/Lazy;

    .line 1556
    .line 1557
    const/16 v1, 0x13

    .line 1558
    .line 1559
    const-class v11, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 1560
    .line 1561
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1562
    .line 1563
    .line 1564
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDialogLaunchAnimatorLazy:Ldagger/Lazy;

    .line 1565
    .line 1566
    const-class v1, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 1567
    .line 1568
    invoke-static {v0, v0, v10, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1569
    .line 1570
    .line 1571
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUserTrackerLazy:Ldagger/Lazy;

    .line 1572
    .line 1573
    const/16 v1, 0x15

    .line 1574
    .line 1575
    const-class v11, Lcom/android/systemui/settings/UserTracker;

    .line 1576
    .line 1577
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1578
    .line 1579
    .line 1580
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLooperSlowLogController:Ldagger/Lazy;

    .line 1581
    .line 1582
    const-class v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 1583
    .line 1584
    invoke-static {v0, v0, v3, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1585
    .line 1586
    .line 1587
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSPluginManager:Ldagger/Lazy;

    .line 1588
    .line 1589
    const/16 v1, 0x18

    .line 1590
    .line 1591
    const-class v11, Lcom/samsung/systemui/splugins/SPluginManager;

    .line 1592
    .line 1593
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1594
    .line 1595
    .line 1596
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSPluginDependencyProvider:Ldagger/Lazy;

    .line 1597
    .line 1598
    const-class v1, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    .line 1599
    .line 1600
    invoke-static {v0, v0, v9, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1601
    .line 1602
    .line 1603
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUserInteractorLazy:Ldagger/Lazy;

    .line 1604
    .line 1605
    const-class v1, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 1606
    .line 1607
    invoke-static {v0, v0, v4, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1608
    .line 1609
    .line 1610
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAnimationUtils:Ldagger/Lazy;

    .line 1611
    .line 1612
    const-class v1, Lcom/android/systemui/qp/util/AnimationUtils;

    .line 1613
    .line 1614
    invoke-static {v0, v0, v6, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1615
    .line 1616
    .line 1617
    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 1618
    .line 1619
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mKeyguardVisibilityMonitor:Ldagger/Lazy;

    .line 1620
    .line 1621
    const/16 v11, 0x1c

    .line 1622
    .line 1623
    invoke-static {v1, v1, v11, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1624
    .line 1625
    .line 1626
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSecRotationWatcher:Ldagger/Lazy;

    .line 1627
    .line 1628
    const/16 v1, 0x1d

    .line 1629
    .line 1630
    const-class v11, Lcom/android/keyguard/SecRotationWatcher;

    .line 1631
    .line 1632
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1633
    .line 1634
    .line 1635
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1636
    .line 1637
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mFastUnlockController:Ldagger/Lazy;

    .line 1638
    .line 1639
    const/4 v11, 0x1

    .line 1640
    invoke-static {v1, v1, v11, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1641
    .line 1642
    .line 1643
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mCentralSurfaces:Ldagger/Lazy;

    .line 1644
    .line 1645
    const/4 v1, 0x2

    .line 1646
    const-class v11, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1647
    .line 1648
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1649
    .line 1650
    .line 1651
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFoldController:Ldagger/Lazy;

    .line 1652
    .line 1653
    const/4 v1, 0x3

    .line 1654
    const-class v11, Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 1655
    .line 1656
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1657
    .line 1658
    .line 1659
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 1660
    .line 1661
    if-eqz v0, :cond_7

    .line 1662
    .line 1663
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUnlockedScreenOffAnimationHelper:Ldagger/Lazy;

    .line 1664
    .line 1665
    const/4 v1, 0x4

    .line 1666
    const-class v11, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    .line 1667
    .line 1668
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1669
    .line 1670
    .line 1671
    :cond_7
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 1672
    .line 1673
    if-eqz v0, :cond_8

    .line 1674
    .line 1675
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNavBarStore:Ldagger/Lazy;

    .line 1676
    .line 1677
    const/4 v1, 0x5

    .line 1678
    const-class v11, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 1679
    .line 1680
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1681
    .line 1682
    .line 1683
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNavBarBgHandler:Ldagger/Lazy;

    .line 1684
    .line 1685
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    .line 1687
    .line 1688
    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda1;

    .line 1689
    .line 1690
    const/4 v11, 0x6

    .line 1691
    invoke-direct {v1, v0, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda1;-><init>(Ldagger/Lazy;I)V

    .line 1692
    .line 1693
    .line 1694
    sget-object v0, Lcom/android/systemui/Dependency;->NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 1695
    .line 1696
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    .line 1698
    .line 1699
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTaskbarDelegate:Ldagger/Lazy;

    .line 1700
    .line 1701
    const/4 v1, 0x7

    .line 1702
    const-class v11, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 1703
    .line 1704
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1705
    .line 1706
    .line 1707
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSettingsHelper:Ldagger/Lazy;

    .line 1708
    .line 1709
    const/16 v1, 0x8

    .line 1710
    .line 1711
    const-class v11, Lcom/android/systemui/util/SettingsHelper;

    .line 1712
    .line 1713
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1714
    .line 1715
    .line 1716
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDisplayLifecycle:Ldagger/Lazy;

    .line 1717
    .line 1718
    const/16 v1, 0x9

    .line 1719
    .line 1720
    const-class v11, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 1721
    .line 1722
    invoke-static {v0, v0, v1, v2, v11}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1723
    .line 1724
    .line 1725
    if-eqz p1, :cond_9

    .line 1726
    .line 1727
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSubscreenUtil:Ldagger/Lazy;

    .line 1728
    .line 1729
    const/16 v0, 0xa

    .line 1730
    .line 1731
    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 1732
    .line 1733
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1734
    .line 1735
    .line 1736
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mCoverUtilWrapper:Ldagger/Lazy;

    .line 1737
    .line 1738
    const/16 v0, 0xb

    .line 1739
    .line 1740
    const-class v1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 1741
    .line 1742
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1743
    .line 1744
    .line 1745
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    .line 1746
    .line 1747
    if-eqz p1, :cond_a

    .line 1748
    .line 1749
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSubScreenManager:Ldagger/Lazy;

    .line 1750
    .line 1751
    const-class v0, Lcom/android/systemui/subscreen/SubScreenManager;

    .line 1752
    .line 1753
    invoke-static {p1, p1, v12, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1754
    .line 1755
    .line 1756
    :cond_a
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 1757
    .line 1758
    if-eqz p1, :cond_b

    .line 1759
    .line 1760
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mCoverScreenManager:Ldagger/Lazy;

    .line 1761
    .line 1762
    const/16 v0, 0xd

    .line 1763
    .line 1764
    const-class v1, Lcom/android/systemui/cover/CoverScreenManager;

    .line 1765
    .line 1766
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1767
    .line 1768
    .line 1769
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mGlobalActionsComponent:Ldagger/Lazy;

    .line 1770
    .line 1771
    const-class v0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 1772
    .line 1773
    invoke-static {p1, p1, v5, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1774
    .line 1775
    .line 1776
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mWallpaperEventNotifier:Ldagger/Lazy;

    .line 1777
    .line 1778
    const/16 v0, 0x10

    .line 1779
    .line 1780
    const-class v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 1781
    .line 1782
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1783
    .line 1784
    .line 1785
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mWallpaperChangeNotifier:Ldagger/Lazy;

    .line 1786
    .line 1787
    const/16 v0, 0x11

    .line 1788
    .line 1789
    const-class v1, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    .line 1790
    .line 1791
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1792
    .line 1793
    .line 1794
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mPluginLockManager:Ldagger/Lazy;

    .line 1795
    .line 1796
    const/16 v0, 0x12

    .line 1797
    .line 1798
    const-class v1, Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 1799
    .line 1800
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1801
    .line 1802
    .line 1803
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mPluginWallpaperManager:Ldagger/Lazy;

    .line 1804
    .line 1805
    const/16 v0, 0x13

    .line 1806
    .line 1807
    const-class v1, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 1808
    .line 1809
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1810
    .line 1811
    .line 1812
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mPluginLockStarManager:Ldagger/Lazy;

    .line 1813
    .line 1814
    const-class v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 1815
    .line 1816
    invoke-static {p1, p1, v10, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1817
    .line 1818
    .line 1819
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mPluginFaceWidgetManager:Ldagger/Lazy;

    .line 1820
    .line 1821
    const/16 v0, 0x15

    .line 1822
    .line 1823
    const-class v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 1824
    .line 1825
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1826
    .line 1827
    .line 1828
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mFaceWidgetController:Ldagger/Lazy;

    .line 1829
    .line 1830
    const-class v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    .line 1831
    .line 1832
    invoke-static {p1, p1, v8, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1833
    .line 1834
    .line 1835
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mExternalClockProvider:Ldagger/Lazy;

    .line 1836
    .line 1837
    const-class v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 1838
    .line 1839
    invoke-static {p1, p1, v3, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1840
    .line 1841
    .line 1842
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mResetSettingsManager:Ldagger/Lazy;

    .line 1843
    .line 1844
    const/16 v0, 0x18

    .line 1845
    .line 1846
    const-class v1, Lcom/android/systemui/util/QsResetSettingsManager;

    .line 1847
    .line 1848
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1849
    .line 1850
    .line 1851
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mQSClockBellTower:Ldagger/Lazy;

    .line 1852
    .line 1853
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    .line 1854
    .line 1855
    invoke-static {p1, p1, v4, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1856
    .line 1857
    .line 1858
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mPanelBlockExpandingHelper:Ldagger/Lazy;

    .line 1859
    .line 1860
    const-class v0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    .line 1861
    .line 1862
    invoke-static {p1, p1, v6, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1863
    .line 1864
    .line 1865
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationColorPicker:Ldagger/Lazy;

    .line 1866
    .line 1867
    const/16 v0, 0x1c

    .line 1868
    .line 1869
    const-class v1, Lnoticolorpicker/NotificationColorPicker;

    .line 1870
    .line 1871
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1872
    .line 1873
    .line 1874
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSystemUIIndexMediator:Ldagger/Lazy;

    .line 1875
    .line 1876
    const/16 v0, 0x1d

    .line 1877
    .line 1878
    const-class v1, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 1879
    .line 1880
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1881
    .line 1882
    .line 1883
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSecQSPanelResourcePicker:Ldagger/Lazy;

    .line 1884
    .line 1885
    const/4 v0, 0x1

    .line 1886
    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 1887
    .line 1888
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1889
    .line 1890
    .line 1891
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationBackupRestoreManager:Ldagger/Lazy;

    .line 1892
    .line 1893
    const/4 v0, 0x2

    .line 1894
    const-class v1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;

    .line 1895
    .line 1896
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1897
    .line 1898
    .line 1899
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mQSBackupRestoreManager:Ldagger/Lazy;

    .line 1900
    .line 1901
    const/4 v0, 0x3

    .line 1902
    const-class v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 1903
    .line 1904
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1905
    .line 1906
    .line 1907
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mKnoxStateMonitor:Ldagger/Lazy;

    .line 1908
    .line 1909
    const/4 v0, 0x4

    .line 1910
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 1911
    .line 1912
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1913
    .line 1914
    .line 1915
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mNotifLiveDataStore:Ldagger/Lazy;

    .line 1916
    .line 1917
    const/4 v0, 0x5

    .line 1918
    const-class v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    .line 1919
    .line 1920
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1921
    .line 1922
    .line 1923
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mHeadsUpManager:Ldagger/Lazy;

    .line 1924
    .line 1925
    const/4 v0, 0x6

    .line 1926
    const-class v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 1927
    .line 1928
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1929
    .line 1930
    .line 1931
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSecPanelExpansionStateNotifier:Ldagger/Lazy;

    .line 1932
    .line 1933
    const/4 v0, 0x7

    .line 1934
    const-class v1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 1935
    .line 1936
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1937
    .line 1938
    .line 1939
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationIconTransitionManager:Ldagger/Lazy;

    .line 1940
    .line 1941
    const/16 v0, 0x8

    .line 1942
    .line 1943
    const-class v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 1944
    .line 1945
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1946
    .line 1947
    .line 1948
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSecPanelLogger:Ldagger/Lazy;

    .line 1949
    .line 1950
    const/16 v0, 0x9

    .line 1951
    .line 1952
    const-class v1, Lcom/android/systemui/log/SecPanelLogger;

    .line 1953
    .line 1954
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1955
    .line 1956
    .line 1957
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSecPanelPolicy:Ldagger/Lazy;

    .line 1958
    .line 1959
    const/16 v0, 0xa

    .line 1960
    .line 1961
    const-class v1, Lcom/android/systemui/shade/SecPanelPolicy;

    .line 1962
    .line 1963
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1964
    .line 1965
    .line 1966
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mKeyguardShortcutManager:Ldagger/Lazy;

    .line 1967
    .line 1968
    const/16 v0, 0xb

    .line 1969
    .line 1970
    const-class v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 1971
    .line 1972
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1973
    .line 1974
    .line 1975
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mDesktopManager:Ldagger/Lazy;

    .line 1976
    .line 1977
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    .line 1978
    .line 1979
    invoke-static {p1, p1, v12, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1980
    .line 1981
    .line 1982
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_BAR_MULTISIM:Z

    .line 1983
    .line 1984
    if-eqz p1, :cond_c

    .line 1985
    .line 1986
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mMultiSIMControllerLazy:Ldagger/Lazy;

    .line 1987
    .line 1988
    const/16 v0, 0xd

    .line 1989
    .line 1990
    const-class v1, Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 1991
    .line 1992
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1993
    .line 1994
    .line 1995
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSimpleStatusBarIconController:Ldagger/Lazy;

    .line 1996
    .line 1997
    const-class v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    .line 1998
    .line 1999
    invoke-static {p1, p1, v7, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2000
    .line 2001
    .line 2002
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mOnUserInteractionCallback:Ldagger/Lazy;

    .line 2003
    .line 2004
    const-class v0, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    .line 2005
    .line 2006
    invoke-static {p1, p1, v5, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2007
    .line 2008
    .line 2009
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mChannelEditorDialogController:Ldagger/Lazy;

    .line 2010
    .line 2011
    const/16 v0, 0x10

    .line 2012
    .line 2013
    const-class v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 2014
    .line 2015
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2016
    .line 2017
    .line 2018
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mHighPriorityProvider:Ldagger/Lazy;

    .line 2019
    .line 2020
    const/16 v0, 0x12

    .line 2021
    .line 2022
    const-class v1, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 2023
    .line 2024
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2025
    .line 2026
    .line 2027
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mAssistantFeedbackController:Ldagger/Lazy;

    .line 2028
    .line 2029
    const/16 v0, 0x13

    .line 2030
    .line 2031
    const-class v1, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 2032
    .line 2033
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2034
    .line 2035
    .line 2036
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mPeopleSpaceWidgetManager:Ldagger/Lazy;

    .line 2037
    .line 2038
    const-class v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 2039
    .line 2040
    invoke-static {p1, p1, v10, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2041
    .line 2042
    .line 2043
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mUserContextProvider:Ldagger/Lazy;

    .line 2044
    .line 2045
    const/16 v0, 0x15

    .line 2046
    .line 2047
    const-class v1, Lcom/android/systemui/settings/UserContextProvider;

    .line 2048
    .line 2049
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2050
    .line 2051
    .line 2052
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mBubblesManagerOptional:Ldagger/Lazy;

    .line 2053
    .line 2054
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    .line 2056
    .line 2057
    new-instance v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda2;

    .line 2058
    .line 2059
    invoke-direct {v0, p1, v8}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda2;-><init>(Ldagger/Lazy;I)V

    .line 2060
    .line 2061
    .line 2062
    sget-object p1, Lcom/android/systemui/Dependency;->BUBBLE_MANAGER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 2063
    .line 2064
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    .line 2066
    .line 2067
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mBgHandler:Ldagger/Lazy;

    .line 2068
    .line 2069
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    .line 2071
    .line 2072
    new-instance v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda2;

    .line 2073
    .line 2074
    invoke-direct {v0, p1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda2;-><init>(Ldagger/Lazy;I)V

    .line 2075
    .line 2076
    .line 2077
    sget-object p1, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 2078
    .line 2079
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    .line 2081
    .line 2082
    const-class p1, Landroid/content/pm/LauncherApps;

    .line 2083
    .line 2084
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLauncherApps:Ldagger/Lazy;

    .line 2085
    .line 2086
    const/16 v1, 0x18

    .line 2087
    .line 2088
    invoke-static {v0, v0, v1, v2, p1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2089
    .line 2090
    .line 2091
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    .line 2092
    .line 2093
    if-eqz p1, :cond_d

    .line 2094
    .line 2095
    const-class p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 2096
    .line 2097
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSubscreenNotificationController:Ldagger/Lazy;

    .line 2098
    .line 2099
    invoke-static {v0, v0, v9, v2, p1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2100
    .line 2101
    .line 2102
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mNotifCollection:Ldagger/Lazy;

    .line 2103
    .line 2104
    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 2105
    .line 2106
    invoke-static {p1, p1, v4, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2107
    .line 2108
    .line 2109
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mFullExpansionPanelNotiAlphaController:Ldagger/Lazy;

    .line 2110
    .line 2111
    const-class v0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    .line 2112
    .line 2113
    invoke-static {p1, p1, v6, v2, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2114
    .line 2115
    .line 2116
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationShelfManager:Ldagger/Lazy;

    .line 2117
    .line 2118
    const/16 v0, 0x1d

    .line 2119
    .line 2120
    const-class v1, Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 2121
    .line 2122
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2123
    .line 2124
    .line 2125
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mPanelScreenShotBufferLogger:Ldagger/Lazy;

    .line 2126
    .line 2127
    const/4 v0, 0x1

    .line 2128
    const-class v1, Lcom/android/systemui/logging/PanelScreenShotBufferLogger;

    .line 2129
    .line 2130
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2131
    .line 2132
    .line 2133
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mNotiCinemaLogger:Ldagger/Lazy;

    .line 2134
    .line 2135
    const/4 v0, 0x2

    .line 2136
    const-class v1, Lcom/android/systemui/logging/NotiCinemaLogger;

    .line 2137
    .line 2138
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2139
    .line 2140
    .line 2141
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    .line 2142
    .line 2143
    if-eqz p1, :cond_e

    .line 2144
    .line 2145
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSubscreenQsPanelController:Ldagger/Lazy;

    .line 2146
    .line 2147
    const/4 v0, 0x3

    .line 2148
    const-class v1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 2149
    .line 2150
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2151
    .line 2152
    .line 2153
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mShelfToolTipManager:Ldagger/Lazy;

    .line 2154
    .line 2155
    const/4 v0, 0x4

    .line 2156
    const-class v1, Lcom/android/systemui/ShelfToolTipManager;

    .line 2157
    .line 2158
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2159
    .line 2160
    .line 2161
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSubscreenMusicWidgetController:Ldagger/Lazy;

    .line 2162
    .line 2163
    const/4 v0, 0x5

    .line 2164
    const-class v1, Lcom/android/systemui/media/SubscreenMusicWidgetController;

    .line 2165
    .line 2166
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2167
    .line 2168
    .line 2169
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 2170
    .line 2171
    if-eqz p1, :cond_f

    .line 2172
    .line 2173
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationsController:Ldagger/Lazy;

    .line 2174
    .line 2175
    const/4 v0, 0x6

    .line 2176
    const-class v1, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    .line 2177
    .line 2178
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2179
    .line 2180
    .line 2181
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mShadeHeaderController:Ldagger/Lazy;

    .line 2182
    .line 2183
    const/4 v0, 0x7

    .line 2184
    const-class v1, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2185
    .line 2186
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2187
    .line 2188
    .line 2189
    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    .line 2190
    .line 2191
    if-eqz p1, :cond_10

    .line 2192
    .line 2193
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mSearcleManager:Ldagger/Lazy;

    .line 2194
    .line 2195
    const/16 v0, 0x8

    .line 2196
    .line 2197
    const-class v1, Lcom/android/systemui/searcle/SearcleManager;

    .line 2198
    .line 2199
    invoke-static {p1, p1, v0, v2, v1}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 2200
    .line 2201
    .line 2202
    :cond_10
    invoke-static {p0}, Lcom/android/systemui/Dependency;->setInstance(Lcom/android/systemui/Dependency;)V

    .line 2203
    .line 2204
    .line 2205
    return-void
.end method

.method public prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    return-object p1
.end method
