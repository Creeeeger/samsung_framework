.class public final Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field public final controlsFileLoader:Lcom/android/systemui/controls/util/ControlsFileLoader;

.field public final controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

.field public final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

.field public final customControlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

.field public final encryptDecryptWrapper:Lcom/android/systemui/controls/util/EncryptDecryptWrapper;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/controls/ui/CustomControlsUiController;Lcom/android/systemui/controls/util/ControlsFileLoader;Lcom/android/systemui/controls/util/EncryptDecryptWrapper;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/util/ControlsLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->customControlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsFileLoader:Lcom/android/systemui/controls/util/ControlsFileLoader;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->encryptDecryptWrapper:Lcom/android/systemui/controls/util/EncryptDecryptWrapper;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final isPackageInstalledAndEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "ControlsBackupRestoreManager"

    .line 2
    .line 3
    const-string v1, "Already Installed "

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", enabled="

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v2, v0, v1}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    move v3, p1

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "Not Installed "

    .line 48
    .line 49
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0, v0, p1}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return v3
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    if-eqz v2, :cond_14

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_d

    .line 12
    .line 13
    :cond_0
    iget-object v3, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 14
    .line 15
    check-cast v3, Lcom/android/systemui/controls/util/ControlsRuneWrapperImpl;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-boolean v3, Lcom/android/systemui/BasicRune;->CONTROLS_MANAGE_BACKUP_RESOTRE:Z

    .line 21
    .line 22
    if-eqz v3, :cond_14

    .line 23
    .line 24
    const-string v3, "SAVE_PATH"

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, ""

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    move-object v7, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v7, v3

    .line 37
    :goto_0
    const-string v3, "SAVE_PATH_URLS"

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    new-instance v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    :cond_2
    const-string v3, "ACTION"

    .line 51
    .line 52
    const/4 v15, 0x0

    .line 53
    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const-string v5, "SESSION_KEY"

    .line 58
    .line 59
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-nez v5, :cond_3

    .line 64
    .line 65
    move-object v9, v4

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move-object v9, v5

    .line 68
    :goto_1
    const-string v5, "SOURCE"

    .line 69
    .line 70
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-nez v5, :cond_4

    .line 75
    .line 76
    move-object v10, v4

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move-object v10, v5

    .line 79
    :goto_2
    const-string v4, "EXPORT_SESSION_TIME"

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    const-string v4, "SECURITY_LEVEL"

    .line 86
    .line 87
    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    const-string v5, "EXTRA_BACKUP_ITEM"

    .line 92
    .line 93
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-nez v5, :cond_5

    .line 98
    .line 99
    new-instance v5, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    :cond_5
    move-object v12, v5

    .line 105
    new-instance v14, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;

    .line 106
    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    sget-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->Companion:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction$Companion;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->values()[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    array-length v5, v0

    .line 121
    move v8, v15

    .line 122
    :goto_3
    const-string v11, "Array contains no element matching the predicate."

    .line 123
    .line 124
    if-ge v8, v5, :cond_13

    .line 125
    .line 126
    aget-object v16, v0, v8

    .line 127
    .line 128
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->getValue()I

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    const/16 v18, 0x1

    .line 133
    .line 134
    if-ne v15, v3, :cond_6

    .line 135
    .line 136
    move/from16 v15, v18

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    const/4 v15, 0x0

    .line 140
    :goto_4
    if-eqz v15, :cond_12

    .line 141
    .line 142
    sget-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->Companion:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel$Companion;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->values()[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    array-length v3, v0

    .line 152
    const/4 v5, 0x0

    .line 153
    :goto_5
    if-ge v5, v3, :cond_11

    .line 154
    .line 155
    aget-object v15, v0, v5

    .line 156
    .line 157
    invoke-virtual {v15}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->getValue()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-ne v8, v4, :cond_7

    .line 162
    .line 163
    move/from16 v8, v18

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_7
    const/4 v8, 0x0

    .line 167
    :goto_6
    if-eqz v8, :cond_10

    .line 168
    .line 169
    const/4 v0, 0x0

    .line 170
    move-object v5, v14

    .line 171
    move-object/from16 v8, v16

    .line 172
    .line 173
    move-object v11, v15

    .line 174
    move-object v15, v14

    .line 175
    move-object v14, v0

    .line 176
    invoke-direct/range {v5 .. v14}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;Ljava/util/ArrayList;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 180
    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string/jumbo v4, "onReceive request="

    .line 184
    .line 185
    .line 186
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string/jumbo v4, "}"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    const-string v4, "ControlsBackupRestoreManager"

    .line 203
    .line 204
    invoke-static {v0, v4, v3}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

    .line 208
    .line 209
    const-string v3, "com.samsung.android.intent.action.REQUEST_BACKUP_DEVICE_CONTROLS"

    .line 210
    .line 211
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    const-string v5, "/encrypt_controls.xml"

    .line 216
    .line 217
    iget-object v6, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    .line 218
    .line 219
    iget-object v7, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->sessionKey:Ljava/lang/String;

    .line 220
    .line 221
    iget-object v8, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    .line 222
    .line 223
    if-eqz v3, :cond_d

    .line 224
    .line 225
    const-string v0, "encryptFile "

    .line 226
    .line 227
    iget-object v3, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 228
    .line 229
    const-string/jumbo v9, "start backup"

    .line 230
    .line 231
    .line 232
    invoke-static {v3, v4, v9}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget-object v3, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;->SUCCESS:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    .line 236
    .line 237
    sget-object v9, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->SUCCESS:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 238
    .line 239
    new-instance v10, Lcom/android/systemui/controls/util/ControlsBackupFormat;

    .line 240
    .line 241
    iget-object v11, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 242
    .line 243
    const-string v12, "lockscreen_show_controls"

    .line 244
    .line 245
    const/4 v13, -0x2

    .line 246
    const/4 v14, 0x0

    .line 247
    invoke-interface {v11, v14, v13, v12}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    if-eqz v11, :cond_8

    .line 252
    .line 253
    move/from16 v11, v18

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_8
    move v11, v14

    .line 257
    :goto_7
    iget-object v12, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 258
    .line 259
    move-object/from16 p2, v3

    .line 260
    .line 261
    const-string v3, "lockscreen_allow_trivial_controls"

    .line 262
    .line 263
    invoke-interface {v12, v14, v13, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_9

    .line 268
    .line 269
    move/from16 v3, v18

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_9
    move v3, v14

    .line 273
    :goto_8
    iget-object v12, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 274
    .line 275
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    const-string v12, "ControlsOOBEManageAppsCompleted"

    .line 279
    .line 280
    invoke-static {v2, v12, v14}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 281
    .line 282
    .line 283
    move-result v12

    .line 284
    iget-object v13, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->customControlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 285
    .line 286
    check-cast v13, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 287
    .line 288
    iget-object v13, v13, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 289
    .line 290
    const-string v14, "controls_custom_component"

    .line 291
    .line 292
    move-object/from16 v16, v9

    .line 293
    .line 294
    const/4 v9, 0x0

    .line 295
    invoke-interface {v13, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    new-instance v13, Lcom/android/systemui/controls/util/ControlsBackupSetting;

    .line 300
    .line 301
    invoke-direct {v13, v11, v3, v12, v9}, Lcom/android/systemui/controls/util/ControlsBackupSetting;-><init>(ZZZLjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    new-instance v3, Lcom/android/systemui/controls/util/ControlsBackupControl;

    .line 305
    .line 306
    iget-object v9, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 307
    .line 308
    check-cast v9, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 309
    .line 310
    invoke-virtual {v9}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getFavorites()Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    invoke-direct {v3, v9}, Lcom/android/systemui/controls/util/ControlsBackupControl;-><init>(Ljava/util/List;)V

    .line 315
    .line 316
    .line 317
    invoke-direct {v10, v13, v3}, Lcom/android/systemui/controls/util/ControlsBackupFormat;-><init>(Lcom/android/systemui/controls/util/ControlsBackupSetting;Lcom/android/systemui/controls/util/ControlsBackupControl;)V

    .line 318
    .line 319
    .line 320
    iget-object v3, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 321
    .line 322
    new-instance v9, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v11, "backupFormat="

    .line 325
    .line 326
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    invoke-static {v3, v4, v9}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :try_start_0
    iget-object v3, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsFileLoader:Lcom/android/systemui/controls/util/ControlsFileLoader;

    .line 340
    .line 341
    new-instance v9, Ljava/io/File;

    .line 342
    .line 343
    new-instance v11, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v12, "/controls.xml"

    .line 352
    .line 353
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, v9, v10}, Lcom/android/systemui/controls/util/ControlsFileLoader;->generateResultXML(Ljava/io/File;Lcom/android/systemui/controls/util/ControlsBackupFormat;)Ljava/io/File;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    if-eqz v3, :cond_b

    .line 368
    .line 369
    iget-object v9, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 370
    .line 371
    const-string v10, "generateResultXML pass"

    .line 372
    .line 373
    invoke-static {v9, v4, v10}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    new-instance v9, Ljava/io/File;

    .line 377
    .line 378
    new-instance v10, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    iget-object v5, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->encryptDecryptWrapper:Lcom/android/systemui/controls/util/EncryptDecryptWrapper;

    .line 397
    .line 398
    invoke-virtual {v5, v3, v9, v7, v6}, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->encryptFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;)Z

    .line 399
    .line 400
    .line 401
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    if-eqz v6, :cond_a

    .line 407
    .line 408
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 409
    .line 410
    .line 411
    :cond_a
    iget-object v3, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 412
    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-static {v3, v4, v0}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 426
    .line 427
    .line 428
    goto :goto_a

    .line 429
    :catch_0
    move-exception v0

    .line 430
    move/from16 v17, v5

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_b
    const/4 v5, 0x0

    .line 434
    goto :goto_a

    .line 435
    :catch_1
    move-exception v0

    .line 436
    const/16 v17, 0x0

    .line 437
    .line 438
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 439
    .line 440
    .line 441
    move/from16 v5, v17

    .line 442
    .line 443
    :goto_a
    iget-object v0, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 444
    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    const-string v6, "backup success="

    .line 448
    .line 449
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-static {v0, v4, v3}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    if-nez v5, :cond_c

    .line 463
    .line 464
    sget-object v3, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;->FAIL:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    .line 465
    .line 466
    sget-object v9, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->INVALID_DATA:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 467
    .line 468
    move-object/from16 v18, v3

    .line 469
    .line 470
    move-object/from16 v19, v9

    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_c
    move-object/from16 v18, p2

    .line 474
    .line 475
    move-object/from16 v19, v16

    .line 476
    .line 477
    :goto_b
    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;

    .line 478
    .line 479
    const-string v17, "com.samsung.android.intent.action.RESPONSE_BACKUP_DEVICE_CONTROLS"

    .line 480
    .line 481
    const/16 v20, 0x0

    .line 482
    .line 483
    iget-object v3, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    .line 484
    .line 485
    const/16 v22, 0x0

    .line 486
    .line 487
    iget-object v5, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    .line 488
    .line 489
    move-object/from16 v16, v0

    .line 490
    .line 491
    move-object/from16 v21, v3

    .line 492
    .line 493
    move-object/from16 v23, v5

    .line 494
    .line 495
    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->sendResponse(Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;)V

    .line 499
    .line 500
    .line 501
    iget-object v0, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 502
    .line 503
    const-string v1, "end backup"

    .line 504
    .line 505
    invoke-static {v0, v4, v1}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_d

    .line 509
    .line 510
    :cond_d
    const-string v3, "com.samsung.android.intent.action.REQUEST_RESTORE_DEVICE_CONTROLS"

    .line 511
    .line 512
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_14

    .line 517
    .line 518
    iget-object v0, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 519
    .line 520
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    const-string/jumbo v3, "start restore "

    .line 524
    .line 525
    .line 526
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-static {v0, v4, v3}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    sget-object v3, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;->SUCCESS:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    .line 534
    .line 535
    sget-object v9, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->SUCCESS:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 536
    .line 537
    :try_start_2
    new-instance v0, Ljava/io/File;

    .line 538
    .line 539
    new-instance v10, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    new-instance v5, Ljava/io/File;

    .line 558
    .line 559
    new-instance v10, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v8, "/decrypt_controls.xml"

    .line 568
    .line 569
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v8

    .line 576
    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    iget-object v8, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->encryptDecryptWrapper:Lcom/android/systemui/controls/util/EncryptDecryptWrapper;

    .line 580
    .line 581
    invoke-virtual {v8, v0, v5, v7, v6}, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->decryptFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;)Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-eqz v0, :cond_e

    .line 586
    .line 587
    iget-object v0, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 588
    .line 589
    const-string v6, "decryptFile pass"

    .line 590
    .line 591
    invoke-static {v0, v4, v6}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    iget-object v0, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsFileLoader:Lcom/android/systemui/controls/util/ControlsFileLoader;

    .line 595
    .line 596
    invoke-virtual {v0, v5}, Lcom/android/systemui/controls/util/ControlsFileLoader;->loadResultXml(Ljava/io/File;)Lcom/android/systemui/controls/util/ControlsBackupFormat;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    if-eqz v0, :cond_e

    .line 601
    .line 602
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->restore(Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsBackupFormat;)V

    .line 603
    .line 604
    .line 605
    iget-object v0, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 606
    .line 607
    const-string v5, "loadResultXml pass"

    .line 608
    .line 609
    invoke-static {v0, v4, v5}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 610
    .line 611
    .line 612
    move/from16 v17, v18

    .line 613
    .line 614
    goto :goto_c

    .line 615
    :catch_2
    move-exception v0

    .line 616
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 617
    .line 618
    .line 619
    :cond_e
    const/16 v17, 0x0

    .line 620
    .line 621
    :goto_c
    if-nez v17, :cond_f

    .line 622
    .line 623
    sget-object v3, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;->FAIL:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    .line 624
    .line 625
    sget-object v9, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->INVALID_DATA:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 626
    .line 627
    :cond_f
    move-object/from16 v18, v3

    .line 628
    .line 629
    move-object/from16 v19, v9

    .line 630
    .line 631
    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;

    .line 632
    .line 633
    const-string v17, "com.samsung.android.intent.action.RESPONSE_RESTORE_DEVICE_CONTROLS"

    .line 634
    .line 635
    const/16 v20, 0x0

    .line 636
    .line 637
    iget-object v3, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    .line 638
    .line 639
    const/16 v22, 0x0

    .line 640
    .line 641
    const/16 v23, 0x0

    .line 642
    .line 643
    const/16 v24, 0x60

    .line 644
    .line 645
    const/16 v25, 0x0

    .line 646
    .line 647
    move-object/from16 v16, v0

    .line 648
    .line 649
    move-object/from16 v21, v3

    .line 650
    .line 651
    invoke-direct/range {v16 .. v25}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->sendResponse(Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;)V

    .line 655
    .line 656
    .line 657
    iget-object v0, v1, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 658
    .line 659
    const-string v1, "end restore"

    .line 660
    .line 661
    invoke-static {v0, v4, v1}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    goto :goto_d

    .line 665
    :cond_10
    move-object v15, v14

    .line 666
    add-int/lit8 v5, v5, 0x1

    .line 667
    .line 668
    goto/16 :goto_5

    .line 669
    .line 670
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 671
    .line 672
    invoke-direct {v0, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    throw v0

    .line 676
    :cond_12
    move-object v15, v14

    .line 677
    add-int/lit8 v8, v8, 0x1

    .line 678
    .line 679
    const/4 v15, 0x0

    .line 680
    goto/16 :goto_3

    .line 681
    .line 682
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 683
    .line 684
    invoke-direct {v0, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    throw v0

    .line 688
    :cond_14
    :goto_d
    return-void
.end method

.method public final restore(Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsBackupFormat;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "restore="

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "ControlsBackupRestoreManager"

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 24
    .line 25
    iget-object v1, p2, Lcom/android/systemui/controls/util/ControlsBackupFormat;->setting:Lcom/android/systemui/controls/util/ControlsBackupSetting;

    .line 26
    .line 27
    iget-boolean v3, v1, Lcom/android/systemui/controls/util/ControlsBackupSetting;->showDevice:Z

    .line 28
    .line 29
    const/4 v4, -0x2

    .line 30
    const-string v5, "lockscreen_show_controls"

    .line 31
    .line 32
    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 36
    .line 37
    iget-boolean v3, v1, Lcom/android/systemui/controls/util/ControlsBackupSetting;->controlDevice:Z

    .line 38
    .line 39
    const-string v5, "lockscreen_allow_trivial_controls"

    .line 40
    .line 41
    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    iget-boolean v0, v1, Lcom/android/systemui/controls/util/ControlsBackupSetting;->isOOBECompleted:Z

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v0, "ControlsOOBEManageAppsCompleted"

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-static {p1, v0, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/controls/util/ControlsBackupSetting;->selectedComponent:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string/jumbo v6, "restore "

    .line 78
    .line 79
    .line 80
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v6, ", packageName = "

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v3, v2, v4}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->isPackageInstalledAndEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_1

    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->customControlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 116
    .line 117
    check-cast v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 118
    .line 119
    iget-object v1, v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 120
    .line 121
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v2, "controls_custom_component"

    .line 126
    .line 127
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    .line 133
    .line 134
    :cond_1
    iget-object p2, p2, Lcom/android/systemui/controls/util/ControlsBackupFormat;->controls:Lcom/android/systemui/controls/util/ControlsBackupControl;

    .line 135
    .line 136
    iget-object p2, p2, Lcom/android/systemui/controls/util/ControlsBackupControl;->structures:Ljava/util/List;

    .line 137
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_3

    .line 152
    .line 153
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move-object v2, v1

    .line 158
    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 159
    .line 160
    iget-object v2, v2, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 161
    .line 162
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->isPackageInstalledAndEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_2

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->customControlsController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 181
    .line 182
    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-nez p1, :cond_4

    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :cond_4
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 193
    .line 194
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_6

    .line 206
    .line 207
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    move-object v2, v1

    .line 212
    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 213
    .line 214
    iget-object v2, v2, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 215
    .line 216
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    if-nez v3, :cond_5

    .line 221
    .line 222
    new-instance v3, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    :cond_5
    check-cast v3, Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_6
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-eqz p2, :cond_7

    .line 249
    .line 250
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    check-cast p2, Ljava/util/Map$Entry;

    .line 255
    .line 256
    new-instance v1, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 257
    .line 258
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    check-cast v2, Landroid/content/ComponentName;

    .line 263
    .line 264
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p2, Ljava/util/List;

    .line 269
    .line 270
    invoke-direct {v1, v2, p2}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 271
    .line 272
    .line 273
    const/4 p2, 0x0

    .line 274
    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->replaceFavoritesForComponent(Lcom/android/systemui/controls/controller/ComponentInfo;Z)V

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string/jumbo p1, "restore backupStructures="

    .line 281
    .line 282
    .line 283
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    const-string p1, "ControlsControllerImpl"

    .line 294
    .line 295
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    .line 299
    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string/jumbo v0, "restore result="

    .line 310
    .line 311
    .line 312
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    :goto_3
    return-void
.end method

.method public final sendResponse(Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    iget-object v1, p2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "RESULT"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    iget-object v1, p2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->getValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-string v2, "ERR_CODE"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v1, "REQ_SIZE"

    .line 34
    .line 35
    iget v2, p2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string v1, "SOURCE"

    .line 41
    .line 42
    iget-object v2, p2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    iget-object v1, p2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    const-string v2, "EXPORT_SESSION_TIME"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    :cond_0
    const-string v1, "EXTRA_ERR_CODE"

    .line 57
    .line 58
    iget-object p2, p2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string p2, "com.wssnps.permission.COM_WSSNPS"

    .line 64
    .line 65
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsLogger:Lcom/android/systemui/controls/util/ControlsLogger;

    .line 69
    .line 70
    const-string p1, "ControlsBackupRestoreManager"

    .line 71
    .line 72
    const-string/jumbo p2, "send response"

    .line 73
    .line 74
    .line 75
    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/util/ControlsLogger;->printLog$default(Lcom/android/systemui/controls/util/ControlsLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
