.class public final Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;
.implements Lcom/android/systemui/statusbar/connectivity/AccessPointController$WifiApBleStateChangeCallback;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

.field public mAvailable:Landroid/view/ViewGroup;

.field public mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mConnectedNetworksTitle:Landroid/view/View;

.field public mConntected:Landroid/view/ViewGroup;

.field public mHotspotLive:Landroid/view/ViewGroup;

.field public mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mItems:Lcom/android/systemui/qs/QSDetailItems;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "createDetailView convertView="

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    move v5, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v5, v3

    .line 21
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v5, " State : "

    .line 25
    .line 26
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 30
    .line 31
    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 32
    .line 33
    iget-boolean v5, v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 34
    .line 35
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v5, " enabled : "

    .line 39
    .line 40
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 44
    .line 45
    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 46
    .line 47
    iget-boolean v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 48
    .line 49
    invoke-static {v2, v5, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 54
    .line 55
    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsHavingConvertView:Z

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    move-object p2, v1

    .line 60
    :cond_1
    if-nez p2, :cond_2

    .line 61
    .line 62
    iget-object p2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const v1, 0x7f0d02d1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const p3, 0x7f0a02d8

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    check-cast p3, Landroid/view/ViewGroup;

    .line 83
    .line 84
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    .line 85
    .line 86
    const v1, 0x7f0a0291

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    .line 94
    .line 95
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    .line 96
    .line 97
    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    .line 104
    .line 105
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 109
    .line 110
    const-string v1, "Wifi"

    .line 111
    .line 112
    invoke-virtual {p3, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const p3, 0x7f0a049e

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    check-cast p3, Landroid/view/ViewGroup;

    .line 123
    .line 124
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    .line 125
    .line 126
    const v1, 0x7f0a049f

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    check-cast p3, Landroid/widget/TextView;

    .line 134
    .line 135
    const v1, 0x7f130f98

    .line 136
    .line 137
    .line 138
    invoke-static {v1}, Lcom/android/systemui/CvOperator;->getHotspotStringID(I)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 143
    .line 144
    .line 145
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    .line 146
    .line 147
    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 152
    .line 153
    const-string v1, "Hotspot.Available"

    .line 154
    .line 155
    invoke-virtual {p3, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    .line 159
    .line 160
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 161
    .line 162
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    const p3, 0x7f0a0111

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    check-cast p3, Landroid/view/ViewGroup;

    .line 173
    .line 174
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    .line 175
    .line 176
    const v1, 0x7f0a0113

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    check-cast p3, Landroid/widget/TextView;

    .line 184
    .line 185
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    .line 186
    .line 187
    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 192
    .line 193
    const-string p3, "Wifi.Available"

    .line 194
    .line 195
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    .line 199
    .line 200
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 201
    .line 202
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    iput-boolean v4, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsHavingConvertView:Z

    .line 206
    .line 207
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 208
    .line 209
    iget-object p3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 210
    .line 211
    check-cast p3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 212
    .line 213
    iget-boolean p3, p3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 214
    .line 215
    if-eqz p3, :cond_4

    .line 216
    .line 217
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailItems;->getItemCount()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-gtz v1, :cond_3

    .line 224
    .line 225
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z

    .line 226
    .line 227
    if-eqz v1, :cond_4

    .line 228
    .line 229
    :cond_3
    move v3, v4

    .line 230
    :cond_4
    const-string v1, "isConnectedVisible = "

    .line 231
    .line 232
    const-string v2, ",getItemCount() = "

    .line 233
    .line 234
    invoke-static {v1, v3, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSDetailItems;->getItemCount()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v2, ",mWifiConnected = "

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 262
    .line 263
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    if-eqz p3, :cond_6

    .line 267
    .line 268
    if-eqz v3, :cond_5

    .line 269
    .line 270
    const p3, 0x7f130e16

    .line 271
    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_5
    const p3, 0x7f130e17

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_6
    const p3, 0x7f130e15

    .line 279
    .line 280
    .line 281
    :goto_1
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 285
    .line 286
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 287
    .line 288
    .line 289
    iget-object p1, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 290
    .line 291
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 292
    .line 293
    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 294
    .line 295
    if-eqz p1, :cond_7

    .line 296
    .line 297
    invoke-virtual {p1, v4}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    .line 298
    .line 299
    .line 300
    :cond_7
    const-string p1, "adding wififoreground"

    .line 301
    .line 302
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 306
    .line 307
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 308
    .line 309
    .line 310
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 311
    .line 312
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 313
    .line 314
    .line 315
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 316
    .line 317
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 318
    .line 319
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 320
    .line 321
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    .line 322
    .line 323
    .line 324
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    .line 325
    .line 326
    const/16 p3, 0x8

    .line 327
    .line 328
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    .line 332
    .line 333
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 334
    .line 335
    .line 336
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 337
    .line 338
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 339
    .line 340
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 341
    .line 342
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 343
    .line 344
    .line 345
    return-object p2
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x98

    .line 2
    .line 3
    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x7f130dfc

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getToggleEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final onAccessPointsChanged(Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Lcom/android/wifitrackerlib/WifiEntry;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [Lcom/android/wifitrackerlib/WifiEntry;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 14
    .line 15
    array-length v0, p1

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    const/4 v4, -0x1

    .line 20
    const/4 v5, 0x1

    .line 21
    if-ge v2, v0, :cond_2

    .line 22
    .line 23
    aget-object v6, p1, v2

    .line 24
    .line 25
    sget-object v7, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    iget v6, v6, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 30
    .line 31
    if-eq v6, v4, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v5, v1

    .line 35
    :goto_1
    if-eqz v5, :cond_1

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 43
    .line 44
    array-length v0, p1

    .line 45
    if-eq v3, v0, :cond_5

    .line 46
    .line 47
    new-array v0, v3, [Lcom/android/wifitrackerlib/WifiEntry;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 50
    .line 51
    array-length v0, p1

    .line 52
    move v2, v1

    .line 53
    move v3, v2

    .line 54
    :goto_2
    if-ge v2, v0, :cond_5

    .line 55
    .line 56
    aget-object v6, p1, v2

    .line 57
    .line 58
    sget-object v7, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 59
    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    iget v7, v6, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 63
    .line 64
    if-eq v7, v4, :cond_3

    .line 65
    .line 66
    move v7, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move v7, v1

    .line 69
    :goto_3
    if-eqz v7, :cond_4

    .line 70
    .line 71
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 72
    .line 73
    add-int/lit8 v8, v3, 0x1

    .line 74
    .line 75
    aput-object v6, v7, v3

    .line 76
    .line 77
    move v3, v8

    .line 78
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    goto/16 :goto_c

    .line 86
    .line 87
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 88
    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    array-length p1, p1

    .line 92
    if-gtz p1, :cond_8

    .line 93
    .line 94
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 95
    .line 96
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 99
    .line 100
    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 101
    .line 102
    if-nez v0, :cond_9

    .line 103
    .line 104
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_9
    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    .line 111
    .line 112
    .line 113
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 118
    .line 119
    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 120
    .line 121
    const/16 v0, 0x8

    .line 122
    .line 123
    if-nez p1, :cond_a

    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 132
    .line 133
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    .line 142
    .line 143
    const v2, 0x7f0a0112

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 156
    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_c

    .line 164
    .line 165
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    new-instance v2, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 176
    .line 177
    if-eqz v3, :cond_1a

    .line 178
    .line 179
    move v3, v1

    .line 180
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 181
    .line 182
    array-length v6, v4

    .line 183
    if-ge v3, v6, :cond_1a

    .line 184
    .line 185
    aget-object v4, v4, v3

    .line 186
    .line 187
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 188
    .line 189
    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 190
    .line 191
    .line 192
    iput-object v4, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 193
    .line 194
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 195
    .line 196
    iget-object v7, v7, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 197
    .line 198
    check-cast v7, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 199
    .line 200
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    iget v7, v4, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 204
    .line 205
    if-gez v7, :cond_b

    .line 206
    .line 207
    move v7, v1

    .line 208
    :cond_b
    const/4 v8, 0x4

    .line 209
    if-le v7, v8, :cond_c

    .line 210
    .line 211
    move v7, v8

    .line 212
    :cond_c
    iget-object v8, v4, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    iget-object v8, v4, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 218
    .line 219
    if-eqz v8, :cond_d

    .line 220
    .line 221
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    invoke-virtual {v4, v9, v8}, Lcom/android/wifitrackerlib/WifiEntry;->checkWifi6EStandard(II)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    goto :goto_6

    .line 234
    :cond_d
    iget-object v8, v4, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    .line 235
    .line 236
    iget-boolean v8, v8, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    .line 237
    .line 238
    :goto_6
    if-eqz v8, :cond_f

    .line 239
    .line 240
    invoke-static {v4}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-nez v8, :cond_e

    .line 245
    .line 246
    sget-object v8, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    .line 247
    .line 248
    aget-object v7, v8, v7

    .line 249
    .line 250
    aget v7, v7, v5

    .line 251
    .line 252
    goto/16 :goto_a

    .line 253
    .line 254
    :cond_e
    sget-object v8, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    .line 255
    .line 256
    aget-object v7, v8, v7

    .line 257
    .line 258
    aget v7, v7, v1

    .line 259
    .line 260
    goto/16 :goto_a

    .line 261
    .line 262
    :cond_f
    iget-object v8, v4, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 263
    .line 264
    const/4 v9, 0x6

    .line 265
    if-eqz v8, :cond_10

    .line 266
    .line 267
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    if-ne v8, v9, :cond_11

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_10
    iget-object v8, v4, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    .line 275
    .line 276
    iget v8, v8, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    .line 277
    .line 278
    if-lt v8, v9, :cond_11

    .line 279
    .line 280
    :goto_7
    move v8, v5

    .line 281
    goto :goto_8

    .line 282
    :cond_11
    move v8, v1

    .line 283
    :goto_8
    if-eqz v8, :cond_13

    .line 284
    .line 285
    invoke-static {v4}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-nez v8, :cond_12

    .line 290
    .line 291
    sget-object v8, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    .line 292
    .line 293
    aget-object v7, v8, v7

    .line 294
    .line 295
    aget v7, v7, v5

    .line 296
    .line 297
    goto :goto_a

    .line 298
    :cond_12
    sget-object v8, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    .line 299
    .line 300
    aget-object v7, v8, v7

    .line 301
    .line 302
    aget v7, v7, v1

    .line 303
    .line 304
    goto :goto_a

    .line 305
    :cond_13
    instance-of v8, v4, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 306
    .line 307
    if-eqz v8, :cond_17

    .line 308
    .line 309
    move-object v8, v4

    .line 310
    check-cast v8, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 311
    .line 312
    monitor-enter v8

    .line 313
    :try_start_0
    iget-object v9, v8, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    .line 314
    .line 315
    iget-boolean v9, v9, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->hasVHTVSICapabilities:Z

    .line 316
    .line 317
    if-eqz v9, :cond_15

    .line 318
    .line 319
    iget-object v9, v8, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 320
    .line 321
    if-eqz v9, :cond_15

    .line 322
    .line 323
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    if-nez v9, :cond_14

    .line 332
    .line 333
    iget-object v9, v8, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    .line 334
    .line 335
    invoke-static {v9}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    invoke-virtual {v8, v9}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Landroid/net/wifi/ScanResult;)V

    .line 340
    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_14
    const-string v9, "StandardWifiEntryStandardWifiEntry:"

    .line 344
    .line 345
    const-string v10, "connected network\'s WifiInfo.getBSSID is null"

    .line 346
    .line 347
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    :cond_15
    :goto_9
    iget-object v9, v8, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    .line 351
    .line 352
    iget-boolean v9, v9, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->hasVHTVSICapabilities:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .line 354
    monitor-exit v8

    .line 355
    if-eqz v9, :cond_17

    .line 356
    .line 357
    invoke-static {v4}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    if-nez v8, :cond_16

    .line 362
    .line 363
    sget-object v8, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_GIGA:[[I

    .line 364
    .line 365
    aget-object v7, v8, v7

    .line 366
    .line 367
    aget v7, v7, v5

    .line 368
    .line 369
    goto :goto_a

    .line 370
    :cond_16
    sget-object v8, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_GIGA:[[I

    .line 371
    .line 372
    aget-object v7, v8, v7

    .line 373
    .line 374
    aget v7, v7, v1

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :catchall_0
    move-exception p0

    .line 378
    monitor-exit v8

    .line 379
    throw p0

    .line 380
    :cond_17
    invoke-static {v4}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    .line 381
    .line 382
    .line 383
    move-result v8

    .line 384
    if-nez v8, :cond_18

    .line 385
    .line 386
    sget-object v8, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI:[[I

    .line 387
    .line 388
    aget-object v7, v8, v7

    .line 389
    .line 390
    aget v7, v7, v5

    .line 391
    .line 392
    goto :goto_a

    .line 393
    :cond_18
    sget-object v8, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI:[[I

    .line 394
    .line 395
    aget-object v7, v8, v7

    .line 396
    .line 397
    aget v7, v7, v1

    .line 398
    .line 399
    :goto_a
    iput v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 400
    .line 401
    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    iput-object v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 406
    .line 407
    invoke-virtual {v4, v5}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    iput-object v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 412
    .line 413
    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    const/4 v7, 0x2

    .line 418
    if-ne v4, v7, :cond_19

    .line 419
    .line 420
    iput-boolean v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    .line 421
    .line 422
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    goto :goto_b

    .line 426
    :cond_19
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 430
    .line 431
    goto/16 :goto_5

    .line 432
    .line 433
    :cond_1a
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems()V

    .line 434
    .line 435
    .line 436
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 437
    .line 438
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    new-array v4, v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 443
    .line 444
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    check-cast v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 449
    .line 450
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 451
    .line 452
    .line 453
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    new-array v4, v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 460
    .line 461
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    check-cast v2, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 466
    .line 467
    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    if-nez p1, :cond_1b

    .line 475
    .line 476
    move v1, v0

    .line 477
    :cond_1b
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    .line 478
    .line 479
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 480
    .line 481
    .line 482
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    .line 483
    .line 484
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 485
    .line 486
    .line 487
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 488
    .line 489
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;

    .line 490
    .line 491
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 495
    .line 496
    .line 497
    :goto_c
    return-void
.end method

.method public final onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 13

    .line 1
    if-eqz p1, :cond_d

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    instance-of v1, v0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 13
    .line 14
    if-eqz v1, :cond_a

    .line 15
    .line 16
    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_9

    .line 23
    .line 24
    iget-object p1, v3, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 25
    .line 26
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-boolean v1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->DEBUG:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v4, "AccessPointController"

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v5, "connect networkId="

    .line 46
    .line 47
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 55
    .line 56
    invoke-static {v1, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v5, "connect to unsaved network "

    .line 63
    .line 64
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    .line 82
    .line 83
    iget-boolean v1, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    .line 84
    .line 85
    const/4 v4, 0x1

    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    iget-object v1, p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string/jumbo v5, "sem_wifi_allowed_oauth_provider"

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    const-string v5, "[cisco]"

    .line 106
    .line 107
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    move v1, v4

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    move v1, v2

    .line 116
    :goto_1
    if-nez v1, :cond_4

    .line 117
    .line 118
    new-instance v0, Landroid/content/Intent;

    .line 119
    .line 120
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 121
    .line 122
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string/jumbo v1, "wifi_start_connect_ssid"

    .line 126
    .line 127
    .line 128
    const-string/jumbo v2, "wifi_start_openroaming"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    const/high16 v1, 0x10000000

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_6

    .line 150
    .line 151
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;

    .line 156
    .line 157
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;->onSettingsActivityTriggered(Landroid/content/Intent;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    iget-object v5, p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mConnectCallback:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$2;

    .line 166
    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    invoke-virtual {v0, v5}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    invoke-static {v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_7

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->startSettings(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    move v2, v4

    .line 183
    goto :goto_3

    .line 184
    :cond_7
    invoke-virtual {v0, v5}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    .line 185
    .line 186
    .line 187
    :goto_3
    if-eqz v2, :cond_8

    .line 188
    .line 189
    iget-object p0, v3, Lcom/android/systemui/qs/tiles/WifiTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 190
    .line 191
    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->forceCollapsePanels()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_4

    .line 195
    .line 196
    :cond_8
    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;

    .line 197
    .line 198
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    .line 199
    .line 200
    .line 201
    const-wide/16 v0, 0xfa

    .line 202
    .line 203
    iget-object p0, v3, Lcom/android/systemui/qs/tiles/WifiTile;->mHandler:Landroid/os/Handler;

    .line 204
    .line 205
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    .line 207
    .line 208
    goto/16 :goto_4

    .line 209
    .line 210
    :cond_9
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    const/4 p1, 0x2

    .line 215
    if-ne p0, p1, :cond_d

    .line 216
    .line 217
    iget-object p0, v3, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 218
    .line 219
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->startSettings(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_4

    .line 225
    .line 226
    :cond_a
    instance-of v1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 227
    .line 228
    if-eqz v1, :cond_d

    .line 229
    .line 230
    iget-boolean p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    .line 231
    .line 232
    if-nez p1, :cond_d

    .line 233
    .line 234
    check-cast v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 235
    .line 236
    iget-object p1, v3, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 237
    .line 238
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget v1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    .line 244
    .line 245
    const/16 v4, 0xf

    .line 246
    .line 247
    if-le v1, v4, :cond_b

    .line 248
    .line 249
    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 250
    .line 251
    iget-object v5, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    .line 252
    .line 253
    iget v6, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    .line 254
    .line 255
    iget v7, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    .line 256
    .line 257
    iget v8, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 258
    .line 259
    iget-object v9, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 260
    .line 261
    iget-object v10, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    .line 262
    .line 263
    iget v11, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    .line 264
    .line 265
    iget-boolean v12, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    .line 266
    .line 267
    iget-object v4, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 268
    .line 269
    invoke-virtual/range {v4 .. v12}, Lcom/samsung/android/wifi/SemWifiManager;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string/jumbo v1, "triggerWifiApBleConnection() : bleDevice -> "

    .line 276
    .line 277
    .line 278
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v1, " mBattery: "

    .line 287
    .line 288
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget v1, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    .line 292
    .line 293
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, " ret: "

    .line 297
    .line 298
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    const-string v1, "AccessPointController.AutoHotspot"

    .line 309
    .line 310
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    iget-object p1, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 314
    .line 315
    const-string v1, ".AutoHotspot"

    .line 316
    .line 317
    if-eqz v2, :cond_c

    .line 318
    .line 319
    invoke-static {p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v2, "onDetailItemClick() - Triggering updateHotspotItems for connecting with apBLE.mWifiMac-> "

    .line 326
    .line 327
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems()V

    .line 343
    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_c
    invoke-static {p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v2, "onDetailItemClick() - Triggering updateHotspotItems for connection time out with apBLE.mWifiMac-> "

    .line 353
    .line 354
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems()V

    .line 370
    .line 371
    .line 372
    :cond_d
    :goto_4
    return-void
.end method

.method public final onSettingsActivityTriggered(Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setItemsVisible(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, " setItemsVisible : "

    .line 8
    .line 9
    invoke-static {v1, p1, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 29
    .line 30
    new-instance v1, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$2;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final setToggleState(Z)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string/jumbo v2, "setToggleState "

    .line 12
    .line 13
    .line 14
    invoke-static {v2, p1, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const/16 v2, 0x99

    .line 20
    .line 21
    invoke-static {v0, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 22
    .line 23
    .line 24
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 31
    .line 32
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiTileBlocked()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_7

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x1

    .line 43
    :try_start_0
    iget-object v5, v1, Lcom/android/systemui/qs/tiles/WifiTile;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-interface {v5, v3, v6}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowWifi(Landroid/content/ComponentName;I)Z

    .line 52
    .line 53
    .line 54
    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    if-nez v5, :cond_1

    .line 56
    .line 57
    move v5, v4

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    :cond_1
    move v5, v0

    .line 60
    :goto_0
    if-eqz v5, :cond_2

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_2
    iget-object v5, v1, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 65
    .line 66
    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 67
    .line 68
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 69
    .line 70
    if-eqz v5, :cond_3

    .line 71
    .line 72
    iget-object v5, v1, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 73
    .line 74
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_3

    .line 79
    .line 80
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_3

    .line 89
    .line 90
    iget-object v5, v1, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_3

    .line 97
    .line 98
    iget-object v5, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 99
    .line 100
    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 101
    .line 102
    iget-boolean v5, v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 103
    .line 104
    if-ne v5, v4, :cond_3

    .line 105
    .line 106
    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda1;

    .line 107
    .line 108
    invoke-direct {p1, p0, v4}, Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 112
    .line 113
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    iget-object v4, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 129
    .line 130
    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 131
    .line 132
    iget-object v5, v1, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 135
    .line 136
    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    sget-object v3, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 140
    .line 141
    sget-object v3, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 142
    .line 143
    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    sget-boolean v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 147
    .line 148
    if-eqz v3, :cond_5

    .line 149
    .line 150
    const-string/jumbo v3, "setToggleState fireToggleStateChanged"

    .line 151
    .line 152
    .line 153
    invoke-static {v3, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    iget-object v4, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 163
    .line 164
    .line 165
    iget-object v3, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    invoke-static {v3, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 171
    .line 172
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    new-instance v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;

    .line 178
    .line 179
    invoke-direct {v2, v1, p1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Z)V

    .line 180
    .line 181
    .line 182
    new-array v0, v0, [Ljava/lang/Void;

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 188
    .line 189
    if-eqz p1, :cond_6

    .line 190
    .line 191
    const p1, 0x7f130e17

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_6
    const p1, 0x7f130e15

    .line 196
    .line 197
    .line 198
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public final updateHotspotItems()V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_17

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 22
    .line 23
    check-cast v3, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 26
    .line 27
    const-string v4, "getAutoHotspotEntries() : mBleAccessPoints "

    .line 28
    .line 29
    iget-object v5, v3, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLockAutoHotspot:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v5

    .line 32
    :try_start_0
    const-string v6, "WifiPickerTracker"

    .line 33
    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, v3, Lcom/android/wifitrackerlib/WifiPickerTracker;->mAutoHotspotEntries:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/android/wifitrackerlib/WifiPickerTracker;->mAutoHotspotEntries:Ljava/util/List;

    .line 54
    .line 55
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_16

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 74
    .line 75
    new-instance v5, Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 76
    .line 77
    invoke-direct {v5}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v4, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 83
    .line 84
    iget-object v6, v6, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 85
    .line 86
    check-cast v6, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget v6, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    .line 92
    .line 93
    const/16 v7, -0x3c

    .line 94
    .line 95
    const/4 v8, 0x2

    .line 96
    const/4 v9, 0x3

    .line 97
    if-lt v6, v7, :cond_2

    .line 98
    .line 99
    const/4 v6, 0x4

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const/16 v7, -0x46

    .line 102
    .line 103
    if-lt v6, v7, :cond_3

    .line 104
    .line 105
    move v6, v9

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    const/16 v7, -0x50

    .line 108
    .line 109
    if-lt v6, v7, :cond_4

    .line 110
    .line 111
    move v6, v8

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const/16 v7, -0x5a

    .line 114
    .line 115
    if-lt v6, v7, :cond_5

    .line 116
    .line 117
    move v6, v2

    .line 118
    goto :goto_2

    .line 119
    :cond_5
    move v6, v1

    .line 120
    :goto_2
    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    .line 121
    .line 122
    sget v10, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6_NETWORK:I

    .line 123
    .line 124
    sget-object v11, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    .line 125
    .line 126
    if-ne v7, v10, :cond_7

    .line 127
    .line 128
    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 129
    .line 130
    if-ne v7, v2, :cond_6

    .line 131
    .line 132
    aget-object v6, v11, v6

    .line 133
    .line 134
    aget v6, v6, v2

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    aget-object v6, v11, v6

    .line 138
    .line 139
    aget v6, v6, v1

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_7
    sget v10, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6E_NETWORK:I

    .line 143
    .line 144
    if-ne v7, v10, :cond_9

    .line 145
    .line 146
    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 147
    .line 148
    sget-object v10, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    .line 149
    .line 150
    if-ne v7, v2, :cond_8

    .line 151
    .line 152
    aget-object v6, v10, v6

    .line 153
    .line 154
    aget v6, v6, v2

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    aget-object v6, v10, v6

    .line 158
    .line 159
    aget v6, v6, v1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_9
    if-ne v7, v10, :cond_b

    .line 163
    .line 164
    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 165
    .line 166
    if-ne v7, v2, :cond_a

    .line 167
    .line 168
    aget-object v6, v11, v6

    .line 169
    .line 170
    aget v6, v6, v2

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_a
    aget-object v6, v11, v6

    .line 174
    .line 175
    aget v6, v6, v1

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_b
    iget v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 179
    .line 180
    sget-object v10, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->ICONS_WIFI:[[I

    .line 181
    .line 182
    if-ne v7, v2, :cond_c

    .line 183
    .line 184
    aget-object v6, v10, v6

    .line 185
    .line 186
    aget v6, v6, v2

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_c
    aget-object v6, v10, v6

    .line 190
    .line 191
    aget v6, v6, v1

    .line 192
    .line 193
    :goto_3
    iput v6, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 194
    .line 195
    iget-object v6, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    .line 196
    .line 197
    iput-object v6, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 198
    .line 199
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 200
    .line 201
    iget-object v6, v6, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 202
    .line 203
    if-eqz v6, :cond_1

    .line 204
    .line 205
    iget-object v6, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 206
    .line 207
    if-eqz v6, :cond_1

    .line 208
    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 215
    .line 216
    iget-object v7, v7, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 217
    .line 218
    const-string v10, ".AutoHotspot"

    .line 219
    .line 220
    invoke-static {v6, v7, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string/jumbo v10, "updateHotspotItems() - status getting from res.mWifiMac->"

    .line 227
    .line 228
    .line 229
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v10, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v7, v10, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 238
    .line 239
    iget-object v6, v6, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 240
    .line 241
    iget-object v7, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 242
    .line 243
    check-cast v6, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 244
    .line 245
    iget-object v6, v6, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 246
    .line 247
    if-eqz v6, :cond_d

    .line 248
    .line 249
    invoke-virtual {v6, v7}, Lcom/samsung/android/wifi/SemWifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    goto :goto_4

    .line 254
    :cond_d
    move v6, v1

    .line 255
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 261
    .line 262
    iget-object v10, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 263
    .line 264
    const-string v11, ".AutoHotspot"

    .line 265
    .line 266
    invoke-static {v7, v10, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    const-string/jumbo v10, "updateHotspotItems() - ConnectedStatus-> "

    .line 271
    .line 272
    .line 273
    const-string v11, " res.mWifiMac-> "

    .line 274
    .line 275
    invoke-static {v10, v6, v11}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    iget-object v11, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v10, v11, v7}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    if-ne v6, v9, :cond_e

    .line 285
    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 292
    .line 293
    iget-object v6, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 294
    .line 295
    const-string v7, ".AutoHotspot"

    .line 296
    .line 297
    invoke-static {v5, v6, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string/jumbo v7, "updateHotspotItems() - This mac is connected (do nothing) res.mWifiMac-> "

    .line 304
    .line 305
    .line 306
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v4, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 310
    .line 311
    invoke-static {v6, v4, v5}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    iget-object v9, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    iget v9, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    .line 327
    .line 328
    const/16 v10, 0xf

    .line 329
    .line 330
    const v11, 0x7f130354

    .line 331
    .line 332
    .line 333
    if-gt v9, v10, :cond_f

    .line 334
    .line 335
    iput-boolean v2, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    .line 336
    .line 337
    iput-boolean v1, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 338
    .line 339
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 340
    .line 341
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v4, " "

    .line 351
    .line 352
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 356
    .line 357
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 358
    .line 359
    const v6, 0x7f1306f7

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    goto/16 :goto_6

    .line 370
    .line 371
    :cond_f
    iget-boolean v9, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    .line 372
    .line 373
    if-eqz v9, :cond_10

    .line 374
    .line 375
    iput-boolean v2, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    .line 376
    .line 377
    iput-boolean v1, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 378
    .line 379
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 380
    .line 381
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 382
    .line 383
    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v4, " "

    .line 391
    .line 392
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 396
    .line 397
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 398
    .line 399
    const v6, 0x7f13124c

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    goto/16 :goto_6

    .line 410
    .line 411
    :cond_10
    iget-boolean v9, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isMobileDataLimitReached:Z

    .line 412
    .line 413
    if-eqz v9, :cond_11

    .line 414
    .line 415
    iput-boolean v2, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    .line 416
    .line 417
    iput-boolean v1, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 418
    .line 419
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 420
    .line 421
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 422
    .line 423
    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v4, " "

    .line 431
    .line 432
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 436
    .line 437
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 438
    .line 439
    const v6, 0x7f13124a

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    goto :goto_6

    .line 450
    :cond_11
    iget-boolean v4, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isNotValidNetwork:Z

    .line 451
    .line 452
    if-eqz v4, :cond_12

    .line 453
    .line 454
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 455
    .line 456
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 457
    .line 458
    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v4, " "

    .line 466
    .line 467
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 471
    .line 472
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 473
    .line 474
    const v6, 0x7f131081

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    goto :goto_6

    .line 485
    :cond_12
    if-eq v6, v2, :cond_14

    .line 486
    .line 487
    if-ne v6, v8, :cond_13

    .line 488
    .line 489
    goto :goto_5

    .line 490
    :cond_13
    if-gez v6, :cond_15

    .line 491
    .line 492
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 493
    .line 494
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 495
    .line 496
    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v4, " "

    .line 504
    .line 505
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 509
    .line 510
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 511
    .line 512
    const v6, 0x7f13107f

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    iput-boolean v2, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    .line 523
    .line 524
    goto :goto_6

    .line 525
    :cond_14
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 526
    .line 527
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 528
    .line 529
    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v4, " "

    .line 537
    .line 538
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 542
    .line 543
    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 544
    .line 545
    const v6, 0x7f13107e

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    :cond_15
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .line 559
    .line 560
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 561
    .line 562
    iget-object v6, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 563
    .line 564
    const-string v8, ".AutoHotspot"

    .line 565
    .line 566
    invoke-static {v4, v6, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    const-string v8, "item.isDisabled : "

    .line 573
    .line 574
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    iget-boolean v8, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    .line 578
    .line 579
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    const-string v8, " item.isClickable : "

    .line 583
    .line 584
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    iget-boolean v8, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 588
    .line 589
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    iput-object v4, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 604
    .line 605
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    goto/16 :goto_1

    .line 609
    .line 610
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 611
    .line 612
    if-eqz v1, :cond_18

    .line 613
    .line 614
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    new-array v2, v2, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 619
    .line 620
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 625
    .line 626
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 627
    .line 628
    .line 629
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 630
    .line 631
    new-instance v1, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$4;

    .line 632
    .line 633
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 637
    .line 638
    .line 639
    goto :goto_7

    .line 640
    :catchall_0
    move-exception p0

    .line 641
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    throw p0

    .line 643
    :cond_17
    const-string p0, ".AutoHotspot"

    .line 644
    .line 645
    const-string v1, "isPrimaryUser: "

    .line 646
    .line 647
    invoke-static {v1, v0, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 648
    .line 649
    .line 650
    :cond_18
    :goto_7
    return-void
.end method
