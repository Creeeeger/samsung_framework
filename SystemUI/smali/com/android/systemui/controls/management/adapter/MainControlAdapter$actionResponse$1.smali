.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $controlId:Ljava/lang/String;

.field public final synthetic $response:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$controlId:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$response:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$controlId:Ljava/lang/String;

    .line 4
    .line 5
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$controlId:Ljava/lang/String;

    .line 12
    .line 13
    iget v3, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$response:I

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v5, "actionResponse: "

    .line 18
    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", controlId="

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", response="

    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "MainControlAdapter"

    .line 39
    .line 40
    invoke-static {v4, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$controlId:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 50
    .line 51
    if-eqz v0, :cond_a

    .line 52
    .line 53
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$response:I

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 64
    .line 65
    check-cast v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->actionsInProgress:Ljava/util/Set;

    .line 68
    .line 69
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    const/4 v3, 0x1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    move v1, v3

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move v1, v2

    .line 81
    :goto_0
    const/4 v4, 0x0

    .line 82
    if-eqz p0, :cond_9

    .line 83
    .line 84
    if-eq p0, v3, :cond_8

    .line 85
    .line 86
    const/4 v5, 0x2

    .line 87
    if-eq p0, v5, :cond_7

    .line 88
    .line 89
    iget-object v5, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 90
    .line 91
    const/4 v6, 0x3

    .line 92
    if-eq p0, v6, :cond_3

    .line 93
    .line 94
    const/4 v4, 0x4

    .line 95
    if-eq p0, v4, :cond_2

    .line 96
    .line 97
    const/4 v2, 0x5

    .line 98
    if-eq p0, v2, :cond_1

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_1
    sget-object p0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v3, v1, v5}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    iput-object p0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 112
    .line 113
    if-eqz p0, :cond_a

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :cond_2
    sget-object p0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v2, v1, v5}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    iput-object p0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 130
    .line 131
    if-eqz p0, :cond_a

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_3
    sget-object p0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    .line 144
    .line 145
    sget v1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->STYLE:I

    .line 146
    .line 147
    const-string v2, "Confirmation Dialog attempted but no last action is set. Will not show"

    .line 148
    .line 149
    const-string v3, "ControlsUiController"

    .line 150
    .line 151
    const/16 v6, 0x7e4

    .line 152
    .line 153
    iget-object v7, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    .line 154
    .line 155
    iget-object v8, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 156
    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    iget-object p0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    .line 160
    .line 161
    if-nez p0, :cond_4

    .line 162
    .line 163
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 169
    .line 170
    invoke-direct {v2, v8, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    const v4, 0x7f13039e

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    .line 194
    .line 195
    new-instance v1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$builder$1$1;

    .line 196
    .line 197
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$builder$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;)V

    .line 198
    .line 199
    .line 200
    const p0, 0x7f1303a1

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    .line 205
    .line 206
    new-instance p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$builder$1$2;

    .line 207
    .line 208
    invoke-direct {p0, v5}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$builder$1$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 209
    .line 210
    .line 211
    const v1, 0x7f1303a0

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {p0, v6}, Landroid/view/Window;->setType(I)V

    .line 226
    .line 227
    .line 228
    new-instance p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$1$2;

    .line 229
    .line 230
    invoke-direct {p0, v4}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$1$2;-><init>(Landroid/app/AlertDialog;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_5
    iget-object p0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    .line 238
    .line 239
    if-nez p0, :cond_6

    .line 240
    .line 241
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 246
    .line 247
    invoke-direct {v2, v8, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    const v4, 0x7f13039c

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 270
    .line 271
    .line 272
    new-instance v1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$1;

    .line 273
    .line 274
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;)V

    .line 275
    .line 276
    .line 277
    const p0, 0x104000a

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    .line 282
    .line 283
    new-instance p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$2;

    .line 284
    .line 285
    invoke-direct {p0, v5}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 286
    .line 287
    .line 288
    const/high16 v1, 0x1040000

    .line 289
    .line 290
    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-virtual {p0, v6}, Landroid/view/Window;->setType(I)V

    .line 302
    .line 303
    .line 304
    :goto_1
    iput-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 305
    .line 306
    if-eqz v4, :cond_a

    .line 307
    .line 308
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 309
    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_7
    iput-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    .line 315
    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_8
    iput-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_9
    iput-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 322
    .line 323
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    .line 324
    .line 325
    .line 326
    :cond_a
    :goto_2
    return-void
.end method
