.class public final Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;

    .line 2
    .line 3
    instance-of p2, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;

    .line 4
    .line 5
    const/16 v0, 0x3b

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    new-instance p2, Lkotlin/Pair;

    .line 13
    .line 14
    new-instance v10, Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    .line 17
    .line 18
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Landroid/content/Context;

    .line 24
    .line 25
    move-object v2, p1

    .line 26
    check-cast v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;

    .line 27
    .line 28
    iget-object v4, v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->userHandle:Landroid/os/UserHandle;

    .line 29
    .line 30
    iget-boolean v5, v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->isKeyguardShowing:Z

    .line 31
    .line 32
    iget-boolean v6, v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->showEphemeralMessage:Z

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingManager:Ldagger/Lazy;

    .line 35
    .line 36
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    move-object v7, v2

    .line 41
    check-cast v7, Lcom/android/systemui/plugins/FalsingManager;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->broadcastSender:Ldagger/Lazy;

    .line 44
    .line 45
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move-object v8, v2

    .line 50
    check-cast v8, Lcom/android/systemui/broadcast/BroadcastSender;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogLaunchAnimator:Ldagger/Lazy;

    .line 53
    .line 54
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v9, v2

    .line 59
    check-cast v9, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 60
    .line 61
    move-object v2, v10

    .line 62
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/user/ui/dialog/AddUserDialog;-><init>(Landroid/content/Context;Landroid/os/UserHandle;ZZLcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/animation/DialogLaunchAnimator;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Lcom/android/systemui/animation/DialogCuj;

    .line 66
    .line 67
    const-string v3, "add_new_user"

    .line 68
    .line 69
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, v10, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_0
    instance-of p2, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserCreationDialog;

    .line 78
    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    new-instance p2, Lkotlin/Pair;

    .line 82
    .line 83
    new-instance v0, Lcom/android/settingslib/users/UserCreatingDialog;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    .line 86
    .line 87
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Landroid/content/Context;

    .line 92
    .line 93
    move-object v3, p1

    .line 94
    check-cast v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserCreationDialog;

    .line 95
    .line 96
    iget-boolean v3, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserCreationDialog;->isGuest:Z

    .line 97
    .line 98
    invoke-direct {v0, v2, v3}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;Z)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_1
    instance-of p2, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    .line 107
    .line 108
    const-string v2, "exit_guest_mode"

    .line 109
    .line 110
    if-eqz p2, :cond_2

    .line 111
    .line 112
    new-instance p2, Lkotlin/Pair;

    .line 113
    .line 114
    new-instance v12, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    .line 117
    .line 118
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    move-object v4, v3

    .line 123
    check-cast v4, Landroid/content/Context;

    .line 124
    .line 125
    move-object v3, p1

    .line 126
    check-cast v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    .line 127
    .line 128
    iget v5, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    .line 129
    .line 130
    iget-boolean v6, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    .line 131
    .line 132
    iget v7, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    .line 133
    .line 134
    iget-boolean v8, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    .line 135
    .line 136
    iget-object v9, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingManager:Ldagger/Lazy;

    .line 137
    .line 138
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    check-cast v9, Lcom/android/systemui/plugins/FalsingManager;

    .line 143
    .line 144
    iget-object v10, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogLaunchAnimator:Ldagger/Lazy;

    .line 145
    .line 146
    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    check-cast v10, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 151
    .line 152
    new-instance v11, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;

    .line 153
    .line 154
    iget-object v3, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    .line 155
    .line 156
    invoke-direct {v11, v3}, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 157
    .line 158
    .line 159
    move-object v3, v12

    .line 160
    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;-><init>(Landroid/content/Context;IZIZLcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$OnExitGuestUserListener;)V

    .line 161
    .line 162
    .line 163
    new-instance v3, Lcom/android/systemui/animation/DialogCuj;

    .line 164
    .line 165
    invoke-direct {v3, v0, v2}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-direct {p2, v12, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_2
    instance-of p2, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherDialog;

    .line 173
    .line 174
    if-eqz p2, :cond_3

    .line 175
    .line 176
    new-instance p2, Lkotlin/Pair;

    .line 177
    .line 178
    new-instance v10, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;

    .line 179
    .line 180
    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    .line 181
    .line 182
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    move-object v4, v3

    .line 187
    check-cast v4, Landroid/content/Context;

    .line 188
    .line 189
    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->userDetailAdapterProvider:Ljavax/inject/Provider;

    .line 190
    .line 191
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    move-object v5, v3

    .line 196
    check-cast v5, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    .line 197
    .line 198
    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->eventLogger:Ldagger/Lazy;

    .line 199
    .line 200
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    move-object v6, v3

    .line 205
    check-cast v6, Lcom/android/internal/logging/UiEventLogger;

    .line 206
    .line 207
    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingManager:Ldagger/Lazy;

    .line 208
    .line 209
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    move-object v7, v3

    .line 214
    check-cast v7, Lcom/android/systemui/plugins/FalsingManager;

    .line 215
    .line 216
    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->activityStarter:Ldagger/Lazy;

    .line 217
    .line 218
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    move-object v8, v3

    .line 223
    check-cast v8, Lcom/android/systemui/plugins/ActivityStarter;

    .line 224
    .line 225
    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogLaunchAnimator:Ldagger/Lazy;

    .line 226
    .line 227
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    move-object v9, v3

    .line 232
    check-cast v9, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 233
    .line 234
    move-object v3, v10

    .line 235
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/animation/DialogLaunchAnimator;)V

    .line 236
    .line 237
    .line 238
    new-instance v3, Lcom/android/systemui/animation/DialogCuj;

    .line 239
    .line 240
    invoke-direct {v3, v0, v2}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-direct {p2, v10, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_3
    instance-of p2, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherFullscreenDialog;

    .line 248
    .line 249
    if-eqz p2, :cond_8

    .line 250
    .line 251
    new-instance p2, Lkotlin/Pair;

    .line 252
    .line 253
    new-instance v0, Lcom/android/systemui/user/UserSwitchFullscreenDialog;

    .line 254
    .line 255
    iget-object v2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    .line 256
    .line 257
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Landroid/content/Context;

    .line 262
    .line 263
    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingCollector:Ldagger/Lazy;

    .line 264
    .line 265
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Lcom/android/systemui/classifier/FalsingCollector;

    .line 270
    .line 271
    iget-object v4, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->userSwitcherViewModel:Ldagger/Lazy;

    .line 272
    .line 273
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    check-cast v4, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 278
    .line 279
    invoke-direct {v0, v2, v3, v4}, Lcom/android/systemui/user/UserSwitchFullscreenDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    .line 280
    .line 281
    .line 282
    invoke-direct {p2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :goto_0
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Landroid/app/AlertDialog;

    .line 290
    .line 291
    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    check-cast p2, Lcom/android/systemui/animation/DialogCuj;

    .line 296
    .line 297
    iput-object v0, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->currentDialog:Landroid/app/Dialog;

    .line 298
    .line 299
    invoke-virtual {p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->getExpandable()Lcom/android/systemui/animation/Expandable;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    if-eqz v2, :cond_4

    .line 304
    .line 305
    check-cast v2, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    .line 306
    .line 307
    sget-object v3, Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;->Companion:Lcom/android/systemui/animation/DialogLaunchAnimator$Controller$Companion;

    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    iget-object v2, v2, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;->$view:Landroid/view/View;

    .line 313
    .line 314
    invoke-static {v2, p2}, Lcom/android/systemui/animation/DialogLaunchAnimator$Controller$Companion;->fromView(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    goto :goto_1

    .line 319
    :cond_4
    move-object v2, v1

    .line 320
    :goto_1
    const/4 v3, 0x0

    .line 321
    if-eqz v2, :cond_5

    .line 322
    .line 323
    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogLaunchAnimator:Ldagger/Lazy;

    .line 324
    .line 325
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    check-cast p1, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 330
    .line 331
    sget-object p2, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 332
    .line 333
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/systemui/animation/DialogLaunchAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;Z)V

    .line 334
    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->getDialogShower()Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    if-eqz v2, :cond_6

    .line 342
    .line 343
    if-eqz p2, :cond_6

    .line 344
    .line 345
    invoke-virtual {p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->getDialogShower()Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    if-eqz p1, :cond_7

    .line 350
    .line 351
    check-cast p1, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;

    .line 352
    .line 353
    iget-object v2, p1, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 354
    .line 355
    iget-object p1, p1, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->animateFrom:Landroid/app/Dialog;

    .line 356
    .line 357
    sget-object v4, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 358
    .line 359
    invoke-virtual {v2, v0, p1, p2, v3}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/android/systemui/animation/DialogCuj;Z)V

    .line 360
    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_6
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 364
    .line 365
    .line 366
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->interactor:Ldagger/Lazy;

    .line 367
    .line 368
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 373
    .line 374
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 375
    .line 376
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 380
    .line 381
    return-object p0

    .line 382
    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 383
    .line 384
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 385
    .line 386
    .line 387
    throw p0
.end method
