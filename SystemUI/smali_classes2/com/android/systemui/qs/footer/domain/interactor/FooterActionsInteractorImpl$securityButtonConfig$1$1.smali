.class final Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;-><init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/qs/QSSecurityFooterUtils;Lcom/android/systemui/qs/FgsManagerController;Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/security/data/repository/SecurityRepository;Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepository;Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepository;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.qs.footer.domain.interactor.FooterActionsInteractorImpl$securityButtonConfig$1$1"
    f = "FooterActionsInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $security:Lcom/android/systemui/security/data/model/SecurityModel;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;Lcom/android/systemui/security/data/model/SecurityModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;",
            "Lcom/android/systemui/security/data/model/SecurityModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->$security:Lcom/android/systemui/security/data/model/SecurityModel;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->$security:Lcom/android/systemui/security/data/model/SecurityModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;-><init>(Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;Lcom/android/systemui/security/data/model/SecurityModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->label:I

    .line 6
    .line 7
    if-nez v1, :cond_24

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->qsSecurityFooterUtils:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->$security:Lcom/android/systemui/security/data/model/SecurityModel;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-boolean v2, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isDeviceManaged:Z

    .line 22
    .line 23
    iget-object v3, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 24
    .line 25
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    move v3, v6

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v3, 0x0

    .line 49
    :goto_0
    iget-boolean v4, v0, Lcom/android/systemui/security/data/model/SecurityModel;->hasWorkProfile:Z

    .line 50
    .line 51
    iget-boolean v7, v0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInWorkProfile:Z

    .line 52
    .line 53
    iget-boolean v8, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isNetworkLoggingEnabled:Z

    .line 54
    .line 55
    iget-object v9, v0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileVpnName:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v7, :cond_2

    .line 58
    .line 59
    if-nez v9, :cond_2

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v10, 0x0

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    :goto_1
    move v10, v6

    .line 69
    :goto_2
    iget-boolean v11, v0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInCurrentUser:Z

    .line 70
    .line 71
    iget-object v12, v0, Lcom/android/systemui/security/data/model/SecurityModel;->primaryVpnName:Ljava/lang/String;

    .line 72
    .line 73
    iget-boolean v13, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isProfileOwnerOfOrganizationOwnedDevice:Z

    .line 74
    .line 75
    iget-boolean v14, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isParentalControlsEnabled:Z

    .line 76
    .line 77
    iget-boolean v15, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isWorkProfileOn:Z

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    :cond_3
    if-nez v11, :cond_5

    .line 84
    .line 85
    if-nez v12, :cond_5

    .line 86
    .line 87
    if-nez v13, :cond_5

    .line 88
    .line 89
    if-nez v14, :cond_5

    .line 90
    .line 91
    if-eqz v10, :cond_4

    .line 92
    .line 93
    if-eqz v15, :cond_4

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    const/4 v3, 0x0

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    :goto_3
    move v3, v6

    .line 99
    :goto_4
    const/4 v5, 0x0

    .line 100
    if-nez v3, :cond_6

    .line 101
    .line 102
    goto/16 :goto_f

    .line 103
    .line 104
    :cond_6
    if-eqz v13, :cond_8

    .line 105
    .line 106
    if-eqz v10, :cond_7

    .line 107
    .line 108
    if-eqz v15, :cond_7

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_7
    const/4 v3, 0x0

    .line 112
    goto :goto_6

    .line 113
    :cond_8
    :goto_5
    move v3, v6

    .line 114
    :goto_6
    if-eqz v14, :cond_9

    .line 115
    .line 116
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    const v4, 0x7f130daa

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    goto/16 :goto_c

    .line 126
    .line 127
    :cond_9
    const/4 v10, 0x2

    .line 128
    if-nez v2, :cond_15

    .line 129
    .line 130
    iget-object v2, v0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileOrganizationName:Ljava/lang/String;

    .line 131
    .line 132
    if-nez v11, :cond_11

    .line 133
    .line 134
    if-eqz v7, :cond_a

    .line 135
    .line 136
    if-eqz v15, :cond_a

    .line 137
    .line 138
    goto/16 :goto_8

    .line 139
    .line 140
    :cond_a
    if-nez v12, :cond_d

    .line 141
    .line 142
    if-eqz v9, :cond_b

    .line 143
    .line 144
    if-eqz v15, :cond_b

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_b
    if-eqz v4, :cond_c

    .line 148
    .line 149
    if-eqz v8, :cond_c

    .line 150
    .line 151
    if-eqz v15, :cond_c

    .line 152
    .line 153
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 154
    .line 155
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 160
    .line 161
    const-string v6, "SystemUi.QS_MSG_WORK_PROFILE_NETWORK"

    .line 162
    .line 163
    invoke-virtual {v2, v6, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    goto/16 :goto_c

    .line 168
    .line 169
    :cond_c
    if-eqz v13, :cond_14

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    goto/16 :goto_c

    .line 176
    .line 177
    :cond_d
    :goto_7
    if-eqz v12, :cond_e

    .line 178
    .line 179
    if-eqz v9, :cond_e

    .line 180
    .line 181
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    const v4, 0x7f130dac

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    goto/16 :goto_c

    .line 191
    .line 192
    :cond_e
    if-eqz v9, :cond_f

    .line 193
    .line 194
    if-eqz v15, :cond_f

    .line 195
    .line 196
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 197
    .line 198
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    .line 203
    .line 204
    invoke-direct {v4, v1, v9, v6}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    const-string v7, "SystemUi.QS_MSG_WORK_PROFILE_NAMED_VPN"

    .line 212
    .line 213
    invoke-virtual {v2, v7, v4, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    goto/16 :goto_c

    .line 218
    .line 219
    :cond_f
    if-eqz v12, :cond_14

    .line 220
    .line 221
    if-eqz v4, :cond_10

    .line 222
    .line 223
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 224
    .line 225
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    .line 230
    .line 231
    invoke-direct {v4, v1, v12, v10}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    const-string v7, "SystemUi.QS_MSG_PERSONAL_PROFILE_NAMED_VPN"

    .line 239
    .line 240
    invoke-virtual {v2, v7, v4, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    goto/16 :goto_c

    .line 245
    .line 246
    :cond_10
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 247
    .line 248
    const v4, 0x7f130da9

    .line 249
    .line 250
    .line 251
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    goto/16 :goto_c

    .line 260
    .line 261
    :cond_11
    :goto_8
    if-eqz v7, :cond_13

    .line 262
    .line 263
    if-eqz v15, :cond_13

    .line 264
    .line 265
    if-nez v2, :cond_12

    .line 266
    .line 267
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 268
    .line 269
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 274
    .line 275
    const-string v6, "SystemUi.QS_MSG_WORK_PROFILE_MONITORING"

    .line 276
    .line 277
    invoke-virtual {v2, v6, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    goto/16 :goto_c

    .line 282
    .line 283
    :cond_12
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 284
    .line 285
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    new-instance v7, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    .line 290
    .line 291
    invoke-direct {v7, v1, v2, v6}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    .line 292
    .line 293
    .line 294
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    const-string v6, "SystemUi.QS_MSG_NAMED_WORK_PROFILE_MONITORING"

    .line 299
    .line 300
    invoke-virtual {v4, v6, v7, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    goto/16 :goto_c

    .line 305
    .line 306
    :cond_13
    if-eqz v11, :cond_14

    .line 307
    .line 308
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 309
    .line 310
    const v4, 0x7f130da3

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    goto/16 :goto_c

    .line 318
    .line 319
    :cond_14
    move-object v2, v5

    .line 320
    goto/16 :goto_c

    .line 321
    .line 322
    :cond_15
    iget-object v2, v0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceOwnerOrganizationName:Ljava/lang/String;

    .line 323
    .line 324
    if-nez v11, :cond_1d

    .line 325
    .line 326
    if-nez v7, :cond_1d

    .line 327
    .line 328
    if-eqz v8, :cond_16

    .line 329
    .line 330
    goto/16 :goto_b

    .line 331
    .line 332
    :cond_16
    if-nez v12, :cond_18

    .line 333
    .line 334
    if-eqz v9, :cond_17

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_17
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    goto/16 :goto_c

    .line 342
    .line 343
    :cond_18
    :goto_9
    if-eqz v12, :cond_1a

    .line 344
    .line 345
    if-eqz v9, :cond_1a

    .line 346
    .line 347
    if-nez v2, :cond_19

    .line 348
    .line 349
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 350
    .line 351
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 356
    .line 357
    const-string v6, "SystemUi.QS_MSG_MANAGEMENT_MULTIPLE_VPNS"

    .line 358
    .line 359
    invoke-virtual {v2, v6, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    goto/16 :goto_c

    .line 364
    .line 365
    :cond_19
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 366
    .line 367
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    new-instance v6, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    .line 372
    .line 373
    const/4 v7, 0x0

    .line 374
    invoke-direct {v6, v1, v2, v7}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    .line 375
    .line 376
    .line 377
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    const-string v7, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MULTIPLE_VPNS"

    .line 382
    .line 383
    invoke-virtual {v4, v7, v6, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    goto :goto_c

    .line 388
    :cond_1a
    if-eqz v12, :cond_1b

    .line 389
    .line 390
    move-object v4, v12

    .line 391
    goto :goto_a

    .line 392
    :cond_1b
    move-object v4, v9

    .line 393
    :goto_a
    if-nez v2, :cond_1c

    .line 394
    .line 395
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 396
    .line 397
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    new-instance v6, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    .line 402
    .line 403
    const/4 v7, 0x0

    .line 404
    invoke-direct {v6, v1, v4, v7}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    const-string v7, "SystemUi.QS_MSG_MANAGEMENT_NAMED_VPN"

    .line 412
    .line 413
    invoke-virtual {v2, v7, v6, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    goto :goto_c

    .line 418
    :cond_1c
    iget-object v6, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 419
    .line 420
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    new-instance v7, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;

    .line 425
    .line 426
    invoke-direct {v7, v1, v2, v4}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    const-string v4, "SystemUi.QS_MSG_NAMED_MANAGEMENT_NAMED_VPN"

    .line 434
    .line 435
    invoke-virtual {v6, v4, v7, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    goto :goto_c

    .line 440
    :cond_1d
    :goto_b
    if-nez v2, :cond_1e

    .line 441
    .line 442
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 443
    .line 444
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 449
    .line 450
    const-string v6, "SystemUi.QS_MSG_MANAGEMENT_MONITORING"

    .line 451
    .line 452
    invoke-virtual {v2, v6, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    goto :goto_c

    .line 457
    :cond_1e
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 458
    .line 459
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    new-instance v6, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    .line 464
    .line 465
    invoke-direct {v6, v1, v2, v10}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    .line 466
    .line 467
    .line 468
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    const-string v7, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MONITORING"

    .line 473
    .line 474
    invoke-virtual {v4, v7, v6, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    :goto_c
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    if-eqz v14, :cond_1f

    .line 483
    .line 484
    iget-object v4, v0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceAdminIcon:Landroid/graphics/drawable/Drawable;

    .line 485
    .line 486
    if-eqz v4, :cond_1f

    .line 487
    .line 488
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    .line 489
    .line 490
    invoke-direct {v0, v4, v5}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 491
    .line 492
    .line 493
    goto :goto_e

    .line 494
    :cond_1f
    if-nez v12, :cond_21

    .line 495
    .line 496
    if-eqz v9, :cond_20

    .line 497
    .line 498
    goto :goto_d

    .line 499
    :cond_20
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 500
    .line 501
    const v4, 0x7f080936

    .line 502
    .line 503
    .line 504
    invoke-direct {v0, v4, v5}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 505
    .line 506
    .line 507
    goto :goto_e

    .line 508
    :cond_21
    :goto_d
    iget-boolean v0, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isVpnBranded:Z

    .line 509
    .line 510
    if-eqz v0, :cond_22

    .line 511
    .line 512
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 513
    .line 514
    const v4, 0x7f08111f

    .line 515
    .line 516
    .line 517
    invoke-direct {v0, v4, v5}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 518
    .line 519
    .line 520
    goto :goto_e

    .line 521
    :cond_22
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 522
    .line 523
    const v4, 0x7f0811fd

    .line 524
    .line 525
    .line 526
    invoke-direct {v0, v4, v5}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 527
    .line 528
    .line 529
    :goto_e
    iget-object v1, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 530
    .line 531
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 532
    .line 533
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isSecureWifiEnabled()Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    if-eqz v1, :cond_23

    .line 538
    .line 539
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 540
    .line 541
    const v1, 0x7f0811ca

    .line 542
    .line 543
    .line 544
    invoke-direct {v0, v1, v5}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 545
    .line 546
    .line 547
    :cond_23
    new-instance v5, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;

    .line 548
    .line 549
    invoke-direct {v5, v0, v2, v3}, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;-><init>(Lcom/android/systemui/common/shared/model/Icon;Ljava/lang/String;Z)V

    .line 550
    .line 551
    .line 552
    :goto_f
    return-object v5

    .line 553
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 554
    .line 555
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 556
    .line 557
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw v0
.end method
