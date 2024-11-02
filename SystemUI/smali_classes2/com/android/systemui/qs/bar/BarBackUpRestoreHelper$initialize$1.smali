.class public final Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;->this$0:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isValidDB()Z
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;->this$0:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0
.end method

.method public final onBackup(Z)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;->this$0:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const-string v4, "brightness_on_top"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    move v4, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v4, v1

    .line 21
    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v4, v2

    .line 27
    :goto_1
    if-eqz p1, :cond_8

    .line 28
    .line 29
    const-string/jumbo v5, "qspanel_media_quickcontrol_bar_available"

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x2

    .line 33
    invoke-virtual {v0, v6, v5}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_6

    .line 38
    .line 39
    const-string/jumbo v5, "qspanel_media_quickcontrol_bar_available_on_top"

    .line 40
    .line 41
    .line 42
    const/4 v7, -0x1

    .line 43
    invoke-virtual {v0, v7, v5}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_5

    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->context:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    .line 60
    .line 61
    if-ne v7, v6, :cond_2

    .line 62
    .line 63
    move v7, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move v7, v1

    .line 66
    :goto_2
    sget-boolean v8, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 67
    .line 68
    if-nez v8, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    if-eqz v7, :cond_4

    .line 72
    .line 73
    const v7, 0x7f05005f

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    move v7, v3

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v7, v1

    .line 85
    :goto_3
    if-eqz v7, :cond_7

    .line 86
    .line 87
    :cond_5
    move v6, v3

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    move v6, v1

    .line 90
    :cond_7
    :goto_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    goto :goto_5

    .line 95
    :cond_8
    move-object v5, v2

    .line 96
    :goto_5
    if-eqz p1, :cond_a

    .line 97
    .line 98
    const-string v6, "multi_sim_bar_show_on_qspanel"

    .line 99
    .line 100
    invoke-virtual {v0, v3, v6}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_9

    .line 105
    .line 106
    move v6, v3

    .line 107
    goto :goto_6

    .line 108
    :cond_9
    move v6, v1

    .line 109
    :goto_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    goto :goto_7

    .line 114
    :cond_a
    move-object v6, v2

    .line 115
    :goto_7
    if-eqz p1, :cond_c

    .line 116
    .line 117
    const-string v7, "hide_smart_view_large_tile_on_panel"

    .line 118
    .line 119
    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_b

    .line 124
    .line 125
    move v1, v3

    .line 126
    :cond_b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_8

    .line 131
    :cond_c
    move-object v0, v2

    .line 132
    :goto_8
    if-eqz p1, :cond_d

    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isExpandQsAtOnceEnabled()Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    :cond_d
    const-string p0, "TAG::qplayout_brightnessbar::"

    .line 145
    .line 146
    const-string p1, "::TAG::qplayout_mediadevices::"

    .line 147
    .line 148
    const-string v1, "::TAG::qplayout_multisim::"

    .line 149
    .line 150
    invoke-static {p0, v4, p1, v5, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string p1, "::TAG::hide_smart_view_large_tile_on_panel::"

    .line 155
    .line 156
    const-string v1, "::TAG::qplayout_expand_qs_at_once::"

    .line 157
    .line 158
    invoke-static {p0, v6, p1, v0, v1}, Lcom/android/systemui/appops/AppOpItem$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const-string p1, " getBackupData: "

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string v0, "BarBackUpRestoreManager"

    .line 175
    .line 176
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    return-object p0
.end method

.method public final onRestore(Ljava/lang/String;)V
    .locals 9

    .line 1
    sget v0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;->this$0:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "::"

    .line 9
    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x6

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {p1, v0, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, " setRestoreData: "

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "BarBackUpRestoreManager"

    .line 27
    .line 28
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .line 47
    const-string/jumbo v4, "setRestoreData: string: "

    .line 48
    .line 49
    .line 50
    invoke-static {v4, v3, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v3, 0x1

    .line 59
    if-gt p1, v3, :cond_1

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 74
    .line 75
    const-string v6, " is unknown"

    .line 76
    .line 77
    const-string/jumbo v7, "true"

    .line 78
    .line 79
    .line 80
    const-string v8, "null"

    .line 81
    .line 82
    sparse-switch v4, :sswitch_data_0

    .line 83
    .line 84
    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :sswitch_0
    const-string/jumbo v4, "qplayout_expand_qs_at_once"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    const-string/jumbo p0, "restored qplayout_expand_qs_at_once is null"

    .line 111
    .line 112
    .line 113
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_3
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string/jumbo v0, "swipe_directly_to_quick_setting"

    .line 131
    .line 132
    .line 133
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :sswitch_1
    const-string/jumbo p0, "qplayout_mediadevices"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-nez p0, :cond_4

    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    check-cast p0, Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_5

    .line 160
    .line 161
    const-string/jumbo p0, "restored qplayout_mediadevices is null"

    .line 162
    .line 163
    .line 164
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    goto/16 :goto_3

    .line 168
    .line 169
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    const-string/jumbo v0, "qspanel_media_quickcontrol_bar_available_on_top"

    .line 174
    .line 175
    .line 176
    const-string/jumbo v4, "qspanel_media_quickcontrol_bar_available"

    .line 177
    .line 178
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :pswitch_0
    const-string p1, "2"

    .line 184
    .line 185
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_8

    .line 190
    .line 191
    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v3, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_3

    .line 198
    .line 199
    :pswitch_1
    const-string p1, "1"

    .line 200
    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-nez p1, :cond_6

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_6
    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_3

    .line 215
    .line 216
    :pswitch_2
    const-string p1, "0"

    .line 217
    .line 218
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-nez p1, :cond_7

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_7
    invoke-virtual {v5, v2, v4}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_3

    .line 232
    .line 233
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string/jumbo v0, "updateMediaDevices: "

    .line 236
    .line 237
    .line 238
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :sswitch_2
    const-string/jumbo p0, "qplayout_brightnessbar"

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    if-nez p0, :cond_9

    .line 264
    .line 265
    goto/16 :goto_2

    .line 266
    .line 267
    :cond_9
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    check-cast p0, Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_a

    .line 278
    .line 279
    const-string/jumbo p0, "restored qplayout_brightnessbar is null"

    .line 280
    .line 281
    .line 282
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    goto/16 :goto_3

    .line 286
    .line 287
    :cond_a
    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    const-string p1, "brightness_on_top"

    .line 292
    .line 293
    invoke-virtual {v5, p0, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :sswitch_3
    const-string/jumbo p0, "qplayout_multisim"

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result p0

    .line 305
    if-nez p0, :cond_b

    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_b
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    check-cast p0, Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_c

    .line 319
    .line 320
    const-string/jumbo p0, "restored qplayout_multisim is null"

    .line 321
    .line 322
    .line 323
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_c
    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    const-string p1, "multi_sim_bar_show_on_qspanel"

    .line 332
    .line 333
    invoke-virtual {v5, p0, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :sswitch_4
    const-string p0, "hide_smart_view_large_tile_on_panel"

    .line 338
    .line 339
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-nez p1, :cond_d

    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_d
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    check-cast p1, Ljava/lang/String;

    .line 351
    .line 352
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_e

    .line 357
    .line 358
    const-string/jumbo p0, "restored hide_smart_view_large_tile_on_panel is null"

    .line 359
    .line 360
    .line 361
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_e
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_HIDE_TILE_FROM_BAR:Z

    .line 366
    .line 367
    if-nez v0, :cond_f

    .line 368
    .line 369
    const-string/jumbo p0, "restored hide_smart_view_large_tile_on_panel, device has QpRune.QUICK_HIDE_TILE_FROM_BAR is false. value:"

    .line 370
    .line 371
    .line 372
    invoke-static {p0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_f
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    xor-int/2addr p1, v3

    .line 381
    invoke-virtual {v5, p1, p0}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_3

    .line 385
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    const-string/jumbo v0, "setRestoreData: "

    .line 392
    .line 393
    .line 394
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x667fac36 -> :sswitch_4
        -0x3b7a198c -> :sswitch_3
        -0x20f39994 -> :sswitch_2
        -0x4ac2111 -> :sswitch_1
        0x24aaa7ff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
