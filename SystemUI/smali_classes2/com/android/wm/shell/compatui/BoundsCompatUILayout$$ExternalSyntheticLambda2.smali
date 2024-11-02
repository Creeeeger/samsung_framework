.class public final synthetic Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "BoundsCompatUILayout"

    .line 6
    .line 7
    const-string v4, "onClick v="

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 15
    .line 16
    sget-boolean v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 37
    .line 38
    const/16 v0, 0x30

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->setBoundsCompatAlignment(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->refreshButtonVisibility(Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 48
    .line 49
    sget-boolean v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 70
    .line 71
    const/4 v0, 0x5

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->setBoundsCompatAlignment(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->refreshButtonVisibility(Z)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 80
    .line 81
    sget-boolean v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 102
    .line 103
    const/4 v0, 0x3

    .line 104
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->setBoundsCompatAlignment(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->refreshButtonVisibility(Z)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 112
    .line 113
    sget-boolean v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 134
    .line 135
    const/16 v0, 0x1f

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->setOrientationControlPolicy(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->refreshButtonVisibility(Z)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :pswitch_4
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 145
    .line 146
    sget-boolean v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->setOrientationControlPolicy(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->refreshButtonVisibility(Z)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_5
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 176
    .line 177
    sget-boolean v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 198
    .line 199
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 200
    .line 201
    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 204
    .line 205
    check-cast p0, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onSizeCompatRestartButtonClicked(I)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_6
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 212
    .line 213
    sget-boolean v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    new-instance v0, Landroid/content/Intent;

    .line 219
    .line 220
    const-string v1, "com.samsung.settings.FULL_SCREEN_APPS_SETTINGS"

    .line 221
    .line 222
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const v1, 0x10008000

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    new-instance v1, Landroid/os/Bundle;

    .line 232
    .line 233
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 234
    .line 235
    .line 236
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 237
    .line 238
    iget-object v2, v2, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 239
    .line 240
    iget-object v2, v2, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 241
    .line 242
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    const-string v3, ":settings:fragment_args_key"

    .line 247
    .line 248
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v2, ":settings:show_fragment_args"

    .line 252
    .line 253
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    new-instance v1, Landroid/os/UserHandle;

    .line 261
    .line 262
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 265
    .line 266
    iget p0, p0, Landroid/app/TaskInfo;->userId:I

    .line 267
    .line 268
    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 276
    .line 277
    sget-boolean v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 278
    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 298
    .line 299
    const/16 v0, 0x50

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->setBoundsCompatAlignment(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->refreshButtonVisibility(Z)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
