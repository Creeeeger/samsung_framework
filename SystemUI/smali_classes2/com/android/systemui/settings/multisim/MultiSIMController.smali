.class public final Lcom/android/systemui/settings/multisim/MultiSIMController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INTERNAL_URI:Landroid/net/Uri;


# instance fields
.field public mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mChangNetModeObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$3;

.field public final mContext:Landroid/content/Context;

.field public mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field public final mDataCallbacks:Ljava/util/ArrayList;

.field public mDataController:Lcom/android/settingslib/net/DataUsageController;

.field public mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field public final mDefaultIdUpdateList:Ljava/util/ArrayList;

.field public mHasOpportunisticESim:Z

.field public mInitDone:Z

.field public final mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMController$9;

.field public mInvalidSimInfo:Ljava/lang/String;

.field public mIsLoadedMultiSim:Z

.field public mIsSlotReversed:Z

.field public mMaxSimIconNumber:I

.field public final mMobileDataObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$7;

.field public final mMultiSimDataCrossSlotObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$5;

.field public mNeedCheckOpportunisticESim:Z

.field public mNetworkNameDefault:Ljava/lang/String;

.field public final mNotifyDataToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;

.field public final mNotifyVisToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;

.field public final mOnSubscriptionsChangeListener:Lcom/android/systemui/settings/multisim/MultiSIMController$2;

.field public final mPreferedVoiceObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$4;

.field public final mSIMInfoIconManagerFactory:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;

.field public final mSettingsListener:Lcom/android/systemui/settings/multisim/MultiSIMController$6;

.field public mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

.field public mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

.field public final mSimIconAndNameObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$8;

.field public final mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

.field public mUIVisible:Z

.field public mUnknownPhoneNumber:Ljava/lang/String;

