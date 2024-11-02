.class final Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.UserInteractor$actions$1"
    f = "UserInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/domain/interactor/UserInteractor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 2
    .line 3
    const/4 p1, 0x5

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 2
    .line 3
    check-cast p2, Ljava/util/List;

    .line 4
    .line 5
    check-cast p3, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 6
    .line 7
    check-cast p4, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    check-cast p5, Lkotlin/coroutines/Continuation;

    .line 14
    .line 15
    new-instance p4, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 18
    .line 19
    invoke-direct {p4, p0, p5}, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p4, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p3, p4, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    iput-boolean p1, p4, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->Z$0:Z

    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    invoke-virtual {p4, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->label:I

    .line 4
    .line 5
    if-nez v0, :cond_20

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Ljava/util/List;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->L$1:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->Z$0:Z

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 21
    .line 22
    new-instance v2, Lkotlin/collections/builders/ListBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-boolean v1, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1c

    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 36
    .line 37
    sget-object v5, Lcom/android/systemui/flags/Flags;->FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 38
    .line 39
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    sget-object v1, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 48
    .line 49
    sget-object v5, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 50
    .line 51
    sget-object v6, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 52
    .line 53
    filled-new-array {v1, v5, v6}, [Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    sget-object v1, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 63
    .line 64
    sget-object v5, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 65
    .line 66
    sget-object v6, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 67
    .line 68
    filled-new-array {v1, v5, v6}, [Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    .line 77
    .line 78
    const/16 v6, 0xa

    .line 79
    .line 80
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_1c

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 102
    .line 103
    sget-object v7, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    aget v6, v7, v6

    .line 110
    .line 111
    const-string v7, "no_add_user"

    .line 112
    .line 113
    iget-object v8, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 114
    .line 115
    iget-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->manager:Landroid/os/UserManager;

    .line 116
    .line 117
    if-eq v6, v4, :cond_f

    .line 118
    .line 119
    const/4 v10, 0x2

    .line 120
    const-string v11, "android.os.usertype.full.SECONDARY"

    .line 121
    .line 122
    if-eq v6, v10, :cond_a

    .line 123
    .line 124
    const/4 v10, 0x3

    .line 125
    if-eq v6, v10, :cond_2

    .line 126
    .line 127
    goto/16 :goto_15

    .line 128
    .line 129
    :cond_2
    sget-object v6, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserActionsUtil;

    .line 130
    .line 131
    iget-boolean v10, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    .line 132
    .line 133
    iget-object v12, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 134
    .line 135
    const v13, 0x104039a

    .line 136
    .line 137
    .line 138
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    if-eqz v12, :cond_4

    .line 146
    .line 147
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_3

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    move v6, v3

    .line 155
    goto :goto_3

    .line 156
    :cond_4
    :goto_2
    move v6, v4

    .line 157
    :goto_3
    if-eqz v6, :cond_5

    .line 158
    .line 159
    :goto_4
    move v6, v3

    .line 160
    goto :goto_7

    .line 161
    :cond_5
    if-nez v10, :cond_6

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_6
    check-cast v8, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 165
    .line 166
    invoke-virtual {v8}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-nez v8, :cond_7

    .line 175
    .line 176
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 177
    .line 178
    if-eqz v6, :cond_7

    .line 179
    .line 180
    move v6, v3

    .line 181
    goto :goto_5

    .line 182
    :cond_7
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 183
    .line 184
    invoke-virtual {v9, v7, v6}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    xor-int/2addr v6, v4

    .line 189
    :goto_5
    if-nez v6, :cond_9

    .line 190
    .line 191
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 192
    .line 193
    invoke-virtual {v9, v7, v6}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    xor-int/2addr v6, v4

    .line 198
    if-eqz v6, :cond_8

    .line 199
    .line 200
    iget-boolean v6, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 201
    .line 202
    if-eqz v6, :cond_8

    .line 203
    .line 204
    move v6, v4

    .line 205
    goto :goto_6

    .line 206
    :cond_8
    move v6, v3

    .line 207
    :goto_6
    if-nez v6, :cond_9

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_9
    invoke-virtual {v9, v11}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    :goto_7
    if-eqz v6, :cond_1b

    .line 215
    .line 216
    sget-object v6, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 217
    .line 218
    invoke-virtual {v2, v6}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto/16 :goto_15

    .line 222
    .line 223
    :cond_a
    sget-object v6, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserActionsUtil;

    .line 224
    .line 225
    iget-boolean v10, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    .line 226
    .line 227
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    if-nez v10, :cond_b

    .line 231
    .line 232
    :goto_8
    move v6, v3

    .line 233
    goto :goto_b

    .line 234
    :cond_b
    check-cast v8, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 235
    .line 236
    invoke-virtual {v8}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-nez v8, :cond_c

    .line 245
    .line 246
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 247
    .line 248
    if-eqz v6, :cond_c

    .line 249
    .line 250
    move v6, v3

    .line 251
    goto :goto_9

    .line 252
    :cond_c
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 253
    .line 254
    invoke-virtual {v9, v7, v6}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    xor-int/2addr v6, v4

    .line 259
    :goto_9
    if-nez v6, :cond_e

    .line 260
    .line 261
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 262
    .line 263
    invoke-virtual {v9, v7, v6}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    xor-int/2addr v6, v4

    .line 268
    if-eqz v6, :cond_d

    .line 269
    .line 270
    iget-boolean v6, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 271
    .line 272
    if-eqz v6, :cond_d

    .line 273
    .line 274
    move v6, v4

    .line 275
    goto :goto_a

    .line 276
    :cond_d
    move v6, v3

    .line 277
    :goto_a
    if-nez v6, :cond_e

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_e
    invoke-virtual {v9, v11}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    :goto_b
    if-eqz v6, :cond_1b

    .line 285
    .line 286
    sget-object v6, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 287
    .line 288
    invoke-virtual {v2, v6}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    goto/16 :goto_15

    .line 292
    .line 293
    :cond_f
    instance-of v6, p1, Ljava/util/Collection;

    .line 294
    .line 295
    if-eqz v6, :cond_10

    .line 296
    .line 297
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    if-eqz v6, :cond_10

    .line 302
    .line 303
    goto :goto_c

    .line 304
    :cond_10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    if-eqz v10, :cond_12

    .line 313
    .line 314
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    check-cast v10, Landroid/content/pm/UserInfo;

    .line 319
    .line 320
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 321
    .line 322
    .line 323
    move-result v10

    .line 324
    if-eqz v10, :cond_11

    .line 325
    .line 326
    move v6, v4

    .line 327
    goto :goto_d

    .line 328
    :cond_12
    :goto_c
    move v6, v3

    .line 329
    :goto_d
    if-nez v6, :cond_1b

    .line 330
    .line 331
    iget-object v6, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 332
    .line 333
    iget-boolean v6, v6, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    .line 334
    .line 335
    if-nez v6, :cond_1a

    .line 336
    .line 337
    sget-object v6, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserActionsUtil;

    .line 338
    .line 339
    iget-boolean v10, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    .line 340
    .line 341
    if-nez v10, :cond_13

    .line 342
    .line 343
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    goto :goto_10

    .line 347
    :cond_13
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    check-cast v8, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 351
    .line 352
    invoke-virtual {v8}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    if-nez v8, :cond_14

    .line 361
    .line 362
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 363
    .line 364
    if-eqz v6, :cond_14

    .line 365
    .line 366
    move v6, v3

    .line 367
    goto :goto_e

    .line 368
    :cond_14
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 369
    .line 370
    invoke-virtual {v9, v7, v6}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    xor-int/2addr v6, v4

    .line 375
    :goto_e
    if-nez v6, :cond_16

    .line 376
    .line 377
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 378
    .line 379
    invoke-virtual {v9, v7, v6}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    xor-int/2addr v6, v4

    .line 384
    if-eqz v6, :cond_15

    .line 385
    .line 386
    iget-boolean v6, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 387
    .line 388
    if-eqz v6, :cond_15

    .line 389
    .line 390
    move v6, v4

    .line 391
    goto :goto_f

    .line 392
    :cond_15
    move v6, v3

    .line 393
    :goto_f
    if-eqz v6, :cond_17

    .line 394
    .line 395
    :cond_16
    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    .line 396
    .line 397
    if-eqz v6, :cond_18

    .line 398
    .line 399
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->supportsMultipleUsers()Z

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    if-nez v6, :cond_17

    .line 404
    .line 405
    goto :goto_11

    .line 406
    :cond_17
    :goto_10
    move v6, v3

    .line 407
    goto :goto_12

    .line 408
    :cond_18
    :goto_11
    move v6, v4

    .line 409
    :goto_12
    if-eqz v6, :cond_19

    .line 410
    .line 411
    goto :goto_13

    .line 412
    :cond_19
    move v6, v3

    .line 413
    goto :goto_14

    .line 414
    :cond_1a
    :goto_13
    move v6, v4

    .line 415
    :goto_14
    if-eqz v6, :cond_1b

    .line 416
    .line 417
    sget-object v6, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 418
    .line 419
    invoke-virtual {v2, v6}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    :cond_1b
    :goto_15
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 423
    .line 424
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    goto/16 :goto_1

    .line 428
    .line 429
    :cond_1c
    sget-object p1, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserActionsUtil;

    .line 430
    .line 431
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 432
    .line 433
    iget-boolean v1, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    .line 434
    .line 435
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    if-eqz v1, :cond_1e

    .line 439
    .line 440
    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 441
    .line 442
    invoke-virtual {p0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 447
    .line 448
    .line 449
    move-result p0

    .line 450
    if-nez p0, :cond_1d

    .line 451
    .line 452
    iget-boolean p0, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 453
    .line 454
    if-eqz p0, :cond_1e

    .line 455
    .line 456
    :cond_1d
    move v3, v4

    .line 457
    :cond_1e
    if-eqz v3, :cond_1f

    .line 458
    .line 459
    sget-object p0, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 460
    .line 461
    invoke-virtual {v2, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    :cond_1f
    invoke-virtual {v2}, Lkotlin/collections/builders/ListBuilder;->build()V

    .line 465
    .line 466
    .line 467
    return-object v2

    .line 468
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 469
    .line 470
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 471
    .line 472
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw p0
.end method
