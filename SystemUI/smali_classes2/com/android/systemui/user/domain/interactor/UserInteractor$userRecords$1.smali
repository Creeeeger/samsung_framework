.class final Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/user/domain/interactor/UserInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/flags/FeatureFlags;Landroid/os/UserManager;Lcom/android/systemui/user/domain/interactor/HeadlessSystemUserMode;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/app/ActivityManager;Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/SettingsHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.UserInteractor$userRecords$1"
    f = "UserInteractor.kt"
    l = {
        0xfb,
        0x101
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

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
            "Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

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
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    check-cast p3, Ljava/util/List;

    .line 6
    .line 7
    check-cast p4, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 8
    .line 9
    check-cast p5, Lkotlin/coroutines/Continuation;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 14
    .line 15
    invoke-direct {v0, p0, p5}, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->label:I

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v4, :cond_1

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$6:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ljava/util/Collection;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$5:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/util/Collection;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$4:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v5, Ljava/util/Iterator;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v6, Ljava/util/Collection;

    .line 30
    .line 31
    iget-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v7, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 34
    .line 35
    iget-object v8, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v8, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 38
    .line 39
    iget-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v9, Landroid/content/pm/UserInfo;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$6:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Ljava/util/Collection;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$5:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v5, Ljava/util/Iterator;

    .line 63
    .line 64
    iget-object v6, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$4:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v6, Ljava/util/Collection;

    .line 67
    .line 68
    iget-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v7, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 71
    .line 72
    iget-object v8, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v8, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 75
    .line 76
    iget-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v9, Ljava/util/List;

    .line 79
    .line 80
    iget-object v10, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v10, Landroid/content/pm/UserInfo;

    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Ljava/util/List;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 98
    .line 99
    iget-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v5, Ljava/util/List;

    .line 102
    .line 103
    iget-object v6, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v6, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 106
    .line 107
    iget-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 108
    .line 109
    new-instance v8, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    move-object v10, v1

    .line 123
    move-object v9, v5

    .line 124
    move-object v1, v8

    .line 125
    move-object v5, p1

    .line 126
    move-object v8, v6

    .line 127
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 138
    .line 139
    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    .line 140
    .line 141
    iput-object v10, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v8, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$4:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$5:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$6:Ljava/lang/Object;

    .line 154
    .line 155
    iput v4, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->label:I

    .line 156
    .line 157
    invoke-static {v7, p1, v6, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->access$toRecord(Lcom/android/systemui/user/domain/interactor/UserInteractor;Landroid/content/pm/UserInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-ne p1, v0, :cond_3

    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_3
    move-object v6, v1

    .line 165
    :goto_1
    check-cast p1, Lcom/android/systemui/user/data/source/UserRecord;

    .line 166
    .line 167
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-object v1, v6

    .line 171
    goto :goto_0

    .line 172
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 175
    .line 176
    new-instance v5, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-static {v9, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    move-object v7, p1

    .line 190
    move-object v9, v10

    .line 191
    move-object v11, v2

    .line 192
    move-object v2, v1

    .line 193
    move-object v1, v5

    .line 194
    move-object v5, v11

    .line 195
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 206
    .line 207
    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    .line 208
    .line 209
    sget-object v10, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 210
    .line 211
    if-eq p1, v10, :cond_5

    .line 212
    .line 213
    sget-object v10, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 214
    .line 215
    if-eq p1, v10, :cond_5

    .line 216
    .line 217
    iget-boolean v10, v8, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 218
    .line 219
    if-nez v10, :cond_5

    .line 220
    .line 221
    move v10, v4

    .line 222
    goto :goto_3

    .line 223
    :cond_5
    const/4 v10, 0x0

    .line 224
    :goto_3
    iput-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    .line 225
    .line 226
    iput-object v8, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    .line 229
    .line 230
    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    .line 231
    .line 232
    iput-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$4:Ljava/lang/Object;

    .line 233
    .line 234
    iput-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$5:Ljava/lang/Object;

    .line 235
    .line 236
    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->L$6:Ljava/lang/Object;

    .line 237
    .line 238
    iput v3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;->label:I

    .line 239
    .line 240
    invoke-static {v7, p1, v6, v10, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->access$toRecord(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/user/shared/model/UserActionModel;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    if-ne p1, v0, :cond_6

    .line 245
    .line 246
    return-object v0

    .line 247
    :cond_6
    move-object v6, v1

    .line 248
    :goto_4
    check-cast p1, Lcom/android/systemui/user/data/source/UserRecord;

    .line 249
    .line 250
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-object v1, v6

    .line 254
    goto :goto_2

    .line 255
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 256
    .line 257
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    new-instance p1, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    .line 265
    .line 266
    return-object p1
.end method
