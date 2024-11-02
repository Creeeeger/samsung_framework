.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->setListening(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLatinNetworkNameProvider:Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;

    .line 12
    .line 13
    check-cast v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->DISPLAY_CBCH50:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    new-array v4, v3, [Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v5, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 24
    .line 25
    invoke-interface {v5, v2, v3, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v6, 0x0

    .line 30
    iget-object v7, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    new-instance v10, Landroid/content/IntentFilter;

    .line 35
    .line 36
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "android.intent.action.SERVICE_STATE"

    .line 40
    .line 41
    invoke-virtual {v10, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v15, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 45
    .line 46
    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v8, "android.location.MODE_CHANGED"

    .line 50
    .line 51
    invoke-virtual {v10, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v8, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 55
    .line 56
    iget-object v9, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastReceiver:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

    .line 57
    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v13, 0x0

    .line 61
    const/4 v14, 0x0

    .line 62
    const/16 v16, 0x3c

    .line 63
    .line 64
    move-object v3, v15

    .line 65
    move/from16 v15, v16

    .line 66
    .line 67
    invoke-static/range {v8 .. v15}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    new-instance v8, Landroid/content/IntentFilter;

    .line 71
    .line 72
    invoke-direct {v8, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    iget-object v8, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastReceiver:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

    .line 80
    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    invoke-virtual {v8, v7, v4}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 87
    .line 88
    invoke-direct {v4, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    invoke-virtual {v8, v7, v3}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    const/4 v3, 0x0

    .line 101
    :cond_2
    new-array v4, v3, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-interface {v5, v2, v3, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_8

    .line 108
    .line 109
    new-instance v10, Landroid/content/IntentFilter;

    .line 110
    .line 111
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v2, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    .line 115
    .line 116
    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v2, "android.telephony.action.AREA_INFO_UPDATED"

    .line 120
    .line 121
    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v2, "com.sec.android.app.mms.CB_CLEAR"

    .line 125
    .line 126
    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 130
    .line 131
    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v8, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 135
    .line 136
    iget-object v9, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastReceiver:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    const/4 v12, 0x0

    .line 140
    const/4 v13, 0x0

    .line 141
    const/4 v14, 0x0

    .line 142
    const/16 v15, 0x3c

    .line 143
    .line 144
    invoke-static/range {v8 .. v15}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastService:Landroid/telephony/ICellBroadcastService;

    .line 148
    .line 149
    if-eqz v2, :cond_3

    .line 150
    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_3
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    new-instance v3, Landroid/content/Intent;

    .line 158
    .line 159
    const-string v4, "android.telephony.CellBroadcastService"

    .line 160
    .line 161
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-wide/32 v8, 0x100000

    .line 165
    .line 166
    .line 167
    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    const-string v5, "LatinNetworkNameProvider"

    .line 180
    .line 181
    const/4 v8, 0x1

    .line 182
    if-eq v3, v8, :cond_4

    .line 183
    .line 184
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    const-string v8, "getCellBroadcastServicePackageName: found "

    .line 189
    .line 190
    invoke-static {v8, v3, v5}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_7

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 208
    .line 209
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 210
    .line 211
    if-eqz v3, :cond_5

    .line 212
    .line 213
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-nez v8, :cond_5

    .line 220
    .line 221
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    const-string v9, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 226
    .line 227
    invoke-virtual {v8, v9, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    const-string v9, "getCellBroadcastServicePackageName: "

    .line 232
    .line 233
    if-nez v8, :cond_6

    .line 234
    .line 235
    invoke-static {v9, v3, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    move-object v6, v3

    .line 239
    goto :goto_1

    .line 240
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v3, " does not have READ_PRIVILEGED_PHONE_STATE permission"

    .line 249
    .line 250
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_7
    const-string v2, "getCellBroadcastServicePackageName: package name not found"

    .line 262
    .line 263
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    :goto_1
    if-eqz v6, :cond_8

    .line 267
    .line 268
    new-instance v2, Landroid/content/Intent;

    .line 269
    .line 270
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    iget-object v3, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastServiceConnection:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;

    .line 277
    .line 278
    const/4 v4, 0x1

    .line 279
    invoke-virtual {v7, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-nez v2, :cond_8

    .line 284
    .line 285
    const-string v2, "Unable to bind to service"

    .line 286
    .line 287
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :cond_8
    :goto_2
    iget-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 291
    .line 292
    invoke-virtual {v2, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 296
    .line 297
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mQuickStarHelper:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;

    .line 298
    .line 299
    iget-boolean v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mIsRegistered:Z

    .line 300
    .line 301
    if-nez v1, :cond_9

    .line 302
    .line 303
    iget-object v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 304
    .line 305
    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 306
    .line 307
    const-string v2, "ShadeCarrierGroup"

    .line 308
    .line 309
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 310
    .line 311
    .line 312
    const/4 v1, 0x1

    .line 313
    iput-boolean v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mIsRegistered:Z

    .line 314
    .line 315
    :cond_9
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->setListening(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLatinNetworkNameProvider:Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;

    .line 10
    .line 11
    check-cast p1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->DISPLAY_CBCH50:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 17
    .line 18
    new-array v2, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v3, p1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 21
    .line 22
    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->unregisterLocationListener()V

    .line 29
    .line 30
    .line 31
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastServiceConnection:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mQuickStarHelper:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;

    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mIsRegistered:Z

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 55
    .line 56
    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 57
    .line 58
    const-string v1, "ShadeCarrierGroup"

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mIsRegistered:Z

    .line 64
    .line 65
    :cond_2
    return-void
.end method
