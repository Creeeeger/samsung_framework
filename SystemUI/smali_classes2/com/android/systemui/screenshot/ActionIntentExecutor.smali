.class public final Lcom/android/systemui/screenshot/ActionIntentExecutor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final context:Landroid/content/Context;

.field public final displayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final proxyConnector:Lcom/android/internal/infra/ServiceConnector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->context:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 11
    .line 12
    new-instance p1, Lcom/android/internal/infra/ServiceConnector$Impl;

    .line 13
    .line 14
    new-instance v2, Landroid/content/Intent;

    .line 15
    .line 16
    const-class p2, Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 17
    .line 18
    invoke-direct {v2, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    const v3, 0x40000021    # 2.0000079f

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    sget-object v5, Lcom/android/systemui/screenshot/ActionIntentExecutor$proxyConnector$1;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentExecutor$proxyConnector$1;

    .line 29
    .line 30
    move-object v0, p1

    .line 31
    move-object v1, p3

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->proxyConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final launchIntent(Landroid/content/Intent;Landroid/os/Bundle;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p5

    .line 3
    .line 4
    instance-of v2, v1, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;

    .line 10
    .line 11
    iget v3, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 12
    .line 13
    const/high16 v4, -0x80000000

    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    sub-int/2addr v3, v4

    .line 20
    iput v3, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    .line 32
    iget v4, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x3

    .line 36
    const/4 v7, 0x2

    .line 37
    const/4 v8, 0x1

    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    if-eq v4, v8, :cond_3

    .line 41
    .line 42
    if-eq v4, v7, :cond_2

    .line 43
    .line 44
    if-ne v4, v6, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    :goto_1
    iget-boolean v0, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_3
    iget-boolean v0, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    .line 67
    .line 68
    iget v4, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->I$0:I

    .line 69
    .line 70
    iget-object v8, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v8, Landroid/os/Bundle;

    .line 73
    .line 74
    iget-object v9, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v9, Landroid/content/Intent;

    .line 77
    .line 78
    iget-object v10, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v10, Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    move-object v1, v9

    .line 86
    move v9, v4

    .line 87
    move-object v4, v8

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    move-object/from16 v1, p1

    .line 95
    .line 96
    iput-object v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    .line 97
    .line 98
    move-object/from16 v4, p2

    .line 99
    .line 100
    iput-object v4, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    .line 101
    .line 102
    move/from16 v9, p3

    .line 103
    .line 104
    iput v9, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->I$0:I

    .line 105
    .line 106
    move/from16 v10, p4

    .line 107
    .line 108
    iput-boolean v10, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    .line 109
    .line 110
    iput v8, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 111
    .line 112
    new-instance v8, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 113
    .line 114
    invoke-direct {v8, v5}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 115
    .line 116
    .line 117
    new-instance v11, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;

    .line 118
    .line 119
    invoke-direct {v11, v8}, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    .line 120
    .line 121
    .line 122
    iget-object v12, v0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->proxyConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 123
    .line 124
    new-instance v13, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$2;

    .line 125
    .line 126
    invoke-direct {v13, v11}, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$2;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;)V

    .line 127
    .line 128
    .line 129
    check-cast v12, Lcom/android/internal/infra/ServiceConnector$Impl;

    .line 130
    .line 131
    invoke-virtual {v12, v13}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v2}, Lkotlinx/coroutines/CompletableDeferredImpl;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    if-ne v8, v3, :cond_5

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 142
    .line 143
    :goto_2
    if-ne v8, v3, :cond_6

    .line 144
    .line 145
    return-object v3

    .line 146
    :cond_6
    move v14, v10

    .line 147
    move-object v10, v0

    .line 148
    move v0, v14

    .line 149
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-ne v9, v8, :cond_7

    .line 154
    .line 155
    iget-object v6, v10, Lcom/android/systemui/screenshot/ActionIntentExecutor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 156
    .line 157
    new-instance v8, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;

    .line 158
    .line 159
    invoke-direct {v8, v10, v1, v4, v5}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/content/Intent;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    .line 160
    .line 161
    .line 162
    iput-object v10, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v5, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    .line 165
    .line 166
    iput-object v5, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    .line 167
    .line 168
    iput-boolean v0, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    .line 169
    .line 170
    iput v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 171
    .line 172
    invoke-static {v6, v8, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-ne v1, v3, :cond_9

    .line 177
    .line 178
    return-object v3

    .line 179
    :cond_7
    iput-object v10, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    .line 180
    .line 181
    iput-object v5, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    .line 182
    .line 183
    iput-object v5, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    .line 184
    .line 185
    iput-boolean v0, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    .line 186
    .line 187
    iput v6, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    .line 188
    .line 189
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    new-instance v6, Lcom/android/internal/infra/ServiceConnector$Impl;

    .line 193
    .line 194
    iget-object v7, v10, Lcom/android/systemui/screenshot/ActionIntentExecutor;->context:Landroid/content/Context;

    .line 195
    .line 196
    new-instance v8, Landroid/content/Intent;

    .line 197
    .line 198
    iget-object v11, v10, Lcom/android/systemui/screenshot/ActionIntentExecutor;->context:Landroid/content/Context;

    .line 199
    .line 200
    const-class v12, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;

    .line 201
    .line 202
    invoke-direct {v8, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .line 204
    .line 205
    const v11, 0x40000021    # 2.0000079f

    .line 206
    .line 207
    .line 208
    sget-object v12, Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;

    .line 209
    .line 210
    move-object p0, v6

    .line 211
    move-object/from16 p1, v7

    .line 212
    .line 213
    move-object/from16 p2, v8

    .line 214
    .line 215
    move/from16 p3, v11

    .line 216
    .line 217
    move/from16 p4, v9

    .line 218
    .line 219
    move-object/from16 p5, v12

    .line 220
    .line 221
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 222
    .line 223
    .line 224
    new-instance v7, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 225
    .line 226
    invoke-direct {v7, v5}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 227
    .line 228
    .line 229
    new-instance v5, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;

    .line 230
    .line 231
    invoke-direct {v5, v1, v4, v7}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Lkotlinx/coroutines/CompletableDeferred;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v5}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v2}, Lkotlinx/coroutines/CompletableDeferredImpl;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-ne v1, v3, :cond_8

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 245
    .line 246
    :goto_4
    if-ne v1, v3, :cond_9

    .line 247
    .line 248
    return-object v3

    .line 249
    :cond_9
    move-object v2, v10

    .line 250
    :goto_5
    if-eqz v0, :cond_a

    .line 251
    .line 252
    new-instance v0, Landroid/view/RemoteAnimationAdapter;

    .line 253
    .line 254
    sget-object v1, Lcom/android/systemui/screenshot/ActionIntentExecutorKt;->SCREENSHOT_REMOTE_RUNNER:Lcom/android/systemui/screenshot/ActionIntentExecutorKt$SCREENSHOT_REMOTE_RUNNER$1;

    .line 255
    .line 256
    const-wide/16 v3, 0x0

    .line 257
    .line 258
    const-wide/16 v5, 0x0

    .line 259
    .line 260
    move-object p0, v0

    .line 261
    move-object/from16 p1, v1

    .line 262
    .line 263
    move-wide/from16 p2, v3

    .line 264
    .line 265
    move-wide/from16 p4, v5

    .line 266
    .line 267
    invoke-direct/range {p0 .. p5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 268
    .line 269
    .line 270
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    iget-object v2, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    const/4 v2, 0x0

    .line 280
    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .line 282
    .line 283
    goto :goto_6

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v1, "ActionIntentExecutor"

    .line 286
    .line 287
    const-string v2, "Error overriding screenshot app transition"

    .line 288
    .line 289
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .line 291
    .line 292
    :cond_a
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 293
    .line 294
    return-object v0
.end method

.method public final launchIntentAsync(Landroid/content/Intent;Landroid/os/Bundle;IZ)V
    .locals 8

    .line 1
    new-instance v7, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntentAsync$1;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntentAsync$1;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/content/Intent;Landroid/os/Bundle;IZLkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-static {p0, p2, p2, v7, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 18
    .line 19
    .line 20
    return-void
.end method