.field public final mUpdateDataHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$11;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVisCallbacks:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.samsung.android.app.telephonyui.internal"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    filled-new-array {v2, v2}, [Lcom/samsung/android/ims/SemImsRegistrationListener;

    .line 10
    .line 11
    .line 12
    filled-new-array {v2, v2}, [Lcom/samsung/android/ims/SemImsManager;

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-boolean v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iput-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iput-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v3, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-boolean v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    .line 40
    .line 41
    iput-boolean v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    iput-boolean v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    .line 45
    .line 46
    iput-boolean v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    .line 47
    .line 48
    iput-boolean v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    .line 49
    .line 50
    new-instance v4, Lcom/android/systemui/settings/multisim/MultiSIMController$1;

    .line 51
    .line 52
    invoke-direct {v4, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    .line 53
    .line 54
    .line 55
    iput-object v4, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 56
    .line 57
    new-instance v5, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    invoke-direct {v5, v0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;I)V

    .line 60
    .line 61
    .line 62
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyDataToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;

    .line 63
    .line 64
    new-instance v5, Lcom/android/systemui/settings/multisim/MultiSIMController$2;

    .line 65
    .line 66
    invoke-direct {v5, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$2;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    .line 67
    .line 68
    .line 69
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mOnSubscriptionsChangeListener:Lcom/android/systemui/settings/multisim/MultiSIMController$2;

    .line 70
    .line 71
    new-instance v6, Lcom/android/systemui/settings/multisim/MultiSIMController$3;

    .line 72
    .line 73
    sget-object v7, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 74
    .line 75
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Landroid/os/Handler;

    .line 80
    .line 81
    invoke-direct {v6, v0, v8}, Lcom/android/systemui/settings/multisim/MultiSIMController$3;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    .line 82
    .line 83
    .line 84
    iput-object v6, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mChangNetModeObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$3;

    .line 85
    .line 86
    new-instance v8, Lcom/android/systemui/settings/multisim/MultiSIMController$4;

    .line 87
    .line 88
    new-instance v9, Landroid/os/Handler;

    .line 89
    .line 90
    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-direct {v8, v0, v9}, Lcom/android/systemui/settings/multisim/MultiSIMController$4;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    .line 94
    .line 95
    .line 96
    iput-object v8, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mPreferedVoiceObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$4;

    .line 97
    .line 98
    new-instance v9, Lcom/android/systemui/settings/multisim/MultiSIMController$5;

    .line 99
    .line 100
    new-instance v10, Landroid/os/Handler;

    .line 101
    .line 102
    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-direct {v9, v0, v10}, Lcom/android/systemui/settings/multisim/MultiSIMController$5;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    .line 106
    .line 107
    .line 108
    iput-object v9, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMultiSimDataCrossSlotObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$5;

    .line 109
    .line 110
    const-string v10, "airplane_mode_on"

    .line 111
    .line 112
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    filled-new-array {v10}, [Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    new-instance v11, Lcom/android/systemui/settings/multisim/MultiSIMController$6;

    .line 121
    .line 122
    invoke-direct {v11, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$6;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    .line 123
    .line 124
    .line 125
    iput-object v11, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSettingsListener:Lcom/android/systemui/settings/multisim/MultiSIMController$6;

    .line 126
    .line 127
    new-instance v12, Lcom/android/systemui/settings/multisim/MultiSIMController$7;

    .line 128
    .line 129
    new-instance v13, Landroid/os/Handler;

    .line 130
    .line 131
    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-direct {v12, v0, v13}, Lcom/android/systemui/settings/multisim/MultiSIMController$7;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    .line 135
    .line 136
    .line 137
    iput-object v12, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMobileDataObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$7;

    .line 138
    .line 139
    new-instance v13, Lcom/android/systemui/settings/multisim/MultiSIMController$8;

    .line 140
    .line 141
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, Landroid/os/Handler;

    .line 146
    .line 147
    invoke-direct {v13, v0, v7}, Lcom/android/systemui/settings/multisim/MultiSIMController$8;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    .line 148
    .line 149
    .line 150
    iput-object v13, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimIconAndNameObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$8;

    .line 151
    .line 152
    new-instance v7, Lcom/android/systemui/settings/multisim/MultiSIMController$9;

    .line 153
    .line 154
    invoke-direct {v7, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$9;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    .line 155
    .line 156
    .line 157
    iput-object v7, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMController$9;

    .line 158
    .line 159
    new-instance v14, Lcom/android/systemui/settings/multisim/MultiSIMController$11;

    .line 160
    .line 161
    invoke-direct {v14, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$11;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    .line 162
    .line 163
    .line 164
    iput-object v14, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUpdateDataHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$11;

    .line 165
    .line 166
    new-instance v14, Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    .line 167
    .line 168
    invoke-direct {v14, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$12;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    .line 169
    .line 170
    .line 171
    iput-object v14, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    .line 172
    .line 173
    new-instance v15, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;

    .line 174
    .line 175
    invoke-direct {v15, v0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;I)V

    .line 176
    .line 177
    .line 178
    iput-object v15, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyVisToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;

    .line 179
    .line 180
    iput-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    const-string/jumbo v15, "user"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    check-cast v15, Landroid/os/UserManager;

    .line 190
    .line 191
    iput-object v15, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUserManager:Landroid/os/UserManager;

    .line 192
    .line 193
    move-object/from16 v15, p4

    .line 194
    .line 195
    iput-object v15, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSIMInfoIconManagerFactory:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;

    .line 196
    .line 197
    new-instance v15, Landroid/content/IntentFilter;

    .line 198
    .line 199
    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 203
    .line 204
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v3, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    .line 208
    .line 209
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v3, "com.samsung.telecom.action.DEFAULT_OUTGOING_PHONE_ACCOUNT_CHANGED"

    .line 213
    .line 214
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 218
    .line 219
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string v3, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    .line 223
    .line 224
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 228
    .line 229
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    .line 233
    .line 234
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const-string v3, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 238
    .line 239
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const-string v3, "android.samsung.action.ACTION_NETWORK_SLOT_CHANGING_FINISH"

    .line 243
    .line 244
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string v3, "android.intent.action.PHONE_STATE"

    .line 248
    .line 249
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string v3, "android.intent.action.SERVICE_STATE"

    .line 253
    .line 254
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v3, "com.samsung.android.softsim.ServiceStatus"

    .line 258
    .line 259
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const-string v3, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    .line 263
    .line 264
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-class v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 268
    .line 269
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 274
    .line 275
    invoke-virtual {v3, v15, v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 276
    .line 277
    .line 278
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    iput-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 283
    .line 284
    if-eqz p2, :cond_0

    .line 285
    .line 286
    move-object/from16 v3, p2

    .line 287
    .line 288
    check-cast v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 289
    .line 290
    iget-object v3, v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 291
    .line 292
    iput-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 293
    .line 294
    :cond_0
    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 295
    .line 296
    invoke-direct {v3}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    .line 297
    .line 298
    .line 299
    iput-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 300
    .line 301
    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 302
    .line 303
    invoke-direct {v3}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    .line 304
    .line 305
    .line 306
    iput-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 307
    .line 308
    iput-boolean v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    .line 309
    .line 310
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 311
    .line 312
    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 313
    .line 314
    .line 315
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 316
    .line 317
    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 318
    .line 319
    .line 320
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 321
    .line 322
    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    const v7, 0x7f030058

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    array-length v3, v3

    .line 337
    iput v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    .line 338
    .line 339
    iget-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 340
    .line 341
    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 342
    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    const-string/jumbo v15, "select_icon_1"

    .line 348
    .line 349
    .line 350
    invoke-static {v7, v15, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    aput v7, v3, v2

    .line 355
    .line 356
    iget-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 357
    .line 358
    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 359
    .line 360
    aget v3, v3, v2

    .line 361
    .line 362
    const-string v7, "MultiSIMController"

    .line 363
    .line 364
    if-ltz v3, :cond_2

    .line 365
    .line 366
    iget v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    .line 367
    .line 368
    if-lt v3, v2, :cond_1

    .line 369
    .line 370
    goto :goto_0

    .line 371
    :cond_1
    const/16 v16, 0x0

    .line 372
    .line 373
    goto :goto_1

    .line 374
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v3, "MultiSIMPreferredSlotBar SimImageIdx[0] = "

    .line 377
    .line 378
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iget-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 382
    .line 383
    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 384
    .line 385
    const/16 v16, 0x0

    .line 386
    .line 387
    aget v3, v3, v16

    .line 388
    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 400
    .line 401
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 402
    .line 403
    aput v16, v2, v16

    .line 404
    .line 405
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 406
    .line 407
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    const-string/jumbo v1, "select_name_1"

    .line 414
    .line 415
    .line 416
    invoke-static {v3, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    aput-object v3, v2, v16

    .line 421
    .line 422
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 423
    .line 424
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 425
    .line 426
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    move-object/from16 v17, v4

    .line 431
    .line 432
    const-string/jumbo v4, "select_icon_2"

    .line 433
    .line 434
    .line 435
    move-object/from16 v18, v14

    .line 436
    .line 437
    const/4 v14, 0x1

    .line 438
    invoke-static {v3, v4, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    aput v3, v2, v14

    .line 443
    .line 444
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 445
    .line 446
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 447
    .line 448
    aget v2, v2, v14

    .line 449
    .line 450
    if-ltz v2, :cond_4

    .line 451
    .line 452
    iget v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    .line 453
    .line 454
    if-lt v2, v3, :cond_3

    .line 455
    .line 456
    goto :goto_2

    .line 457
    :cond_3
    const/4 v14, 0x1

    .line 458
    goto :goto_3

    .line 459
    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    const-string v3, "MultiSIMPreferredSlotBar SimImageIdx[1] = "

    .line 462
    .line 463
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 467
    .line 468
    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 469
    .line 470
    const/4 v14, 0x1

    .line 471
    aget v3, v3, v14

    .line 472
    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 484
    .line 485
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 486
    .line 487
    aput v14, v2, v14

    .line 488
    .line 489
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 490
    .line 491
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 492
    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    move-object/from16 p2, v7

    .line 498
    .line 499
    const-string/jumbo v7, "select_name_2"

    .line 500
    .line 501
    .line 502
    invoke-static {v3, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    aput-object v3, v2, v14

    .line 507
    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    const/4 v14, 0x0

    .line 517
    invoke-virtual {v2, v3, v14, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-virtual {v2, v1, v14, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-virtual {v1, v2, v14, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-virtual {v1, v2, v14, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    const-string/jumbo v2, "prefered_voice_call"

    .line 558
    .line 559
    .line 560
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v1, v2, v14, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    const-string v2, "mobile_data"

    .line 572
    .line 573
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-virtual {v1, v2, v14, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    const-string v2, "device_provisioned"

    .line 585
    .line 586
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-virtual {v1, v2, v14, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    const-string v2, "multi_sim_datacross_slot"

    .line 598
    .line 599
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-virtual {v1, v2, v14, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    const-string/jumbo v2, "set_network_mode_by_quick_panel"

    .line 611
    .line 612
    .line 613
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-virtual {v1, v2, v14, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 618
    .line 619
    .line 620
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 621
    .line 622
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 627
    .line 628
    invoke-virtual {v2, v11, v10}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 629
    .line 630
    .line 631
    aget-object v2, v10, v14

    .line 632
    .line 633
    invoke-virtual {v11, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$6;->onChanged(Landroid/net/Uri;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingVirtualSlot()I

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    const/4 v3, 0x1

    .line 641
    if-ne v2, v3, :cond_5

    .line 642
    .line 643
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 644
    .line 645
    iput-boolean v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 646
    .line 647
    :cond_5
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    .line 648
    .line 649
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    .line 654
    .line 655
    iput-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 656
    .line 657
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    invoke-virtual {v2, v5}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateSimSlotType()V

    .line 665
    .line 666
    .line 667
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 668
    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isRestrictionsForMmsUse()Z

    .line 670
    .line 671
    .line 672
    move-result v3

    .line 673
    iput-boolean v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 674
    .line 675
    const/4 v2, 0x1

    .line 676
    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateMultiSimReadyState(Z)V

    .line 677
    .line 678
    .line 679
    iget-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 680
    .line 681
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 686
    .line 687
    .line 688
    move-result-object v4

    .line 689
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    const/4 v5, 0x0

    .line 694
    invoke-static {v5}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSubId(I)I

    .line 695
    .line 696
    .line 697
    move-result v6

    .line 698
    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    .line 699
    .line 700
    .line 701
    move-result v4

    .line 702
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 703
    .line 704
    .line 705
    move-result-object v6

    .line 706
    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 707
    .line 708
    .line 709
    move-result-object v6

    .line 710
    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    invoke-static {v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSubId(I)I

    .line 715
    .line 716
    .line 717
    move-result v7

    .line 718
    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    .line 719
    .line 720
    .line 721
    move-result v6

    .line 722
    new-instance v7, Ljava/lang/StringBuilder;

    .line 723
    .line 724
    const-string v8, "Check Call SIM1 : "

    .line 725
    .line 726
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    const-string v8, ", SIM2 : "

    .line 733
    .line 734
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v7

    .line 744
    move-object/from16 v8, p2

    .line 745
    .line 746
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    .line 748
    .line 749
    if-eq v4, v2, :cond_7

    .line 750
    .line 751
    const/4 v7, 0x2

    .line 752
    if-eq v4, v7, :cond_7

    .line 753
    .line 754
    if-eq v6, v2, :cond_7

    .line 755
    .line 756
    if-ne v6, v7, :cond_6

    .line 757
    .line 758
    goto :goto_4

    .line 759
    :cond_6
    move v2, v5

    .line 760
    goto :goto_5

    .line 761
    :cond_7
    :goto_4
    const/4 v2, 0x1

    .line 762
    :goto_5
    iput-boolean v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 763
    .line 764
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 765
    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    iput-boolean v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 771
    .line 772
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 773
    .line 774
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 779
    .line 780
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    iput-boolean v1, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 785
    .line 786
    const/4 v1, 0x1

    .line 787
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    .line 788
    .line 789
    .line 790
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 791
    .line 792
    move-object/from16 v2, v18

    .line 793
    .line 794
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 795
    .line 796
    .line 797
    move-object/from16 v2, p3

    .line 798
    .line 799
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 800
    .line 801
    move-object/from16 v3, v17

    .line 802
    .line 803
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 804
    .line 805
    .line 806
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 807
    .line 808
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    if-eqz v2, :cond_8

    .line 813
    .line 814
    const/4 v2, 0x1

    .line 815
    goto :goto_6

    .line 816
    :cond_8
    move v2, v5

    .line 817
    :goto_6
    iput-boolean v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 818
    .line 819
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/DeviceState;->isSubInfoReversed(Landroid/content/Context;)Z

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    iput-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    .line 824
    .line 825
    const/4 v1, 0x1

    .line 826
    iput-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    .line 827
    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    .line 829
    .line 830
    .line 831
    return-void
.end method

.method public static getSRoamingStatus(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "activating"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const-string v0, "activated"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const-string v0, "deactivating"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string v0, "deactivated"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/16 p0, 0x9

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 41
    :goto_2
    return p0
.end method

.method public static getSubId(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aget p0, p0, v0

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const-string p0, "MultiSIMController"

    .line 15
    .line 16
    const-string v0, "getSubId: no valid subs"

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/4 p0, -0x1

    .line 22
    return p0
.end method

.method public static isBlockedAllMultiSimBar()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XNX_BRANDING:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "ril.lockpolicy"

    .line 6
    .line 7
    .line 8
    const-string v1, "0"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "1"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :cond_0
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 29
    .line 30
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBlockedEdmSettingsChange$1()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 43
    .line 44
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isUserMobileDataRestricted()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 56
    :goto_1
    return v0
.end method


# virtual methods
.method public final getCurrentVoiceSlotByMethodCall()I
    .locals 7

    .line 1
    const-string v0, "MultiSIMController"

    .line 2
    .line 3
    const-string v1, "getCurrentVoiceCall, "

    .line 4
    .line 5
    const-string v2, "getCurrentVoiceCall"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v5, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-virtual {p0, v5, v2, v6, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const-string p0, "bundle is null : getCurrentVoiceCall"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :cond_0
    const-string/jumbo v2, "success"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const-string/jumbo v4, "result"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ", "

    .line 57
    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    return p0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return v3
.end method

.method public final getSRoamingVirtualSlot()I
    .locals 6

    .line 1
    const-string v0, "com.samsung.android.globalroaming"

    .line 2
    .line 3
    const-string v1, "MultiSIMController"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "context is null : com.samsung.android.globalroaming"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/16 v4, 0x80

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    move p0, v3

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    const-string p0, "Package not found : com.samsung.android.globalroaming"

    .line 29
    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    move p0, v2

    .line 34
    :goto_1
    const/16 v0, 0x9

    .line 35
    .line 36
    if-eqz p0, :cond_4

    .line 37
    .line 38
    const-string p0, "has sroaming package"

    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const-string/jumbo p0, "persist.sys.softsim.status"

    .line 44
    .line 45
    .line 46
    const-string v4, "default"

    .line 47
    .line 48
    invoke-static {v2, p0, v4}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v3, p0, v4}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v5}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingStatus(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingStatus(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eq v4, v3, :cond_3

    .line 65
    .line 66
    if-ne p0, v3, :cond_1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    if-nez v4, :cond_2

    .line 70
    .line 71
    if-nez p0, :cond_2

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    move v2, v0

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    :goto_2
    move v2, v3

    .line 77
    :goto_3
    const-string/jumbo p0, "sroaming status : "

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v2, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    move v0, v2

    .line 84
    :cond_4
    return v0
.end method

.method public final isDataBlocked(I)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    rsub-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v3, "MultiSIMController"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v2}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isDefaultDataSlotAllowed(I)Z

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    xor-int/lit8 p0, p0, 0x1

    .line 29
    .line 30
    return p0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p1, "Caught exception from isDataBlocked"

    .line 33
    .line 34
    invoke-static {v3, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const-string v0, "isDataBlocked : isDefaultDataSlotAllowedByMethodCall"

    .line 43
    .line 44
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const-string v0, "isDefaultDataSlotAllowed, "

    .line 48
    .line 49
    const-string v4, "isDefaultDataSlotAllowed"

    .line 50
    .line 51
    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v6, "selectItem"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v6, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    invoke-virtual {p1, v6, v4, v7, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    const-string p1, "bundle is null : isDefaultDataSlotAllowed"

    .line 76
    .line 77
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-string/jumbo v4, "success"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const-string/jumbo v5, "result"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, ", "

    .line 104
    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    .line 118
    move v1, p1

    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :goto_0
    xor-int/lit8 p1, v1, 0x1

    .line 137
    .line 138
    invoke-static {v2}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 143
    .line 144
    return p1

    .line 145
    :cond_3
    const-string p0, "isDataBlocked : mSimCardManagerService is null."

    .line 146
    .line 147
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    return v1
.end method

.method public final isDataEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final isMultiSimAvailable()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isLDUSKU()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :try_start_0
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const-string/jumbo v3, "ril.sales_code"

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const-string v0, ""

    .line 38
    .line 39
    :catch_1
    const-string v3, "TAG"

    .line 40
    .line 41
    const-string/jumbo v4, "readSalesCode failed"

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    const-string v3, "PAP"

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    const-string v3, "FOP"

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    const-string v3, "LDU"

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v0, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    move v0, v2

    .line 75
    :goto_2
    const-string v3, "isLDUModel = "

    .line 76
    .line 77
    const-string v4, " isSecondaryUser = "

    .line 78
    .line 79
    invoke-static {v3, v0, v4}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 84
    .line 85
    iget-boolean v4, v4, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 86
    .line 87
    const-string v5, "MultiSIMController"

    .line 88
    .line 89
    invoke-static {v3, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 95
    .line 96
    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    .line 97
    .line 98
    if-eqz p0, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    move p0, v1

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    :goto_3
    move p0, v2

    .line 104
    :goto_4
    if-nez p0, :cond_6

    .line 105
    .line 106
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    .line 107
    .line 108
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_6

    .line 119
    .line 120
    move v1, v2

    .line 121
    :cond_6
    return v1
.end method

.method public final isRestrictionsForMmsUse()Z
    .locals 4

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 2
    .line 3
    const-string/jumbo v0, "ro.hardware"

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "qcom"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    .line 23
    .line 24
    const/16 v2, 0x1f

    .line 25
    .line 26
    if-ge v0, v2, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "multi_sim_datacross_slot"

    .line 35
    .line 36
    const/4 v2, -0x1

    .line 37
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const-string v0, "isMMSuse ="

    .line 42
    .line 43
    const-string v3, "MultiSIMController"

    .line 44
    .line 45
    invoke-static {v0, p0, v3}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    if-eq p0, v2, :cond_0

    .line 50
    .line 51
    move p0, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move p0, v1

    .line 54
    :goto_0
    if-eqz p0, :cond_1

    .line 55
    .line 56
    move v1, v0

    .line 57
    :cond_1
    return v1
.end method

.method public final launchSimManager()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isBlockedAllMultiSimBar()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "MultiSIMController"

    .line 14
    .line 15
    const-string v2, "onClick()"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :try_start_0
    const-string v2, "com.samsung.android.app.telephonyui"

    .line 21
    .line 22
    const-string v3, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.SimCardMgrActivity"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const v2, 0x10008000

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-interface {p0, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const-string p0, "activity not found"

    .line 41
    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public final notifyDataToCallback()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyDataToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v1, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    new-instance p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final reverseSlotIfNeed(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 11

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    iget p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    rsub-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    iput p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 11
    .line 12
    iget p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 13
    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne p0, v1, :cond_1

    .line 18
    .line 19
    :cond_0
    rsub-int/lit8 p0, p0, 0x3

    .line 20
    .line 21
    iput p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 22
    .line 23
    :cond_1
    iget p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 24
    .line 25
    rsub-int/lit8 p0, p0, 0x1

    .line 26
    .line 27
    iput p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 28
    .line 29
    iget-object p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    aget v2, p0, v1

    .line 33
    .line 34
    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 35
    .line 36
    aget-object v4, v3, v1

    .line 37
    .line 38
    iget-object v5, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 39
    .line 40
    aget-object v6, v5, v1

    .line 41
    .line 42
    iget-object v7, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 43
    .line 44
    aget-object v8, v7, v1

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 47
    .line 48
    aget-boolean v9, p1, v1

    .line 49
    .line 50
    aget v10, p0, v0

    .line 51
    .line 52
    aput v10, p0, v1

    .line 53
    .line 54
    aget-object v10, v3, v0

    .line 55
    .line 56
    aput-object v10, v3, v1

    .line 57
    .line 58
    aget-object v10, v5, v0

    .line 59
    .line 60
    aput-object v10, v5, v1

    .line 61
    .line 62
    aget-object v10, v7, v0

    .line 63
    .line 64
    aput-object v10, v7, v1

    .line 65
    .line 66
    aget-boolean v10, p1, v0

    .line 67
    .line 68
    aput-boolean v10, p1, v1

    .line 69
    .line 70
    aput v2, p0, v0

    .line 71
    .line 72
    aput-object v4, v3, v0

    .line 73
    .line 74
    aput-object v6, v5, v0

    .line 75
    .line 76
    aput-object v8, v7, v0

    .line 77
    .line 78
    aput-boolean v9, p1, v0

    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eq v0, v3, :cond_0

    .line 12
    .line 13
    iget-boolean v6, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    .line 14
    .line 15
    if-eqz v6, :cond_2

    .line 16
    .line 17
    rsub-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eq v2, v5, :cond_1

    .line 21
    .line 22
    if-ne v2, v4, :cond_2

    .line 23
    .line 24
    :cond_1
    iget-boolean v6, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    .line 25
    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    rsub-int/lit8 v2, v2, 0x3

    .line 29
    .line 30
    :cond_2
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v7, "setDefaultSlot : type = "

    .line 33
    .line 34
    .line 35
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v7, ", slotId = "

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v7, "MultiSIMController"

    .line 54
    .line 55
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    sget-object v6, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 59
    .line 60
    if-ne v0, v6, :cond_3

    .line 61
    .line 62
    iget-object v8, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 63
    .line 64
    iget v9, v8, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 65
    .line 66
    if-eq v2, v9, :cond_3

    .line 67
    .line 68
    iput-boolean v5, v8, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 69
    .line 70
    :cond_3
    iget-object v8, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v8}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    const-string v11, "bundle is null : quickpanel_simcard_change"

    .line 77
    .line 78
    const-string/jumbo v12, "success"

    .line 79
    .line 80
    .line 81
    const-string/jumbo v13, "selectItem"

    .line 82
    .line 83
    .line 84
    const-string v14, "changeType"

    .line 85
    .line 86
    const-string v15, "PREFERRED_MOBILE_DATA"

    .line 87
    .line 88
    const-string v10, "PREFERRED_TEXT_MESSAGES"

    .line 89
    .line 90
    const-string v4, "PREFERRED_VOICE_CALLS"

    .line 91
    .line 92
    const-string/jumbo v5, "quickpanel_simcard_change"

    .line 93
    .line 94
    .line 95
    if-eqz v9, :cond_8

    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->getIndex()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const-string v1, "SimCardManagerServiceProvider"

    .line 102
    .line 103
    const-string/jumbo v3, "setChangeSimCardManagerSlot : mIsRemainCallbackCall = "

    .line 104
    .line 105
    .line 106
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    .line 107
    .line 108
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 109
    .line 110
    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {v6, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    const/4 v4, 0x1

    .line 118
    if-ne v0, v4, :cond_5

    .line 119
    .line 120
    invoke-virtual {v6, v14, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    const/4 v7, 0x2

    .line 125
    if-ne v0, v7, :cond_6

    .line 126
    .line 127
    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sput-boolean v4, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    .line 131
    .line 132
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-boolean v3, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v13, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    sget-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sget-object v2, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->INTERNAL_URI:Landroid/net/Uri;

    .line 159
    .line 160
    const/4 v3, 0x0

    .line 161
    invoke-virtual {v0, v2, v5, v3, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-nez v0, :cond_7

    .line 166
    .line 167
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :cond_7
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :catchall_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    goto/16 :goto_4

    .line 186
    .line 187
    :cond_8
    const-string/jumbo v9, "setDefaultSlotByMethodCall"

    .line 188
    .line 189
    .line 190
    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    const-string/jumbo v9, "quickpanel_simcard_change, "

    .line 194
    .line 195
    .line 196
    if-ne v0, v3, :cond_9

    .line 197
    .line 198
    move-object v15, v4

    .line 199
    goto :goto_2

    .line 200
    :cond_9
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 201
    .line 202
    if-ne v0, v3, :cond_a

    .line 203
    .line 204
    move-object v15, v10

    .line 205
    goto :goto_2

    .line 206
    :cond_a
    if-ne v0, v6, :cond_b

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_b
    const/4 v15, 0x0

    .line 210
    :goto_2
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    .line 211
    .line 212
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v13, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 226
    .line 227
    const/4 v4, 0x0

    .line 228
    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-nez v0, :cond_c

    .line 233
    .line 234
    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_c
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    const-string v3, "error"

    .line 243
    .line 244
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Ljava/lang/Throwable;

    .line 249
    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v2, ", "

    .line 259
    .line 260
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :catchall_1
    move-exception v0

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :goto_3
    invoke-static {v8}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iput-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 295
    .line 296
    :goto_4
    return-void
.end method

.method public final updateCarrierNameAndPhoneNumber(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const p1, 0x10406c7

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNetworkNameDefault:Ljava/lang/String;

    .line 13
    .line 14
    const p1, 0x7f130d37

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUnknownPhoneNumber:Ljava/lang/String;

    .line 22
    .line 23
    const p1, 0x7f130d33

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInvalidSimInfo:Ljava/lang/String;

    .line 31
    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    const/4 v1, 0x2

    .line 34
    if-ge p1, v1, :cond_3

    .line 35
    .line 36
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-lez v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNetworkNameDefault:Ljava/lang/String;

    .line 76
    .line 77
    :goto_1
    aput-object v1, v2, p1

    .line 78
    .line 79
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updatePhoneNumberWhenNeeded()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "updateCurrentDefaultSlot : voice = "

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    .line 5
    .line 6
    const-string v2, "MultiSIMController"

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v0, "updateCurrentDefaultSlot later type = "

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$14;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    aget p1, v1, p1

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    if-eq p1, v1, :cond_4

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    if-eq p1, v0, :cond_3

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    if-eq p1, v0, :cond_2

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 60
    .line 61
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v0, "updateCurrentDefaultSlot : data = "

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 80
    .line 81
    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 82
    .line 83
    invoke-static {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 88
    .line 89
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string/jumbo v0, "updateCurrentDefaultSlot : sms = "

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 108
    .line 109
    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 110
    .line 111
    invoke-static {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_5
    const/4 v1, 0x0

    .line 129
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_6

    .line 140
    .line 141
    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->GetCurrentVoiceCall()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    goto :goto_1

    .line 148
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getCurrentVoiceSlotByMethodCall()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    :goto_1
    iput v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 160
    .line 161
    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v0, " "

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :catch_0
    move-exception p1

    .line 183
    const-string v0, "Caught exception from updateCurrentDefaultSlot"

    .line 184
    .line 185
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .line 187
    .line 188
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public final updateMultiSimReadyState(Z)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    move p1, v3

    .line 9
    move v4, p1

    .line 10
    :goto_0
    sget v5, Lcom/android/systemui/util/DeviceState;->sPhoneCount:I

    .line 11
    .line 12
    if-ge p1, v5, :cond_2

    .line 13
    .line 14
    const-string v5, "gsm.sim.state"

    .line 15
    .line 16
    const-string v6, "NOT_READY"

    .line 17
    .line 18
    invoke-static {p1, v5, v6}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const-string v6, "LOADED"

    .line 23
    .line 24
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const-string/jumbo v6, "phone1_on"

    .line 37
    .line 38
    .line 39
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string/jumbo v6, "phone2_on"

    .line 49
    .line 50
    .line 51
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    :goto_1
    if-eqz v5, :cond_1

    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    if-ne v4, v0, :cond_3

    .line 63
    .line 64
    move p1, v2

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move p1, v3

    .line 67
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    .line 68
    .line 69
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    .line 70
    .line 71
    if-eqz p1, :cond_7

    .line 72
    .line 73
    iget-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    .line 74
    .line 75
    if-eqz p1, :cond_7

    .line 76
    .line 77
    iput-boolean v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    .line 78
    .line 79
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-ne v1, v0, :cond_6

    .line 92
    .line 93
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 98
    .line 99
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v1, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_5

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    .line 138
    .line 139
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    .line 140
    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string/jumbo v0, "updateMultiSimReadyState: mHasOpportunisticESim = "

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    .line 150
    .line 151
    const-string v1, "MultiSIMController"

    .line 152
    .line 153
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 157
    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    .line 159
    .line 160
    if-eqz v0, :cond_8

    .line 161
    .line 162
    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    .line 163
    .line 164
    if-nez p0, :cond_8

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    move v2, v3

    .line 168
    :goto_3
    iput-boolean v2, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 169
    .line 170
    return-void
.end method

.method public final updatePhoneNumberWhenNeeded()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v4, 0x1

    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;->isPhoneNumberNeeded()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    move v1, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v0

    .line 38
    :goto_1
    if-eqz v1, :cond_b

    .line 39
    .line 40
    move v1, v0

    .line 41
    :goto_2
    const/4 v2, 0x2

    .line 42
    if-ge v1, v2, :cond_a

    .line 43
    .line 44
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    sget-boolean v5, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    .line 61
    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v6, "CarrierFeature_RIL_DisablePhoneNumberSource"

    .line 67
    .line 68
    const-string v7, ""

    .line 69
    .line 70
    invoke-virtual {v5, v1, v6, v7, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object v6, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 75
    .line 76
    iget-object v6, v6, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 77
    .line 78
    aput-object v7, v6, v1

    .line 79
    .line 80
    invoke-static {}, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;->values()[Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    array-length v7, v6

    .line 85
    move v8, v0

    .line 86
    :goto_3
    const-string v9, "MultiSIMController"

    .line 87
    .line 88
    if-ge v8, v7, :cond_4

    .line 89
    .line 90
    aget-object v10, v6, v8

    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    if-nez v11, :cond_3

    .line 101
    .line 102
    iget-object v11, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 103
    .line 104
    iget-object v11, v11, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSubId(I)I

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    invoke-virtual {v10}, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;->getValue()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    iget-object v13, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    const-class v14, Landroid/telephony/SubscriptionManager;

    .line 117
    .line 118
    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    check-cast v13, Landroid/telephony/SubscriptionManager;

    .line 123
    .line 124
    if-eqz v13, :cond_2

    .line 125
    .line 126
    :try_start_0
    invoke-virtual {v13, v12, v10}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_4

    .line 131
    :catch_0
    move-exception v10

    .line 132
    new-instance v12, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v13, "failed to get SubscriptionManager.getPhoneNumber: "

    .line 135
    .line 136
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    :cond_2
    const/4 v10, 0x0

    .line 154
    :goto_4
    aput-object v10, v11, v1

    .line 155
    .line 156
    iget-object v10, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 157
    .line 158
    iget-object v10, v10, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 159
    .line 160
    aget-object v10, v10, v1

    .line 161
    .line 162
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-nez v10, :cond_3

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_4
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 173
    .line 174
    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 175
    .line 176
    aget-object v5, v5, v1

    .line 177
    .line 178
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_8

    .line 183
    .line 184
    const-string/jumbo v5, "ro.csc.sales_code"

    .line 185
    .line 186
    .line 187
    const-string/jumbo v6, "unknown"

    .line 188
    .line 189
    .line 190
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    const-string v6, "AIS"

    .line 195
    .line 196
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_6

    .line 201
    .line 202
    const-string v5, "gsm.sim.state"

    .line 203
    .line 204
    const-string v6, "NOT_READY"

    .line 205
    .line 206
    invoke-static {v0, v5, v6}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-static {v0, v5, v6}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    const-string v6, "NETWORK_LOCKED"

    .line 215
    .line 216
    if-nez v1, :cond_5

    .line 217
    .line 218
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-eqz v5, :cond_6

    .line 223
    .line 224
    const-string/jumbo v5, "sim1 Network Lock!!"

    .line 225
    .line 226
    .line 227
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_5
    if-ne v1, v4, :cond_6

    .line 232
    .line 233
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_6

    .line 238
    .line 239
    const-string/jumbo v5, "sim2 Network Lock!!"

    .line 240
    .line 241
    .line 242
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    :goto_6
    move v5, v4

    .line 246
    goto :goto_7

    .line 247
    :cond_6
    move v5, v0

    .line 248
    :goto_7
    if-eqz v5, :cond_7

    .line 249
    .line 250
    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 251
    .line 252
    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 253
    .line 254
    iget-object v6, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInvalidSimInfo:Ljava/lang/String;

    .line 255
    .line 256
    aput-object v6, v5, v1

    .line 257
    .line 258
    goto :goto_8

    .line 259
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 260
    .line 261
    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 262
    .line 263
    iget-object v6, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUnknownPhoneNumber:Ljava/lang/String;

    .line 264
    .line 265
    aput-object v6, v5, v1

    .line 266
    .line 267
    :cond_8
    :goto_8
    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 268
    .line 269
    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 270
    .line 271
    aget-object v5, v5, v1

    .line 272
    .line 273
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-nez v5, :cond_9

    .line 278
    .line 279
    invoke-static {}, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->values()[Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    new-instance v6, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda2;

    .line 288
    .line 289
    invoke-direct {v6}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda2;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    new-instance v6, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    invoke-direct {v6, v3, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_9

    .line 306
    .line 307
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 308
    .line 309
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 310
    .line 311
    aget-object v2, v2, v1

    .line 312
    .line 313
    const-string v3, "+82"

    .line 314
    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eqz v2, :cond_9

    .line 320
    .line 321
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 322
    .line 323
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 324
    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v5, "0"

    .line 328
    .line 329
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 333
    .line 334
    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 335
    .line 336
    aget-object v5, v5, v1

    .line 337
    .line 338
    const/4 v6, 0x3

    .line 339
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    aput-object v3, v2, v1

    .line 351
    .line 352
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 353
    .line 354
    goto/16 :goto_2

    .line 355
    .line 356
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    .line 357
    .line 358
    .line 359
    :cond_b
    return-void
.end method

.method public final updateSimSlotType()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0, v2}, Lcom/android/systemui/util/DeviceState;->isESIM(ILandroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    aput-boolean v2, v1, v0

    .line 16
    .line 17
    const-string/jumbo v1, "updateSimSlotType() - sim slot "

    .line 18
    .line 19
    .line 20
    const-string v2, " is eSim: "

    .line 21
    .line 22
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 29
    .line 30
    aget-boolean v2, v2, v0

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "MultiSIMController"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method
