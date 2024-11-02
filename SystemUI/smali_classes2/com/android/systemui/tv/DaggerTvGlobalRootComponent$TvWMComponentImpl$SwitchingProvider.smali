.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;
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

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->id:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->id:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->id:I

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 13
    .line 14
    .line 15
    throw v1

    .line 16
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/wm/shell/common/DisplayController;

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidesDesktopTasksControllerFactory;->providesDesktopTasksController(Ljava/util/Optional;)Ljava/util/Optional;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :pswitch_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDesktopModeControllerFactory;->provideDesktopModeController(Ljava/util/Optional;)Ljava/util/Optional;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :pswitch_3
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDesktopModeControllerProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/util/Optional;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesDesktopTasksControllerProvider:Ljavax/inject/Provider;

    .line 65
    .line 66
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/util/Optional;

    .line 71
    .line 72
    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDesktopModeFactory;->provideDesktopMode(Ljava/util/Optional;Ljava/util/Optional;)Ljava/util/Optional;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :pswitch_4
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 80
    .line 81
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 86
    .line 87
    new-instance v1, Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 88
    .line 89
    invoke-direct {v1, v0}, Lcom/android/wm/shell/back/BackAnimationBackground;-><init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :pswitch_5
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSharedBackgroundHandlerFactory;->provideSharedBackgroundHandler()Landroid/os/Handler;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :pswitch_6
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 99
    .line 100
    iget-object v6, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 105
    .line 106
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    move-object v2, v1

    .line 111
    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    .line 112
    .line 113
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 116
    .line 117
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    move-object v3, v1

    .line 122
    check-cast v3, Lcom/android/wm/shell/sysui/ShellController;

    .line 123
    .line 124
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 125
    .line 126
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 127
    .line 128
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    move-object v4, v1

    .line 133
    check-cast v4, Lcom/android/wm/shell/common/ShellExecutor;

    .line 134
    .line 135
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSharedBackgroundHandlerProvider:Ljavax/inject/Provider;

    .line 138
    .line 139
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    move-object v5, v1

    .line 144
    check-cast v5, Landroid/os/Handler;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBackAnimationBackgroundProvider:Ljavax/inject/Provider;

    .line 149
    .line 150
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    move-object v7, v0

    .line 155
    check-cast v7, Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 156
    .line 157
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationControllerFactory;->provideBackAnimationController(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)Ljava/util/Optional;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    return-object v0

    .line 162
    :pswitch_7
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBackAnimationControllerProvider:Ljavax/inject/Provider;

    .line 165
    .line 166
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Ljava/util/Optional;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationFactory;->provideBackAnimation(Ljava/util/Optional;)Ljava/util/Optional;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    return-object v0

    .line 177
    :pswitch_8
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 180
    .line 181
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Ljava/util/Optional;

    .line 186
    .line 187
    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideRecentTasksFactory;->provideRecentTasks(Ljava/util/Optional;)Ljava/util/Optional;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    return-object v0

    .line 192
    :pswitch_9
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 195
    .line 196
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 201
    .line 202
    new-instance v1, Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    .line 203
    .line 204
    invoke-direct {v1, v0}, Lcom/android/wm/shell/RootDisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    .line 205
    .line 206
    .line 207
    return-object v1

    .line 208
    :pswitch_a
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 209
    .line 210
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 211
    .line 212
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Lcom/android/wm/shell/common/ShellExecutor;

    .line 217
    .line 218
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 219
    .line 220
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 221
    .line 222
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    .line 227
    .line 228
    new-instance v2, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;

    .line 229
    .line 230
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    return-object v0

    .line 241
    :pswitch_b
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 242
    .line 243
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowControllerProvider:Ljavax/inject/Provider;

    .line 244
    .line 245
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mImpl:Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    .line 252
    .line 253
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    return-object v0

    .line 261
    :pswitch_c
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 262
    .line 263
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 264
    .line 265
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    .line 270
    .line 271
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 272
    .line 273
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 274
    .line 275
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    check-cast v2, Lcom/android/wm/shell/transition/Transitions;

    .line 280
    .line 281
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 282
    .line 283
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 284
    .line 285
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    check-cast v3, Landroid/os/Handler;

    .line 290
    .line 291
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 292
    .line 293
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 294
    .line 295
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 300
    .line 301
    new-instance v4, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 302
    .line 303
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 304
    .line 305
    .line 306
    return-object v4

    .line 307
    :pswitch_d
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 308
    .line 309
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideKeyguardTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 310
    .line 311
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    new-instance v1, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;

    .line 321
    .line 322
    const/4 v2, 0x0

    .line 323
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;I)V

    .line 324
    .line 325
    .line 326
    return-object v1

    .line 327
    :pswitch_e
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 330
    .line 331
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    .line 336
    .line 337
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    .line 338
    .line 339
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    return-object v0

    .line 343
    :pswitch_f
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 344
    .line 345
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 346
    .line 347
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    .line 352
    .line 353
    new-instance v1, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 354
    .line 355
    invoke-direct {v1, v0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    .line 356
    .line 357
    .line 358
    return-object v1

    .line 359
    :pswitch_10
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 360
    .line 361
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 362
    .line 363
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 368
    .line 369
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 370
    .line 371
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 372
    .line 373
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    check-cast v2, Lcom/android/wm/shell/common/ShellExecutor;

    .line 378
    .line 379
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 380
    .line 381
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 382
    .line 383
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    check-cast v3, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 388
    .line 389
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 390
    .line 391
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewTransitionsProvider:Ljavax/inject/Provider;

    .line 392
    .line 393
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 398
    .line 399
    new-instance v4, Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    .line 400
    .line 401
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/taskview/TaskViewFactoryController;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/taskview/TaskViewTransitions;)V

    .line 402
    .line 403
    .line 404
    return-object v4

    .line 405
    :pswitch_11
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 406
    .line 407
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewFactoryControllerProvider:Ljavax/inject/Provider;

    .line 408
    .line 409
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    .line 414
    .line 415
    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->mImpl:Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;

    .line 416
    .line 417
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    return-object v0

    .line 425
    :pswitch_12
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->provideBubbles(Ljava/util/Optional;)Ljava/util/Optional;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    return-object v0

    .line 434
    :pswitch_13
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 435
    .line 436
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 437
    .line 438
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    check-cast v0, Ljava/util/Optional;

    .line 443
    .line 444
    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideSplitScreenFactory;->provideSplitScreen(Ljava/util/Optional;)Ljava/util/Optional;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    return-object v0

    .line 449
    :pswitch_14
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 450
    .line 451
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    .line 452
    .line 453
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    check-cast v0, Ljava/util/Optional;

    .line 458
    .line 459
    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideOneHandedFactory;->provideOneHanded(Ljava/util/Optional;)Ljava/util/Optional;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    return-object v0

    .line 464
    :pswitch_15
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 465
    .line 466
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 467
    .line 468
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    .line 473
    .line 474
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 475
    .line 476
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 477
    .line 478
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    check-cast v0, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 483
    .line 484
    new-instance v2, Lcom/android/wm/shell/ProtoLogController;

    .line 485
    .line 486
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/ProtoLogController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V

    .line 487
    .line 488
    .line 489
    return-object v2

    .line 490
    :pswitch_16
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 491
    .line 492
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 493
    .line 494
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 495
    .line 496
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 497
    .line 498
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    move-object v3, v1

    .line 503
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 504
    .line 505
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 506
    .line 507
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 508
    .line 509
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    move-object v4, v1

    .line 514
    check-cast v4, Landroid/os/Handler;

    .line 515
    .line 516
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 517
    .line 518
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 519
    .line 520
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    move-object v5, v1

    .line 525
    check-cast v5, Lcom/android/wm/shell/common/DisplayController;

    .line 526
    .line 527
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 528
    .line 529
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 530
    .line 531
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    move-object v6, v1

    .line 536
    check-cast v6, Lcom/android/wm/shell/common/ShellExecutor;

    .line 537
    .line 538
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 539
    .line 540
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 541
    .line 542
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    move-object v7, v1

    .line 547
    check-cast v7, Landroid/view/IWindowManager;

    .line 548
    .line 549
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 550
    .line 551
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 552
    .line 553
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    move-object v8, v0

    .line 558
    check-cast v8, Ljava/util/Optional;

    .line 559
    .line 560
    invoke-static/range {v2 .. v8}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->provideEnterSplitGestureHandler(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Landroid/os/Handler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/view/IWindowManager;Ljava/util/Optional;)Ljava/util/Optional;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    return-object v0

    .line 565
    :pswitch_17
    new-instance v0, Lcom/android/wm/shell/startingsurface/tv/TvStartingWindowTypeAlgorithm;

    .line 566
    .line 567
    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/tv/TvStartingWindowTypeAlgorithm;-><init>()V

    .line 568
    .line 569
    .line 570
    return-object v0

    .line 571
    :pswitch_18
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 572
    .line 573
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowTypeAlgorithmProvider:Ljavax/inject/Provider;

    .line 574
    .line 575
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 580
    .line 581
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingWindowTypeAlgorithmFactory;->provideStartingWindowTypeAlgorithm(Ljava/util/Optional;)Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    return-object v0

    .line 590
    :pswitch_19
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;->provideSplashScreenExecutor()Lcom/android/wm/shell/common/HandlerExecutor;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    return-object v0

    .line 595
    :pswitch_1a
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 596
    .line 597
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 598
    .line 599
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 600
    .line 601
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 602
    .line 603
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    move-object v3, v1

    .line 608
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 609
    .line 610
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 611
    .line 612
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 613
    .line 614
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    move-object v4, v1

    .line 619
    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 620
    .line 621
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 622
    .line 623
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 624
    .line 625
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    move-object v5, v1

    .line 630
    check-cast v5, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 631
    .line 632
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 633
    .line 634
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplashScreenExecutorProvider:Ljavax/inject/Provider;

    .line 635
    .line 636
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    move-object v6, v1

    .line 641
    check-cast v6, Lcom/android/wm/shell/common/ShellExecutor;

    .line 642
    .line 643
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 644
    .line 645
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowTypeAlgorithmProvider2:Ljavax/inject/Provider;

    .line 646
    .line 647
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    move-object v7, v1

    .line 652
    check-cast v7, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 653
    .line 654
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 655
    .line 656
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    .line 657
    .line 658
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    move-object v8, v1

    .line 663
    check-cast v8, Lcom/android/launcher3/icons/IconProvider;

    .line 664
    .line 665
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 666
    .line 667
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 668
    .line 669
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    move-object v9, v0

    .line 674
    check-cast v9, Lcom/android/wm/shell/common/TransactionPool;

    .line 675
    .line 676
    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideStartingWindowControllerFactory;->provideStartingWindowController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;)Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    return-object v0

    .line 681
    :pswitch_1b
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 682
    .line 683
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 684
    .line 685
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 686
    .line 687
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 688
    .line 689
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    .line 694
    .line 695
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 696
    .line 697
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 698
    .line 699
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    .line 704
    .line 705
    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    return-object v0

    .line 717
    :pswitch_1c
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 718
    .line 719
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 720
    .line 721
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 722
    .line 723
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 724
    .line 725
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    move-object v3, v1

    .line 730
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 731
    .line 732
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 733
    .line 734
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 735
    .line 736
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    move-object v4, v1

    .line 741
    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 742
    .line 743
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 744
    .line 745
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 746
    .line 747
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    move-object v5, v1

    .line 752
    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    .line 753
    .line 754
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 755
    .line 756
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 757
    .line 758
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    move-object v6, v1

    .line 763
    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    .line 764
    .line 765
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 766
    .line 767
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 768
    .line 769
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    move-object v7, v0

    .line 774
    check-cast v7, Lcom/android/wm/shell/common/ShellExecutor;

    .line 775
    .line 776
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideHideDisplayCutoutControllerFactory;->provideHideDisplayCutoutController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    return-object v0

    .line 781
    :pswitch_1d
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidesOneHandedControllerFactory;->providesOneHandedController(Ljava/util/Optional;)Ljava/util/Optional;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    return-object v0

    .line 790
    :pswitch_1e
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 795
    .line 796
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 797
    .line 798
    invoke-static {v0, v1}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFreeformComponentsFactory;->provideFreeformComponents(Landroid/content/Context;Ljava/util/Optional;)Ljava/util/Optional;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    return-object v0

    .line 803
    :pswitch_1f
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 804
    .line 805
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideShellProgressProvider:Ljavax/inject/Provider;

    .line 806
    .line 807
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    check-cast v1, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    .line 812
    .line 813
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 818
    .line 819
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfUnfoldTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 820
    .line 821
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-static {v0, v1}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;->provideUnfoldTransitionHandler(Ldagger/Lazy;Ljava/util/Optional;)Ljava/util/Optional;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    return-object v0

    .line 830
    :pswitch_20
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 835
    .line 836
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 837
    .line 838
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    .line 843
    .line 844
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 845
    .line 846
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 847
    .line 848
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v3

    .line 852
    check-cast v3, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 853
    .line 854
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 855
    .line 856
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 857
    .line 858
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v4

    .line 862
    check-cast v4, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 863
    .line 864
    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 865
    .line 866
    iget-object v5, v5, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 867
    .line 868
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v5

    .line 872
    check-cast v5, Ljava/util/Optional;

    .line 873
    .line 874
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 875
    .line 876
    .line 877
    move-result-object v6

    .line 878
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 879
    .line 880
    .line 881
    move-result-object v7

    .line 882
    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 883
    .line 884
    iget-object v8, v8, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 885
    .line 886
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v8

    .line 890
    check-cast v8, Ljava/util/Optional;

    .line 891
    .line 892
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 893
    .line 894
    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 895
    .line 896
    invoke-static/range {v1 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->provideFullscreenTaskListener(Ljava/util/Optional;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Landroid/content/Context;)Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    return-object v0

    .line 901
    :pswitch_21
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 902
    .line 903
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 904
    .line 905
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 910
    .line 911
    new-instance v1, Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 912
    .line 913
    invoke-direct {v1, v0}, Lcom/android/wm/shell/WindowManagerShellWrapper;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 914
    .line 915
    .line 916
    return-object v1

    .line 917
    :pswitch_22
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 918
    .line 919
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 920
    .line 921
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 922
    .line 923
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    .line 924
    .line 925
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v2

    .line 929
    check-cast v2, Lcom/android/wm/shell/pip/PipMediaController;

    .line 930
    .line 931
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 932
    .line 933
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    .line 934
    .line 935
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    check-cast v0, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 940
    .line 941
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 942
    .line 943
    invoke-direct {v3, v1, v2, v0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;)V

    .line 944
    .line 945
    .line 946
    return-object v3

    .line 947
    :pswitch_23
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 948
    .line 949
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 950
    .line 951
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 952
    .line 953
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 954
    .line 955
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    check-cast v0, Landroid/os/Handler;

    .line 960
    .line 961
    new-instance v2, Lcom/android/wm/shell/pip/PipMediaController;

    .line 962
    .line 963
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/pip/PipMediaController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 964
    .line 965
    .line 966
    return-object v2

    .line 967
    :pswitch_24
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 968
    .line 969
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 970
    .line 971
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    check-cast v1, Lcom/android/internal/logging/UiEventLogger;

    .line 976
    .line 977
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 978
    .line 979
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 980
    .line 981
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    check-cast v0, Landroid/content/pm/PackageManager;

    .line 986
    .line 987
    new-instance v2, Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 988
    .line 989
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)V

    .line 990
    .line 991
    .line 992
    return-object v2

    .line 993
    :pswitch_25
    new-instance v0, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 994
    .line 995
    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;-><init>()V

    .line 996
    .line 997
    .line 998
    return-object v0

    .line 999
    :pswitch_26
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1000
    .line 1001
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1002
    .line 1003
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1004
    .line 1005
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1006
    .line 1007
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    move-object v3, v1

    .line 1012
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1013
    .line 1014
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1015
    .line 1016
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1017
    .line 1018
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    move-object v4, v1

    .line 1023
    check-cast v4, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1024
    .line 1025
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1026
    .line 1027
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 1028
    .line 1029
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    move-object v5, v1

    .line 1034
    check-cast v5, Lcom/android/wm/shell/transition/Transitions;

    .line 1035
    .line 1036
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1037
    .line 1038
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1039
    .line 1040
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    move-object v6, v1

    .line 1045
    check-cast v6, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1046
    .line 1047
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1048
    .line 1049
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 1050
    .line 1051
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    move-object v7, v1

    .line 1056
    check-cast v7, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1057
    .line 1058
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1059
    .line 1060
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTransitionStateProvider:Ljavax/inject/Provider;

    .line 1061
    .line 1062
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    move-object v8, v1

    .line 1067
    check-cast v8, Lcom/android/wm/shell/pip/PipTransitionState;

    .line 1068
    .line 1069
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1070
    .line 1071
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    .line 1072
    .line 1073
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v1

    .line 1077
    move-object v9, v1

    .line 1078
    check-cast v9, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 1079
    .line 1080
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1081
    .line 1082
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    .line 1083
    .line 1084
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v1

    .line 1088
    move-object v10, v1

    .line 1089
    check-cast v10, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 1090
    .line 1091
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1092
    .line 1093
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    .line 1094
    .line 1095
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    move-object v11, v1

    .line 1100
    check-cast v11, Lcom/android/wm/shell/pip/PipAnimationController;

    .line 1101
    .line 1102
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1103
    .line 1104
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 1105
    .line 1106
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    move-object v12, v0

    .line 1111
    check-cast v12, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1112
    .line 1113
    invoke-static/range {v2 .. v12}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->provideTvPipTransition(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)Lcom/android/wm/shell/pip/tv/TvPipTransition;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v0

    .line 1117
    return-object v0

    .line 1118
    :pswitch_27
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1119
    .line 1120
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1121
    .line 1122
    new-instance v1, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1123
    .line 1124
    invoke-direct {v1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;-><init>(Landroid/content/Context;)V

    .line 1125
    .line 1126
    .line 1127
    return-object v1

    .line 1128
    :pswitch_28
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1129
    .line 1130
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 1131
    .line 1132
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1137
    .line 1138
    new-instance v1, Lcom/android/wm/shell/pip/PipAnimationController;

    .line 1139
    .line 1140
    invoke-direct {v1, v0}, Lcom/android/wm/shell/pip/PipAnimationController;-><init>(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)V

    .line 1141
    .line 1142
    .line 1143
    return-object v1

    .line 1144
    :pswitch_29
    new-instance v0, Lcom/android/wm/shell/pip/PipTransitionState;

    .line 1145
    .line 1146
    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipTransitionState;-><init>()V

    .line 1147
    .line 1148
    .line 1149
    return-object v0

    .line 1150
    :pswitch_2a
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1151
    .line 1152
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1153
    .line 1154
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1155
    .line 1156
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1157
    .line 1158
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v2

    .line 1162
    check-cast v2, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1163
    .line 1164
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1165
    .line 1166
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    .line 1167
    .line 1168
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v3

    .line 1172
    check-cast v3, Lcom/android/wm/shell/common/SystemWindows;

    .line 1173
    .line 1174
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1175
    .line 1176
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1177
    .line 1178
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    check-cast v0, Landroid/os/Handler;

    .line 1183
    .line 1184
    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 1185
    .line 1186
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)V

    .line 1187
    .line 1188
    .line 1189
    return-object v4

    .line 1190
    :pswitch_2b
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1191
    .line 1192
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1193
    .line 1194
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1195
    .line 1196
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    .line 1197
    .line 1198
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    move-object v3, v1

    .line 1203
    check-cast v3, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 1204
    .line 1205
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1206
    .line 1207
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 1208
    .line 1209
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    move-object v4, v1

    .line 1214
    check-cast v4, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 1215
    .line 1216
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1217
    .line 1218
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1219
    .line 1220
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v1

    .line 1224
    move-object v5, v1

    .line 1225
    check-cast v5, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1226
    .line 1227
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1228
    .line 1229
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 1230
    .line 1231
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    move-object v6, v1

    .line 1236
    check-cast v6, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1237
    .line 1238
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1239
    .line 1240
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTransitionStateProvider:Ljavax/inject/Provider;

    .line 1241
    .line 1242
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v1

    .line 1246
    move-object v7, v1

    .line 1247
    check-cast v7, Lcom/android/wm/shell/pip/PipTransitionState;

    .line 1248
    .line 1249
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1250
    .line 1251
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    .line 1252
    .line 1253
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v1

    .line 1257
    move-object v8, v1

    .line 1258
    check-cast v8, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 1259
    .line 1260
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1261
    .line 1262
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    .line 1263
    .line 1264
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v1

    .line 1268
    move-object v9, v1

    .line 1269
    check-cast v9, Lcom/android/wm/shell/pip/PipAnimationController;

    .line 1270
    .line 1271
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1272
    .line 1273
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipTransitionProvider:Ljavax/inject/Provider;

    .line 1274
    .line 1275
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v1

    .line 1279
    move-object v10, v1

    .line 1280
    check-cast v10, Lcom/android/wm/shell/pip/PipTransitionController;

    .line 1281
    .line 1282
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1283
    .line 1284
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    .line 1285
    .line 1286
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v1

    .line 1290
    move-object v11, v1

    .line 1291
    check-cast v11, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 1292
    .line 1293
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1294
    .line 1295
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 1296
    .line 1297
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v1

    .line 1301
    move-object v12, v1

    .line 1302
    check-cast v12, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1303
    .line 1304
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1305
    .line 1306
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 1307
    .line 1308
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v1

    .line 1312
    move-object v13, v1

    .line 1313
    check-cast v13, Ljava/util/Optional;

    .line 1314
    .line 1315
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1316
    .line 1317
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1318
    .line 1319
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v1

    .line 1323
    move-object v14, v1

    .line 1324
    check-cast v14, Lcom/android/wm/shell/common/DisplayController;

    .line 1325
    .line 1326
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1327
    .line 1328
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 1329
    .line 1330
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v1

    .line 1334
    move-object v15, v1

    .line 1335
    check-cast v15, Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 1336
    .line 1337
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1338
    .line 1339
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1340
    .line 1341
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v1

    .line 1345
    move-object/from16 v16, v1

    .line 1346
    .line 1347
    check-cast v16, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1348
    .line 1349
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1350
    .line 1351
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1352
    .line 1353
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    move-object/from16 v17, v0

    .line 1358
    .line 1359
    check-cast v17, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1360
    .line 1361
    invoke-static/range {v2 .. v17}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->providePipTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/tv/TvPipTaskOrganizer;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v0

    .line 1365
    return-object v0

    .line 1366
    :pswitch_2c
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1367
    .line 1368
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1369
    .line 1370
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1371
    .line 1372
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1373
    .line 1374
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v2

    .line 1378
    check-cast v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 1379
    .line 1380
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1381
    .line 1382
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1383
    .line 1384
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v0

    .line 1388
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1389
    .line 1390
    new-instance v3, Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 1391
    .line 1392
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    new-instance v4, Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda1;

    .line 1396
    .line 1397
    invoke-direct {v4, v2}, Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    .line 1398
    .line 1399
    .line 1400
    invoke-direct {v3, v1, v4, v0}, Lcom/android/wm/shell/pip/PipAppOpsListener;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 1401
    .line 1402
    .line 1403
    return-object v3

    .line 1404
    :pswitch_2d
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1405
    .line 1406
    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1407
    .line 1408
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1409
    .line 1410
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1411
    .line 1412
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v1

    .line 1416
    move-object v5, v1

    .line 1417
    check-cast v5, Landroid/os/Handler;

    .line 1418
    .line 1419
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1420
    .line 1421
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1422
    .line 1423
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v1

    .line 1427
    move-object v6, v1

    .line 1428
    check-cast v6, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1429
    .line 1430
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1431
    .line 1432
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    .line 1433
    .line 1434
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v0

    .line 1438
    move-object v7, v0

    .line 1439
    check-cast v7, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 1440
    .line 1441
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 1442
    .line 1443
    new-instance v4, Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda0;

    .line 1444
    .line 1445
    invoke-direct {v4}, Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda0;-><init>()V

    .line 1446
    .line 1447
    .line 1448
    move-object v2, v0

    .line 1449
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;)V

    .line 1450
    .line 1451
    .line 1452
    return-object v0

    .line 1453
    :pswitch_2e
    new-instance v0, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 1454
    .line 1455
    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;-><init>()V

    .line 1456
    .line 1457
    .line 1458
    return-object v0

    .line 1459
    :pswitch_2f
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1460
    .line 1461
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1462
    .line 1463
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1464
    .line 1465
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1466
    .line 1467
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v2

    .line 1471
    check-cast v2, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1472
    .line 1473
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1474
    .line 1475
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSnapAlgorithmProvider:Ljavax/inject/Provider;

    .line 1476
    .line 1477
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v3

    .line 1481
    check-cast v3, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 1482
    .line 1483
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1484
    .line 1485
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSizeSpecHelperProvider:Ljavax/inject/Provider;

    .line 1486
    .line 1487
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v0

    .line 1491
    check-cast v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 1492
    .line 1493
    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 1494
    .line 1495
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    .line 1496
    .line 1497
    .line 1498
    return-object v4

    .line 1499
    :pswitch_30
    new-instance v1, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1500
    .line 1501
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1502
    .line 1503
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1504
    .line 1505
    invoke-direct {v1, v0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;-><init>(Landroid/content/Context;)V

    .line 1506
    .line 1507
    .line 1508
    return-object v1

    .line 1509
    :pswitch_31
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1510
    .line 1511
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1512
    .line 1513
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1514
    .line 1515
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 1516
    .line 1517
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v0

    .line 1521
    check-cast v0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1522
    .line 1523
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 1524
    .line 1525
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V

    .line 1526
    .line 1527
    .line 1528
    return-object v2

    .line 1529
    :pswitch_32
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1530
    .line 1531
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1532
    .line 1533
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1534
    .line 1535
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSizeSpecHelperProvider:Ljavax/inject/Provider;

    .line 1536
    .line 1537
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v2

    .line 1541
    check-cast v2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 1542
    .line 1543
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1544
    .line 1545
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 1546
    .line 1547
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v0

    .line 1551
    check-cast v0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1552
    .line 1553
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1554
    .line 1555
    invoke-direct {v3, v1, v2, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V

    .line 1556
    .line 1557
    .line 1558
    return-object v3

    .line 1559
    :pswitch_33
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1560
    .line 1561
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1562
    .line 1563
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1564
    .line 1565
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1566
    .line 1567
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v1

    .line 1571
    move-object v3, v1

    .line 1572
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1573
    .line 1574
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1575
    .line 1576
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 1577
    .line 1578
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v1

    .line 1582
    move-object v4, v1

    .line 1583
    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 1584
    .line 1585
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1586
    .line 1587
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1588
    .line 1589
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v1

    .line 1593
    move-object v5, v1

    .line 1594
    check-cast v5, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1595
    .line 1596
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1597
    .line 1598
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 1599
    .line 1600
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v1

    .line 1604
    move-object v6, v1

    .line 1605
    check-cast v6, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1606
    .line 1607
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1608
    .line 1609
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    .line 1610
    .line 1611
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v1

    .line 1615
    move-object v7, v1

    .line 1616
    check-cast v7, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 1617
    .line 1618
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1619
    .line 1620
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsControllerProvider:Ljavax/inject/Provider;

    .line 1621
    .line 1622
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v1

    .line 1626
    move-object v8, v1

    .line 1627
    check-cast v8, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 1628
    .line 1629
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1630
    .line 1631
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAppOpsListenerProvider:Ljavax/inject/Provider;

    .line 1632
    .line 1633
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v1

    .line 1637
    move-object v9, v1

    .line 1638
    check-cast v9, Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 1639
    .line 1640
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1641
    .line 1642
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1643
    .line 1644
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v1

    .line 1648
    move-object v10, v1

    .line 1649
    check-cast v10, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 1650
    .line 1651
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1652
    .line 1653
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    .line 1654
    .line 1655
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v1

    .line 1659
    move-object v12, v1

    .line 1660
    check-cast v12, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 1661
    .line 1662
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1663
    .line 1664
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    .line 1665
    .line 1666
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v1

    .line 1670
    move-object v13, v1

    .line 1671
    check-cast v13, Lcom/android/wm/shell/pip/PipMediaController;

    .line 1672
    .line 1673
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1674
    .line 1675
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipTransitionProvider:Ljavax/inject/Provider;

    .line 1676
    .line 1677
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v1

    .line 1681
    move-object v11, v1

    .line 1682
    check-cast v11, Lcom/android/wm/shell/pip/PipTransitionController;

    .line 1683
    .line 1684
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1685
    .line 1686
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipNotificationControllerProvider:Ljavax/inject/Provider;

    .line 1687
    .line 1688
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v1

    .line 1692
    move-object v14, v1

    .line 1693
    check-cast v14, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 1694
    .line 1695
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1696
    .line 1697
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    .line 1698
    .line 1699
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v1

    .line 1703
    move-object v15, v1

    .line 1704
    check-cast v15, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 1705
    .line 1706
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1707
    .line 1708
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    .line 1709
    .line 1710
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v1

    .line 1714
    move-object/from16 v16, v1

    .line 1715
    .line 1716
    check-cast v16, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 1717
    .line 1718
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1719
    .line 1720
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1721
    .line 1722
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v1

    .line 1726
    move-object/from16 v17, v1

    .line 1727
    .line 1728
    check-cast v17, Lcom/android/wm/shell/common/DisplayController;

    .line 1729
    .line 1730
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1731
    .line 1732
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    .line 1733
    .line 1734
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v1

    .line 1738
    move-object/from16 v18, v1

    .line 1739
    .line 1740
    check-cast v18, Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 1741
    .line 1742
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1743
    .line 1744
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1745
    .line 1746
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v1

    .line 1750
    move-object/from16 v19, v1

    .line 1751
    .line 1752
    check-cast v19, Landroid/os/Handler;

    .line 1753
    .line 1754
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1755
    .line 1756
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1757
    .line 1758
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v0

    .line 1762
    move-object/from16 v20, v0

    .line 1763
    .line 1764
    check-cast v20, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1765
    .line 1766
    invoke-static/range {v2 .. v20}, Lcom/android/wm/shell/pip/tv/TvPipController;->create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v0

    .line 1770
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v0

    .line 1774
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1775
    .line 1776
    .line 1777
    return-object v0

    .line 1778
    :pswitch_34
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1779
    .line 1780
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1781
    .line 1782
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v1

    .line 1786
    check-cast v1, Lcom/android/wm/shell/common/DisplayController;

    .line 1787
    .line 1788
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1789
    .line 1790
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 1791
    .line 1792
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v0

    .line 1796
    check-cast v0, Landroid/view/IWindowManager;

    .line 1797
    .line 1798
    new-instance v2, Lcom/android/wm/shell/common/SystemWindows;

    .line 1799
    .line 1800
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/common/SystemWindows;-><init>(Lcom/android/wm/shell/common/DisplayController;Landroid/view/IWindowManager;)V

    .line 1801
    .line 1802
    .line 1803
    return-object v2

    .line 1804
    :pswitch_35
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1805
    .line 1806
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1807
    .line 1808
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1809
    .line 1810
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1811
    .line 1812
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v1

    .line 1816
    move-object v3, v1

    .line 1817
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1818
    .line 1819
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1820
    .line 1821
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 1822
    .line 1823
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v1

    .line 1827
    move-object v4, v1

    .line 1828
    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 1829
    .line 1830
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1831
    .line 1832
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 1833
    .line 1834
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v1

    .line 1838
    move-object v5, v1

    .line 1839
    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    .line 1840
    .line 1841
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1842
    .line 1843
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1844
    .line 1845
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v1

    .line 1849
    move-object v6, v1

    .line 1850
    check-cast v6, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1851
    .line 1852
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1853
    .line 1854
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 1855
    .line 1856
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v1

    .line 1860
    move-object v7, v1

    .line 1861
    check-cast v7, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 1862
    .line 1863
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1864
    .line 1865
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 1866
    .line 1867
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v1

    .line 1871
    move-object v8, v1

    .line 1872
    check-cast v8, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 1873
    .line 1874
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1875
    .line 1876
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1877
    .line 1878
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v1

    .line 1882
    move-object v9, v1

    .line 1883
    check-cast v9, Lcom/android/wm/shell/common/DisplayController;

    .line 1884
    .line 1885
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1886
    .line 1887
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    .line 1888
    .line 1889
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v1

    .line 1893
    move-object v10, v1

    .line 1894
    check-cast v10, Lcom/android/wm/shell/common/DisplayImeController;

    .line 1895
    .line 1896
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1897
    .line 1898
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 1899
    .line 1900
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v1

    .line 1904
    move-object v11, v1

    .line 1905
    check-cast v11, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 1906
    .line 1907
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1908
    .line 1909
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    .line 1910
    .line 1911
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v1

    .line 1915
    move-object v12, v1

    .line 1916
    check-cast v12, Ljava/util/Optional;

    .line 1917
    .line 1918
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1919
    .line 1920
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 1921
    .line 1922
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v1

    .line 1926
    move-object v13, v1

    .line 1927
    check-cast v13, Lcom/android/wm/shell/transition/Transitions;

    .line 1928
    .line 1929
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1930
    .line 1931
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 1932
    .line 1933
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v1

    .line 1937
    move-object v14, v1

    .line 1938
    check-cast v14, Lcom/android/wm/shell/common/TransactionPool;

    .line 1939
    .line 1940
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1941
    .line 1942
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    .line 1943
    .line 1944
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v1

    .line 1948
    move-object v15, v1

    .line 1949
    check-cast v15, Lcom/android/launcher3/icons/IconProvider;

    .line 1950
    .line 1951
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1952
    .line 1953
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 1954
    .line 1955
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v1

    .line 1959
    move-object/from16 v16, v1

    .line 1960
    .line 1961
    check-cast v16, Ljava/util/Optional;

    .line 1962
    .line 1963
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1964
    .line 1965
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1966
    .line 1967
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v1

    .line 1971
    move-object/from16 v17, v1

    .line 1972
    .line 1973
    check-cast v17, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1974
    .line 1975
    new-instance v1, Landroid/os/Handler;

    .line 1976
    .line 1977
    move-object/from16 v18, v1

    .line 1978
    .line 1979
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1980
    .line 1981
    .line 1982
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1983
    .line 1984
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    .line 1985
    .line 1986
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1987
    .line 1988
    .line 1989
    move-result-object v0

    .line 1990
    move-object/from16 v19, v0

    .line 1991
    .line 1992
    check-cast v19, Lcom/android/wm/shell/common/SystemWindows;

    .line 1993
    .line 1994
    invoke-static/range {v2 .. v19}, Lcom/android/wm/shell/dagger/TvWMShellModule_ProvideSplitScreenControllerFactory;->provideSplitScreenController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/SystemWindows;)Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;

    .line 1995
    .line 1996
    .line 1997
    move-result-object v0

    .line 1998
    return-object v0

    .line 1999
    :pswitch_36
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2000
    .line 2001
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 2002
    .line 2003
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v1

    .line 2007
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2008
    .line 2009
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v1

    .line 2013
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2014
    .line 2015
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2016
    .line 2017
    invoke-static {v0, v1}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidesSplitScreenControllerFactory;->providesSplitScreenController(Landroid/content/Context;Ljava/util/Optional;)Ljava/util/Optional;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v0

    .line 2021
    return-object v0

    .line 2022
    :pswitch_37
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2023
    .line 2024
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2025
    .line 2026
    new-instance v1, Lcom/android/launcher3/icons/IconProvider;

    .line 2027
    .line 2028
    invoke-direct {v1, v0}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    .line 2029
    .line 2030
    .line 2031
    return-object v1

    .line 2032
    :pswitch_38
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2033
    .line 2034
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2035
    .line 2036
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2037
    .line 2038
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2039
    .line 2040
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v1

    .line 2044
    move-object v3, v1

    .line 2045
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2046
    .line 2047
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2048
    .line 2049
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 2050
    .line 2051
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v1

    .line 2055
    move-object v4, v1

    .line 2056
    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 2057
    .line 2058
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2059
    .line 2060
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2061
    .line 2062
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2063
    .line 2064
    .line 2065
    move-result-object v1

    .line 2066
    move-object v5, v1

    .line 2067
    check-cast v5, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2068
    .line 2069
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2070
    .line 2071
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 2072
    .line 2073
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v1

    .line 2077
    move-object v6, v1

    .line 2078
    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    .line 2079
    .line 2080
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2081
    .line 2082
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 2083
    .line 2084
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2085
    .line 2086
    .line 2087
    move-result-object v1

    .line 2088
    move-object v7, v1

    .line 2089
    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    .line 2090
    .line 2091
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2092
    .line 2093
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    .line 2094
    .line 2095
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v1

    .line 2099
    move-object v8, v1

    .line 2100
    check-cast v8, Lcom/android/launcher3/icons/IconProvider;

    .line 2101
    .line 2102
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2103
    .line 2104
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2105
    .line 2106
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v0

    .line 2110
    move-object v9, v0

    .line 2111
    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2112
    .line 2113
    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDragAndDropControllerFactory;->provideDragAndDropController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v0

    .line 2117
    return-object v0

    .line 2118
    :pswitch_39
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2119
    .line 2120
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2121
    .line 2122
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v1

    .line 2126
    check-cast v1, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2127
    .line 2128
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2129
    .line 2130
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2131
    .line 2132
    new-instance v2, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 2133
    .line 2134
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 2135
    .line 2136
    .line 2137
    return-object v2

    .line 2138
    :pswitch_3a
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;->provideShellAnimationExecutor()Lcom/android/wm/shell/common/HandlerExecutor;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v0

    .line 2142
    return-object v0

    .line 2143
    :pswitch_3b
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v0

    .line 2147
    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDesktopTaskRepositoryFactory;->provideDesktopTaskRepository(Ljava/util/Optional;)Ljava/util/Optional;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v0

    .line 2151
    return-object v0

    .line 2152
    :pswitch_3c
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2153
    .line 2154
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 2155
    .line 2156
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v0

    .line 2160
    check-cast v0, Landroid/os/Handler;

    .line 2161
    .line 2162
    new-instance v1, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 2163
    .line 2164
    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;-><init>(Landroid/os/Handler;)V

    .line 2165
    .line 2166
    .line 2167
    return-object v1

    .line 2168
    :pswitch_3d
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2169
    .line 2170
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2171
    .line 2172
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2173
    .line 2174
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2175
    .line 2176
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v1

    .line 2180
    move-object v3, v1

    .line 2181
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2182
    .line 2183
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2184
    .line 2185
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 2186
    .line 2187
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v1

    .line 2191
    move-object v4, v1

    .line 2192
    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 2193
    .line 2194
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2195
    .line 2196
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2197
    .line 2198
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v1

    .line 2202
    move-object v5, v1

    .line 2203
    check-cast v5, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2204
    .line 2205
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2206
    .line 2207
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    .line 2208
    .line 2209
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v1

    .line 2213
    move-object v6, v1

    .line 2214
    check-cast v6, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 2215
    .line 2216
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2217
    .line 2218
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideActivityTaskManagerProvider:Ljavax/inject/Provider;

    .line 2219
    .line 2220
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2221
    .line 2222
    .line 2223
    move-result-object v1

    .line 2224
    move-object v7, v1

    .line 2225
    check-cast v7, Landroid/app/ActivityTaskManager;

    .line 2226
    .line 2227
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2228
    .line 2229
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDesktopTaskRepositoryProvider:Ljavax/inject/Provider;

    .line 2230
    .line 2231
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v1

    .line 2235
    move-object v8, v1

    .line 2236
    check-cast v8, Ljava/util/Optional;

    .line 2237
    .line 2238
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2239
    .line 2240
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2241
    .line 2242
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v0

    .line 2246
    move-object v9, v0

    .line 2247
    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2248
    .line 2249
    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideRecentTasksControllerFactory;->provideRecentTasksController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v0

    .line 2253
    return-object v0

    .line 2254
    :pswitch_3e
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2255
    .line 2256
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfUnfoldAnimationControllerProvider:Ljavax/inject/Provider;

    .line 2257
    .line 2258
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 2259
    .line 2260
    .line 2261
    move-result-object v1

    .line 2262
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2263
    .line 2264
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideShellProgressProvider:Ljavax/inject/Provider;

    .line 2265
    .line 2266
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v0

    .line 2270
    check-cast v0, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    .line 2271
    .line 2272
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v0

    .line 2276
    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldControllerFactory;->provideUnfoldController(Ldagger/Lazy;Ljava/util/Optional;)Ljava/util/Optional;

    .line 2277
    .line 2278
    .line 2279
    move-result-object v0

    .line 2280
    return-object v0

    .line 2281
    :pswitch_3f
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    .line 2282
    .line 2283
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2284
    .line 2285
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2286
    .line 2287
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v2

    .line 2291
    check-cast v2, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2292
    .line 2293
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2294
    .line 2295
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->compatUIConfigurationProvider:Ljavax/inject/Provider;

    .line 2296
    .line 2297
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v0

    .line 2301
    check-cast v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 2302
    .line 2303
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;-><init>(Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    .line 2304
    .line 2305
    .line 2306
    return-object v1

    .line 2307
    :pswitch_40
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 2308
    .line 2309
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2310
    .line 2311
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2312
    .line 2313
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2314
    .line 2315
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2316
    .line 2317
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v0

    .line 2321
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2322
    .line 2323
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 2324
    .line 2325
    .line 2326
    return-object v1

    .line 2327
    :pswitch_41
    new-instance v1, Lcom/android/wm/shell/common/DockStateReader;

    .line 2328
    .line 2329
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2330
    .line 2331
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2332
    .line 2333
    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/DockStateReader;-><init>(Landroid/content/Context;)V

    .line 2334
    .line 2335
    .line 2336
    return-object v1

    .line 2337
    :pswitch_42
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2338
    .line 2339
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 2340
    .line 2341
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v1

    .line 2345
    check-cast v1, Lcom/android/wm/shell/common/TransactionPool;

    .line 2346
    .line 2347
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2348
    .line 2349
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2350
    .line 2351
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v0

    .line 2355
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2356
    .line 2357
    new-instance v2, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 2358
    .line 2359
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 2360
    .line 2361
    .line 2362
    return-object v2

    .line 2363
    :pswitch_43
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2364
    .line 2365
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2366
    .line 2367
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2368
    .line 2369
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2370
    .line 2371
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v1

    .line 2375
    move-object v3, v1

    .line 2376
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2377
    .line 2378
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2379
    .line 2380
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 2381
    .line 2382
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2383
    .line 2384
    .line 2385
    move-result-object v1

    .line 2386
    move-object v4, v1

    .line 2387
    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 2388
    .line 2389
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2390
    .line 2391
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 2392
    .line 2393
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2394
    .line 2395
    .line 2396
    move-result-object v1

    .line 2397
    move-object v5, v1

    .line 2398
    check-cast v5, Lcom/android/wm/shell/common/DisplayController;

    .line 2399
    .line 2400
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2401
    .line 2402
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 2403
    .line 2404
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2405
    .line 2406
    .line 2407
    move-result-object v1

    .line 2408
    move-object v6, v1

    .line 2409
    check-cast v6, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 2410
    .line 2411
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2412
    .line 2413
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    .line 2414
    .line 2415
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2416
    .line 2417
    .line 2418
    move-result-object v1

    .line 2419
    move-object v7, v1

    .line 2420
    check-cast v7, Lcom/android/wm/shell/common/DisplayImeController;

    .line 2421
    .line 2422
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2423
    .line 2424
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 2425
    .line 2426
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v1

    .line 2430
    move-object v8, v1

    .line 2431
    check-cast v8, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 2432
    .line 2433
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2434
    .line 2435
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2436
    .line 2437
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2438
    .line 2439
    .line 2440
    move-result-object v1

    .line 2441
    move-object v9, v1

    .line 2442
    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2443
    .line 2444
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2445
    .line 2446
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 2447
    .line 2448
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v10

    .line 2452
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2453
    .line 2454
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dockStateReaderProvider:Ljavax/inject/Provider;

    .line 2455
    .line 2456
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2457
    .line 2458
    .line 2459
    move-result-object v1

    .line 2460
    move-object v11, v1

    .line 2461
    check-cast v11, Lcom/android/wm/shell/common/DockStateReader;

    .line 2462
    .line 2463
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2464
    .line 2465
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->compatUIConfigurationProvider:Ljavax/inject/Provider;

    .line 2466
    .line 2467
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v1

    .line 2471
    move-object v12, v1

    .line 2472
    check-cast v12, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 2473
    .line 2474
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2475
    .line 2476
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->compatUIShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2477
    .line 2478
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2479
    .line 2480
    .line 2481
    move-result-object v0

    .line 2482
    move-object v13, v0

    .line 2483
    check-cast v13, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    .line 2484
    .line 2485
    invoke-static/range {v2 .. v13}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->provideCompatUIController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ldagger/Lazy;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;)Lcom/android/wm/shell/compatui/CompatUIController;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v0

    .line 2489
    return-object v0

    .line 2490
    :pswitch_44
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2491
    .line 2492
    iget-object v9, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2493
    .line 2494
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2495
    .line 2496
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2497
    .line 2498
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2499
    .line 2500
    .line 2501
    move-result-object v1

    .line 2502
    move-object v2, v1

    .line 2503
    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2504
    .line 2505
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2506
    .line 2507
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2508
    .line 2509
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v1

    .line 2513
    move-object v3, v1

    .line 2514
    check-cast v3, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2515
    .line 2516
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2517
    .line 2518
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideCompatUIControllerProvider:Ljavax/inject/Provider;

    .line 2519
    .line 2520
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2521
    .line 2522
    .line 2523
    move-result-object v1

    .line 2524
    move-object v4, v1

    .line 2525
    check-cast v4, Lcom/android/wm/shell/compatui/CompatUIController;

    .line 2526
    .line 2527
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2528
    .line 2529
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideUnfoldControllerProvider:Ljavax/inject/Provider;

    .line 2530
    .line 2531
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v1

    .line 2535
    move-object v5, v1

    .line 2536
    check-cast v5, Ljava/util/Optional;

    .line 2537
    .line 2538
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2539
    .line 2540
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 2541
    .line 2542
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2543
    .line 2544
    .line 2545
    move-result-object v1

    .line 2546
    move-object v6, v1

    .line 2547
    check-cast v6, Ljava/util/Optional;

    .line 2548
    .line 2549
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2550
    .line 2551
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2552
    .line 2553
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2554
    .line 2555
    .line 2556
    move-result-object v1

    .line 2557
    move-object v7, v1

    .line 2558
    check-cast v7, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2559
    .line 2560
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2561
    .line 2562
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    .line 2563
    .line 2564
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2565
    .line 2566
    .line 2567
    move-result-object v0

    .line 2568
    move-object v8, v0

    .line 2569
    check-cast v8, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 2570
    .line 2571
    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->provideShellTaskOrganizer(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/content/Context;)Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2572
    .line 2573
    .line 2574
    move-result-object v0

    .line 2575
    return-object v0

    .line 2576
    :pswitch_45
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2577
    .line 2578
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2579
    .line 2580
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2581
    .line 2582
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2583
    .line 2584
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2585
    .line 2586
    .line 2587
    move-result-object v1

    .line 2588
    move-object v3, v1

    .line 2589
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2590
    .line 2591
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2592
    .line 2593
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 2594
    .line 2595
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2596
    .line 2597
    .line 2598
    move-result-object v1

    .line 2599
    move-object v4, v1

    .line 2600
    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 2601
    .line 2602
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2603
    .line 2604
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 2605
    .line 2606
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2607
    .line 2608
    .line 2609
    move-result-object v1

    .line 2610
    move-object v5, v1

    .line 2611
    check-cast v5, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2612
    .line 2613
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2614
    .line 2615
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 2616
    .line 2617
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2618
    .line 2619
    .line 2620
    move-result-object v1

    .line 2621
    move-object v6, v1

    .line 2622
    check-cast v6, Lcom/android/wm/shell/common/TransactionPool;

    .line 2623
    .line 2624
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2625
    .line 2626
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 2627
    .line 2628
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2629
    .line 2630
    .line 2631
    move-result-object v1

    .line 2632
    move-object v7, v1

    .line 2633
    check-cast v7, Lcom/android/wm/shell/common/DisplayController;

    .line 2634
    .line 2635
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2636
    .line 2637
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2638
    .line 2639
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2640
    .line 2641
    .line 2642
    move-result-object v1

    .line 2643
    move-object v8, v1

    .line 2644
    check-cast v8, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2645
    .line 2646
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2647
    .line 2648
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 2649
    .line 2650
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2651
    .line 2652
    .line 2653
    move-result-object v1

    .line 2654
    move-object v9, v1

    .line 2655
    check-cast v9, Landroid/os/Handler;

    .line 2656
    .line 2657
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2658
    .line 2659
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellAnimationExecutorProvider:Ljavax/inject/Provider;

    .line 2660
    .line 2661
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2662
    .line 2663
    .line 2664
    move-result-object v1

    .line 2665
    move-object v10, v1

    .line 2666
    check-cast v10, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2667
    .line 2668
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2669
    .line 2670
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2671
    .line 2672
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v1

    .line 2676
    move-object v11, v1

    .line 2677
    check-cast v11, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2678
    .line 2679
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2680
    .line 2681
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 2682
    .line 2683
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2684
    .line 2685
    .line 2686
    move-result-object v0

    .line 2687
    move-object v12, v0

    .line 2688
    check-cast v12, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 2689
    .line 2690
    invoke-static/range {v2 .. v12}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransitionsFactory;->provideTransitions(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)Lcom/android/wm/shell/transition/Transitions;

    .line 2691
    .line 2692
    .line 2693
    move-result-object v0

    .line 2694
    return-object v0

    .line 2695
    :pswitch_46
    new-instance v0, Lcom/android/wm/shell/common/TransactionPool;

    .line 2696
    .line 2697
    invoke-direct {v0}, Lcom/android/wm/shell/common/TransactionPool;-><init>()V

    .line 2698
    .line 2699
    .line 2700
    return-object v0

    .line 2701
    :pswitch_47
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2702
    .line 2703
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2704
    .line 2705
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2706
    .line 2707
    .line 2708
    move-result-object v1

    .line 2709
    check-cast v1, Landroid/view/IWindowManager;

    .line 2710
    .line 2711
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2712
    .line 2713
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2714
    .line 2715
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2716
    .line 2717
    .line 2718
    move-result-object v2

    .line 2719
    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2720
    .line 2721
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2722
    .line 2723
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 2724
    .line 2725
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2726
    .line 2727
    .line 2728
    move-result-object v3

    .line 2729
    check-cast v3, Lcom/android/wm/shell/common/DisplayController;

    .line 2730
    .line 2731
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2732
    .line 2733
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2734
    .line 2735
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2736
    .line 2737
    .line 2738
    move-result-object v0

    .line 2739
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2740
    .line 2741
    new-instance v4, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 2742
    .line 2743
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/common/DisplayInsetsController;-><init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 2744
    .line 2745
    .line 2746
    return-object v4

    .line 2747
    :pswitch_48
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2748
    .line 2749
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2750
    .line 2751
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2752
    .line 2753
    .line 2754
    move-result-object v1

    .line 2755
    move-object v3, v1

    .line 2756
    check-cast v3, Landroid/view/IWindowManager;

    .line 2757
    .line 2758
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2759
    .line 2760
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2761
    .line 2762
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2763
    .line 2764
    .line 2765
    move-result-object v1

    .line 2766
    move-object v4, v1

    .line 2767
    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2768
    .line 2769
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2770
    .line 2771
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 2772
    .line 2773
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2774
    .line 2775
    .line 2776
    move-result-object v1

    .line 2777
    move-object v5, v1

    .line 2778
    check-cast v5, Lcom/android/wm/shell/common/DisplayController;

    .line 2779
    .line 2780
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2781
    .line 2782
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 2783
    .line 2784
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2785
    .line 2786
    .line 2787
    move-result-object v1

    .line 2788
    move-object v6, v1

    .line 2789
    check-cast v6, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 2790
    .line 2791
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2792
    .line 2793
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 2794
    .line 2795
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2796
    .line 2797
    .line 2798
    move-result-object v1

    .line 2799
    move-object v7, v1

    .line 2800
    check-cast v7, Lcom/android/wm/shell/common/TransactionPool;

    .line 2801
    .line 2802
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2803
    .line 2804
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2805
    .line 2806
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2807
    .line 2808
    .line 2809
    move-result-object v1

    .line 2810
    move-object v8, v1

    .line 2811
    check-cast v8, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2812
    .line 2813
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2814
    .line 2815
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 2816
    .line 2817
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 2818
    .line 2819
    .line 2820
    move-result-object v9

    .line 2821
    new-instance v0, Lcom/android/wm/shell/common/DisplayImeController;

    .line 2822
    .line 2823
    move-object v2, v0

    .line 2824
    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/common/DisplayImeController;-><init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TransactionPool;Ljava/util/concurrent/Executor;Ldagger/Lazy;)V

    .line 2825
    .line 2826
    .line 2827
    return-object v0

    .line 2828
    :pswitch_49
    new-instance v0, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2829
    .line 2830
    invoke-direct {v0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;-><init>()V

    .line 2831
    .line 2832
    .line 2833
    return-object v0

    .line 2834
    :pswitch_4a
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2835
    .line 2836
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2837
    .line 2838
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2839
    .line 2840
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2841
    .line 2842
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2843
    .line 2844
    .line 2845
    move-result-object v2

    .line 2846
    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2847
    .line 2848
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2849
    .line 2850
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2851
    .line 2852
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2853
    .line 2854
    .line 2855
    move-result-object v3

    .line 2856
    check-cast v3, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2857
    .line 2858
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2859
    .line 2860
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2861
    .line 2862
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2863
    .line 2864
    .line 2865
    move-result-object v0

    .line 2866
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2867
    .line 2868
    new-instance v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 2869
    .line 2870
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/sysui/ShellController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 2871
    .line 2872
    .line 2873
    return-object v4

    .line 2874
    :pswitch_4b
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideMainHandlerFactory;->provideMainHandler$1()Landroid/os/Handler;

    .line 2875
    .line 2876
    .line 2877
    move-result-object v0

    .line 2878
    new-instance v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 2879
    .line 2880
    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 2881
    .line 2882
    .line 2883
    return-object v1

    .line 2884
    :pswitch_4c
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2885
    .line 2886
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2887
    .line 2888
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2889
    .line 2890
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->setShellMainThread:Landroid/os/HandlerThread;

    .line 2891
    .line 2892
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideMainHandlerFactory;->provideMainHandler$1()Landroid/os/Handler;

    .line 2893
    .line 2894
    .line 2895
    move-result-object v2

    .line 2896
    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;->provideShellMainHandler(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2897
    .line 2898
    .line 2899
    move-result-object v0

    .line 2900
    return-object v0

    .line 2901
    :pswitch_4d
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2902
    .line 2903
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2904
    .line 2905
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2906
    .line 2907
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 2908
    .line 2909
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2910
    .line 2911
    .line 2912
    move-result-object v2

    .line 2913
    check-cast v2, Landroid/os/Handler;

    .line 2914
    .line 2915
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2916
    .line 2917
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSysUIMainExecutorProvider:Ljavax/inject/Provider;

    .line 2918
    .line 2919
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2920
    .line 2921
    .line 2922
    move-result-object v0

    .line 2923
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2924
    .line 2925
    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainExecutorFactory;->provideShellMainExecutor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 2926
    .line 2927
    .line 2928
    move-result-object v0

    .line 2929
    return-object v0

    .line 2930
    :pswitch_4e
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2931
    .line 2932
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2933
    .line 2934
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2935
    .line 2936
    .line 2937
    move-result-object v0

    .line 2938
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2939
    .line 2940
    new-instance v1, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2941
    .line 2942
    invoke-direct {v1, v0}, Lcom/android/wm/shell/sysui/ShellInit;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 2943
    .line 2944
    .line 2945
    return-object v1

    .line 2946
    :pswitch_4f
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2947
    .line 2948
    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2949
    .line 2950
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2951
    .line 2952
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2953
    .line 2954
    .line 2955
    move-result-object v1

    .line 2956
    move-object v4, v1

    .line 2957
    check-cast v4, Landroid/view/IWindowManager;

    .line 2958
    .line 2959
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2960
    .line 2961
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2962
    .line 2963
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2964
    .line 2965
    .line 2966
    move-result-object v1

    .line 2967
    move-object v5, v1

    .line 2968
    check-cast v5, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2969
    .line 2970
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2971
    .line 2972
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2973
    .line 2974
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2975
    .line 2976
    .line 2977
    move-result-object v1

    .line 2978
    move-object v6, v1

    .line 2979
    check-cast v6, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2980
    .line 2981
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2982
    .line 2983
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 2984
    .line 2985
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2986
    .line 2987
    .line 2988
    move-result-object v0

    .line 2989
    move-object v7, v0

    .line 2990
    check-cast v7, Lcom/android/wm/shell/sysui/ShellController;

    .line 2991
    .line 2992
    new-instance v0, Lcom/android/wm/shell/common/DisplayController;

    .line 2993
    .line 2994
    move-object v2, v0

    .line 2995
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/common/DisplayController;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellController;)V

    .line 2996
    .line 2997
    .line 2998
    return-object v0

    .line 2999
    :pswitch_50
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3000
    .line 3001
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 3002
    .line 3003
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3004
    .line 3005
    .line 3006
    move-result-object v1

    .line 3007
    check-cast v1, Lcom/android/wm/shell/common/DisplayController;

    .line 3008
    .line 3009
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3010
    .line 3011
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    .line 3012
    .line 3013
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3014
    .line 3015
    .line 3016
    move-result-object v1

    .line 3017
    check-cast v1, Lcom/android/wm/shell/common/DisplayImeController;

    .line 3018
    .line 3019
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3020
    .line 3021
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 3022
    .line 3023
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3024
    .line 3025
    .line 3026
    move-result-object v1

    .line 3027
    check-cast v1, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 3028
    .line 3029
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3030
    .line 3031
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    .line 3032
    .line 3033
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3034
    .line 3035
    .line 3036
    move-result-object v1

    .line 3037
    check-cast v1, Ljava/util/Optional;

    .line 3038
    .line 3039
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3040
    .line 3041
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 3042
    .line 3043
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3044
    .line 3045
    .line 3046
    move-result-object v1

    .line 3047
    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 3048
    .line 3049
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 3050
    .line 3051
    .line 3052
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3053
    .line 3054
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 3055
    .line 3056
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3057
    .line 3058
    .line 3059
    move-result-object v1

    .line 3060
    check-cast v1, Ljava/util/Optional;

    .line 3061
    .line 3062
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3063
    .line 3064
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    .line 3065
    .line 3066
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3067
    .line 3068
    .line 3069
    move-result-object v1

    .line 3070
    check-cast v1, Ljava/util/Optional;

    .line 3071
    .line 3072
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 3073
    .line 3074
    .line 3075
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3076
    .line 3077
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    .line 3078
    .line 3079
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3080
    .line 3081
    .line 3082
    move-result-object v1

    .line 3083
    check-cast v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 3084
    .line 3085
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3086
    .line 3087
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideUnfoldControllerProvider:Ljavax/inject/Provider;

    .line 3088
    .line 3089
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3090
    .line 3091
    .line 3092
    move-result-object v1

    .line 3093
    check-cast v1, Ljava/util/Optional;

    .line 3094
    .line 3095
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3096
    .line 3097
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideUnfoldTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 3098
    .line 3099
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3100
    .line 3101
    .line 3102
    move-result-object v1

    .line 3103
    check-cast v1, Ljava/util/Optional;

    .line 3104
    .line 3105
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3106
    .line 3107
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFreeformComponentsProvider:Ljavax/inject/Provider;

    .line 3108
    .line 3109
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3110
    .line 3111
    .line 3112
    move-result-object v1

    .line 3113
    check-cast v1, Ljava/util/Optional;

    .line 3114
    .line 3115
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3116
    .line 3117
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 3118
    .line 3119
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3120
    .line 3121
    .line 3122
    move-result-object v1

    .line 3123
    check-cast v1, Ljava/util/Optional;

    .line 3124
    .line 3125
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 3126
    .line 3127
    .line 3128
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3129
    .line 3130
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    .line 3131
    .line 3132
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3133
    .line 3134
    .line 3135
    move-result-object v1

    .line 3136
    check-cast v1, Ljava/util/Optional;

    .line 3137
    .line 3138
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3139
    .line 3140
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    .line 3141
    .line 3142
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3143
    .line 3144
    .line 3145
    move-result-object v1

    .line 3146
    check-cast v1, Ljava/util/Optional;

    .line 3147
    .line 3148
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3149
    .line 3150
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideActivityEmbeddingControllerProvider:Ljavax/inject/Provider;

    .line 3151
    .line 3152
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3153
    .line 3154
    .line 3155
    move-result-object v1

    .line 3156
    check-cast v1, Ljava/util/Optional;

    .line 3157
    .line 3158
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3159
    .line 3160
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 3161
    .line 3162
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3163
    .line 3164
    .line 3165
    move-result-object v1

    .line 3166
    check-cast v1, Lcom/android/wm/shell/transition/Transitions;

    .line 3167
    .line 3168
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3169
    .line 3170
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowControllerProvider:Ljavax/inject/Provider;

    .line 3171
    .line 3172
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3173
    .line 3174
    .line 3175
    move-result-object v1

    .line 3176
    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 3177
    .line 3178
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3179
    .line 3180
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideEnterSplitGestureHandlerProvider:Ljavax/inject/Provider;

    .line 3181
    .line 3182
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3183
    .line 3184
    .line 3185
    move-result-object v1

    .line 3186
    check-cast v1, Ljava/util/Optional;

    .line 3187
    .line 3188
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3189
    .line 3190
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideProtoLogControllerProvider:Ljavax/inject/Provider;

    .line 3191
    .line 3192
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3193
    .line 3194
    .line 3195
    move-result-object v0

    .line 3196
    check-cast v0, Lcom/android/wm/shell/ProtoLogController;

    .line 3197
    .line 3198
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 3199
    .line 3200
    .line 3201
    new-instance v0, Ljava/lang/Object;

    .line 3202
    .line 3203
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3204
    .line 3205
    .line 3206
    return-object v0

    .line 3207
    :pswitch_51
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3208
    .line 3209
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideIndependentShellComponentsToCreateProvider:Ljavax/inject/Provider;

    .line 3210
    .line 3211
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3212
    .line 3213
    .line 3214
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3215
    .line 3216
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 3217
    .line 3218
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3219
    .line 3220
    .line 3221
    move-result-object v0

    .line 3222
    check-cast v0, Lcom/android/wm/shell/sysui/ShellController;

    .line 3223
    .line 3224
    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mImpl:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    .line 3225
    .line 3226
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 3227
    .line 3228
    .line 3229
    return-object v0

    .line 3230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
