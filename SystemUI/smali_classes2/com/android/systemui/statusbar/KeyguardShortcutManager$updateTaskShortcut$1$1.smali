.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $taskName:Ljava/lang/String;

.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/KeyguardShortcutManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$taskName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v0, "updateTaskShortcut : "

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "KeyguardShortcutManager"

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 12
    .line 13
    const-string p1, " is disabled from settings"

    .line 14
    .line 15
    invoke-static {v0, p0, p1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 23
    .line 24
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 25
    .line 26
    aget-object v5, v3, v4

    .line 27
    .line 28
    iget-object v5, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 29
    .line 30
    aget-object v5, v5, v4

    .line 31
    .line 32
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getKeyguardBottomAreaShortcutTask(Ljava/lang/String;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    aput-object p1, v3, v4

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 46
    .line 47
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 48
    .line 49
    aget-object p1, p1, v3

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-interface {p1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object p1, v3

    .line 60
    :goto_0
    const-string/jumbo v4, "updateTaskShortcut: key =  "

    .line 61
    .line 62
    .line 63
    invoke-static {v4, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 69
    .line 70
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 71
    .line 72
    aget-object p1, p1, v4

    .line 73
    .line 74
    if-eqz p1, :cond_9

    .line 75
    .line 76
    sget-object v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    .line 77
    .line 78
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 87
    .line 88
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isDndCallbackAdded:Z

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$taskName:Ljava/lang/String;

    .line 91
    .line 92
    const-string v4, "Dnd"

    .line 93
    .line 94
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    const/4 v5, 0x1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 104
    .line 105
    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 106
    .line 107
    aget-object p1, p1, v6

    .line 108
    .line 109
    check-cast p1, Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;

    .line 110
    .line 111
    iget-object v6, p1, Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;->callback:Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig$callback$1;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/quickaffordance/DoNotDisturbQuickAffordanceConfig;->controller:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 114
    .line 115
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 116
    .line 117
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 121
    .line 122
    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 123
    .line 124
    iput v6, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->dndShortcutIndex:I

    .line 125
    .line 126
    iput-boolean v5, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isDndCallbackAdded:Z

    .line 127
    .line 128
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$taskName:Ljava/lang/String;

    .line 129
    .line 130
    const-string v6, "Flashlight"

    .line 131
    .line 132
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 139
    .line 140
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIsFlashlightSupported:Z

    .line 141
    .line 142
    if-nez p1, :cond_4

    .line 143
    .line 144
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 145
    .line 146
    const-string p1, " Shortcut set to Flashlight but Flashlight is not supported for the device"

    .line 147
    .line 148
    invoke-static {v0, p0, p1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_4

    .line 152
    .line 153
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 156
    .line 157
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 158
    .line 159
    aget-object p1, p1, v0

    .line 160
    .line 161
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getPickerIconResourceId()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-nez p1, :cond_6

    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$taskName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_5

    .line 177
    .line 178
    const p1, 0x7f080798

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$taskName:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_6

    .line 189
    .line 190
    const p1, 0x7f0808f7

    .line 191
    .line 192
    .line 193
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 196
    .line 197
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 198
    .line 199
    aget-object v0, v0, v1

    .line 200
    .line 201
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mNoUnlockNeeded:Z

    .line 205
    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 207
    .line 208
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 209
    .line 210
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 211
    .line 212
    aget-object v0, v0, v1

    .line 213
    .line 214
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 220
    .line 221
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskTypeEnabled(I)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 228
    .line 229
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 230
    .line 231
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 232
    .line 233
    aget-object v1, v1, v4

    .line 234
    .line 235
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 239
    .line 240
    iget-object v6, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 241
    .line 242
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-virtual {v4, v3, v6, v5, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getBlendingFgIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 255
    .line 256
    iget v7, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIconSize:I

    .line 257
    .line 258
    invoke-virtual {v4, v6, v7, v7}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 263
    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 265
    .line 266
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 267
    .line 268
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 269
    .line 270
    aget-object v1, v1, v4

    .line 271
    .line 272
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 276
    .line 277
    iget-object v6, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 278
    .line 279
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getFgPanelIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    iput-object p1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    .line 292
    .line 293
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 294
    .line 295
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 296
    .line 297
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isPanelIconTransitionNeeded(I)Z

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    if-eqz p1, :cond_8

    .line 302
    .line 303
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 304
    .line 305
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 306
    .line 307
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 308
    .line 309
    aget-object p1, p1, v1

    .line 310
    .line 311
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 315
    .line 316
    iget-object v4, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 317
    .line 318
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    if-eqz v0, :cond_7

    .line 323
    .line 324
    const v0, 0x7f080799

    .line 325
    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_7
    const v0, 0x7f08079a

    .line 329
    .line 330
    .line 331
    :goto_2
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getFgPanelIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iput-object v0, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mPanelTransitDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    .line 341
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 342
    .line 343
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 344
    .line 345
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 346
    .line 347
    aget-object p1, p1, v0

    .line 348
    .line 349
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    iput-object v3, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 353
    .line 354
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 355
    .line 356
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 357
    .line 358
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 359
    .line 360
    aget-object p1, p1, v0

    .line 361
    .line 362
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 366
    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$taskName:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isDefaultShortcutIcon(Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 373
    .line 374
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 375
    .line 376
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 377
    .line 378
    aget-object p1, p1, v0

    .line 379
    .line 380
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 384
    .line 385
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 386
    .line 387
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 388
    .line 389
    aget-object v0, v0, v1

    .line 390
    .line 391
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-interface {v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->pickerName()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    iput-object v0, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 399
    .line 400
    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 401
    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 403
    .line 404
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 405
    .line 406
    aget-object v0, v0, p1

    .line 407
    .line 408
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 412
    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    const-string/jumbo v3, "updateTaskShortcut th : "

    .line 416
    .line 417
    .line 418
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string p1, " class : "

    .line 425
    .line 426
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 440
    .line 441
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getQuickAffordanceConfigList()Ljava/util/List;

    .line 442
    .line 443
    .line 444
    move v1, v5

    .line 445
    goto :goto_4

    .line 446
    :cond_9
    :goto_3
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    .line 447
    .line 448
    const-string p1, " is invalid task name"

    .line 449
    .line 450
    invoke-static {v0, p0, p1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    :goto_4
    return v1
.end method
