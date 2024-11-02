.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchingProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field public final id:I

.field public final navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->id:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->id:I

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_4

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    .line 27
    .line 28
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->factoryProvider2:Ljavax/inject/Provider;

    .line 37
    .line 38
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/systemui/settings/DisplayTracker;

    .line 53
    .line 54
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;Lcom/android/systemui/settings/DisplayTracker;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .line 59
    .line 60
    iget v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->id:I

    .line 61
    .line 62
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    .line 69
    .line 70
    const-class v1, Landroid/view/WindowManager;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/view/WindowManager;

    .line 77
    .line 78
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 85
    .line 86
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBarModule_ProvideNavigationBarFrameFactory;->provideNavigationBarFrame(Landroid/view/LayoutInflater;)Lcom/android/systemui/navigationbar/NavigationBarFrame;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 110
    .line 111
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 112
    .line 113
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Landroid/view/LayoutInflater;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ljavax/inject/Provider;

    .line 122
    .line 123
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    .line 128
    .line 129
    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarModule_ProvideNavigationBarviewFactory;->provideNavigationBarview(Landroid/view/LayoutInflater;Lcom/android/systemui/navigationbar/NavigationBarFrame;)Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0

    .line 134
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 135
    .line 136
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    .line 137
    .line 138
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    move-object v2, v1

    .line 143
    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 144
    .line 145
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ljavax/inject/Provider;

    .line 148
    .line 149
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    move-object v3, v1

    .line 154
    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    .line 155
    .line 156
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 157
    .line 158
    iget-object v4, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->savedState:Landroid/os/Bundle;

    .line 159
    .line 160
    iget-object v5, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    .line 161
    .line 162
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 163
    .line 164
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    move-object v6, v1

    .line 169
    check-cast v6, Landroid/view/WindowManager;

    .line 170
    .line 171
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    .line 174
    .line 175
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 180
    .line 181
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    .line 182
    .line 183
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    move-object v8, v1

    .line 188
    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 189
    .line 190
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 191
    .line 192
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 193
    .line 194
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    move-object v9, v1

    .line 199
    check-cast v9, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 200
    .line 201
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 202
    .line 203
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 204
    .line 205
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    move-object v10, v1

    .line 210
    check-cast v10, Lcom/android/internal/logging/MetricsLogger;

    .line 211
    .line 212
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 213
    .line 214
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 215
    .line 216
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    move-object v11, v1

    .line 221
    check-cast v11, Lcom/android/systemui/recents/OverviewProxyService;

    .line 222
    .line 223
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 224
    .line 225
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 226
    .line 227
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    move-object v12, v1

    .line 232
    check-cast v12, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 233
    .line 234
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 235
    .line 236
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 237
    .line 238
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    move-object v13, v1

    .line 243
    check-cast v13, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 244
    .line 245
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 246
    .line 247
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 248
    .line 249
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    move-object v14, v1

    .line 254
    check-cast v14, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 255
    .line 256
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 257
    .line 258
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    .line 259
    .line 260
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    move-object v15, v1

    .line 265
    check-cast v15, Lcom/android/systemui/model/SysUiState;

    .line 266
    .line 267
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 268
    .line 269
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 270
    .line 271
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    move-object/from16 v16, v1

    .line 276
    .line 277
    check-cast v16, Lcom/android/systemui/settings/UserTracker;

    .line 278
    .line 279
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 280
    .line 281
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 282
    .line 283
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    move-object/from16 v17, v1

    .line 288
    .line 289
    check-cast v17, Lcom/android/systemui/statusbar/CommandQueue;

    .line 290
    .line 291
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 292
    .line 293
    move-object/from16 v44, v2

    .line 294
    .line 295
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setPip:Ljava/util/Optional;

    .line 296
    .line 297
    move-object/from16 v18, v2

    .line 298
    .line 299
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideRecentsProvider:Ljavax/inject/Provider;

    .line 300
    .line 301
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Lcom/android/systemui/recents/Recents;

    .line 306
    .line 307
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 308
    .line 309
    .line 310
    move-result-object v19

    .line 311
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 312
    .line 313
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfCentralSurfacesProvider:Ljavax/inject/Provider;

    .line 314
    .line 315
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 316
    .line 317
    .line 318
    move-result-object v20

    .line 319
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 320
    .line 321
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    .line 322
    .line 323
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    move-object/from16 v21, v1

    .line 328
    .line 329
    check-cast v21, Lcom/android/systemui/shade/ShadeController;

    .line 330
    .line 331
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 332
    .line 333
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 334
    .line 335
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    move-object/from16 v22, v1

    .line 340
    .line 341
    check-cast v22, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 342
    .line 343
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 344
    .line 345
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    .line 346
    .line 347
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    move-object/from16 v23, v1

    .line 352
    .line 353
    check-cast v23, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 354
    .line 355
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 356
    .line 357
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 358
    .line 359
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    move-object/from16 v24, v1

    .line 364
    .line 365
    check-cast v24, Landroid/os/Handler;

    .line 366
    .line 367
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 368
    .line 369
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 370
    .line 371
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    move-object/from16 v25, v1

    .line 376
    .line 377
    check-cast v25, Ljava/util/concurrent/Executor;

    .line 378
    .line 379
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 380
    .line 381
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 382
    .line 383
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    move-object/from16 v26, v1

    .line 388
    .line 389
    check-cast v26, Ljava/util/concurrent/Executor;

    .line 390
    .line 391
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 392
    .line 393
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 394
    .line 395
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    move-object/from16 v27, v1

    .line 400
    .line 401
    check-cast v27, Lcom/android/internal/logging/UiEventLogger;

    .line 402
    .line 403
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 404
    .line 405
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navBarHelperProvider:Ljavax/inject/Provider;

    .line 406
    .line 407
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    move-object/from16 v28, v1

    .line 412
    .line 413
    check-cast v28, Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 414
    .line 415
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 416
    .line 417
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    .line 418
    .line 419
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    move-object/from16 v29, v1

    .line 424
    .line 425
    check-cast v29, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 426
    .line 427
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 428
    .line 429
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->lightBarControllerFactory()Lcom/android/systemui/statusbar/phone/LightBarController$Factory;

    .line 430
    .line 431
    .line 432
    move-result-object v30

    .line 433
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 434
    .line 435
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->autoHideControllerProvider:Ljavax/inject/Provider;

    .line 436
    .line 437
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    move-object/from16 v31, v1

    .line 442
    .line 443
    check-cast v31, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 444
    .line 445
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 446
    .line 447
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->autoHideControllerFactory()Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;

    .line 448
    .line 449
    .line 450
    move-result-object v32

    .line 451
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 452
    .line 453
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideOptionalTelecomManagerProvider:Ljavax/inject/Provider;

    .line 454
    .line 455
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    move-object/from16 v33, v1

    .line 460
    .line 461
    check-cast v33, Ljava/util/Optional;

    .line 462
    .line 463
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 464
    .line 465
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideInputMethodManagerProvider:Ljavax/inject/Provider;

    .line 466
    .line 467
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    move-object/from16 v34, v1

    .line 472
    .line 473
    check-cast v34, Landroid/view/inputmethod/InputMethodManager;

    .line 474
    .line 475
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 476
    .line 477
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->deadZone()Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 478
    .line 479
    .line 480
    move-result-object v35

    .line 481
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 482
    .line 483
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    .line 484
    .line 485
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    move-object/from16 v36, v1

    .line 490
    .line 491
    check-cast v36, Lcom/android/systemui/util/DeviceConfigProxy;

    .line 492
    .line 493
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 494
    .line 495
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarTransitionsProvider:Ljavax/inject/Provider;

    .line 496
    .line 497
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    move-object/from16 v37, v1

    .line 502
    .line 503
    check-cast v37, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 504
    .line 505
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 506
    .line 507
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setBackAnimation:Ljava/util/Optional;

    .line 508
    .line 509
    move-object/from16 v38, v2

    .line 510
    .line 511
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 512
    .line 513
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    move-object/from16 v39, v1

    .line 518
    .line 519
    check-cast v39, Lcom/android/systemui/settings/UserContextProvider;

    .line 520
    .line 521
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 522
    .line 523
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 524
    .line 525
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    move-object/from16 v40, v1

    .line 530
    .line 531
    check-cast v40, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 532
    .line 533
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 534
    .line 535
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideTaskStackChangeListenersProvider:Ljavax/inject/Provider;

    .line 536
    .line 537
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    move-object/from16 v41, v1

    .line 542
    .line 543
    check-cast v41, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 544
    .line 545
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 546
    .line 547
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    .line 548
    .line 549
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    move-object/from16 v42, v1

    .line 554
    .line 555
    check-cast v42, Lcom/android/systemui/settings/DisplayTracker;

    .line 556
    .line 557
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 558
    .line 559
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesNavBarLoggerProvider:Ljavax/inject/Provider;

    .line 560
    .line 561
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    move-object/from16 v43, v0

    .line 566
    .line 567
    check-cast v43, Lcom/android/systemui/basic/util/LogWrapper;

    .line 568
    .line 569
    move-object/from16 v2, v44

    .line 570
    .line 571
    invoke-static/range {v2 .. v43}, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->newInstance(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarFrame;Landroid/os/Bundle;Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/LightBarController$Factory;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;Ljava/util/Optional;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/navigationbar/buttons/DeadZone;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationBarTransitions;Ljava/util/Optional;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/basic/util/LogWrapper;)Lcom/android/systemui/navigationbar/NavigationBar;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    return-object v0
.end method
