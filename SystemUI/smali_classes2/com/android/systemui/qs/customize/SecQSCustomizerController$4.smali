.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 1
    const-string p1, "SecQSCustomizerController"

    .line 2
    .line 3
    const-string p2, "RESET"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 9
    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v0, "reset =  "

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v1, "SecQSCustomizerTileAdapter"

    .line 30
    .line 31
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance p2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v4, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getSpec()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iget-boolean v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsTopEdit:Z

    .line 56
    .line 57
    iget-object v7, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 58
    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQQSTileHost;->getQQSDefaultTileList()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v7}, Lcom/android/systemui/qs/QSTileHost;->getDefaultTileList()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v8, "cscTileList: "

    .line 75
    .line 76
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    .line 104
    .line 105
    const-string v1, ","

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    array-length v1, v0

    .line 112
    const/4 v6, 0x0

    .line 113
    move v8, v6

    .line 114
    :goto_1
    if-ge v8, v1, :cond_6

    .line 115
    .line 116
    aget-object v9, v0, v8

    .line 117
    .line 118
    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-eqz v10, :cond_1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_1
    const-string v10, "custom("

    .line 130
    .line 131
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_2

    .line 136
    .line 137
    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    :cond_2
    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-nez v10, :cond_3

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_3
    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    if-eqz v11, :cond_5

    .line 161
    .line 162
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    check-cast v11, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 167
    .line 168
    iget-object v12, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    if-eqz v12, :cond_4

    .line 175
    .line 176
    const/4 v10, 0x1

    .line 177
    iput-boolean v10, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 178
    .line 179
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_6
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_7

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTiles(Ljava/util/ArrayList;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_8

    .line 210
    .line 211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 216
    .line 217
    iput-boolean v6, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTiles(Ljava/util/ArrayList;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, v7, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iget-object p2, v7, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 230
    .line 231
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 232
    .line 233
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    const-string/jumbo v0, "sysui_removed_qs_tiles"

    .line 238
    .line 239
    .line 240
    const-string v1, ""

    .line 241
    .line 242
    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 243
    .line 244
    .line 245
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 246
    .line 247
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 248
    .line 249
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->isShown()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-nez p1, :cond_9

    .line 256
    .line 257
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->save()V

    .line 260
    .line 261
    .line 262
    :cond_9
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 263
    .line 264
    const-string p1, "QPPE1021"

    .line 265
    .line 266
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-void
.end method
