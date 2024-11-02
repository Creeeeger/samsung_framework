.class public final Lcom/android/systemui/assist/AssistManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

.field public final mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

.field public mAssistPopupPositiveClicked:Z

.field public final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDisabledFlags:I

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public mIsAssistAppAvailable:Z

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSysUiState:Ldagger/Lazy;

.field public final mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Ldagger/Lazy;Lcom/android/systemui/assist/ui/DefaultUiController;Lcom/android/systemui/assist/AssistLogger;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/AssistUtils;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            "Lcom/android/systemui/assist/AssistLogger;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/android/systemui/assist/AssistManager;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 14
    .line 15
    new-instance p1, Lcom/android/systemui/assist/AssistDisclosure;

    .line 16
    .line 17
    invoke-direct {p1, p2, p10}, Lcom/android/systemui/assist/AssistDisclosure;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 23
    .line 24
    iput-object p9, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    .line 25
    .line 26
    iput-object p11, p0, Lcom/android/systemui/assist/AssistManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 27
    .line 28
    iput-object p12, p0, Lcom/android/systemui/assist/AssistManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 29
    .line 30
    iput-object p13, p0, Lcom/android/systemui/assist/AssistManager;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 31
    .line 32
    new-instance p1, Lcom/android/systemui/assist/AssistManager$2;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/android/systemui/assist/AssistManager$2;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    .line 38
    .line 39
    .line 40
    iput-object p8, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

    .line 41
    .line 42
    iput-object p7, p0, Lcom/android/systemui/assist/AssistManager;->mSysUiState:Ldagger/Lazy;

    .line 43
    .line 44
    new-instance p1, Lcom/android/systemui/assist/AssistManager$1;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/android/systemui/assist/AssistManager$1;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p6, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final getDefaultRecognizer()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "android.speech.RecognitionService"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x80

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .line 28
    .line 29
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 30
    .line 31
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    :goto_0
    const-string p0, "AssistManager"

    .line 44
    .line 45
    const-string v0, "Unable to resolve default voice recognition service."

    .line 46
    .line 47
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const-string p0, ""

    .line 51
    .line 52
    return-object p0
.end method

.method public final hideAssist()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final showAssistanceAppSettingAlertDialog()V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    .line 4
    .line 5
    if-nez v0, :cond_a

    .line 6
    .line 7
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const v3, 0x7f14055f

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 22
    .line 23
    const v3, 0x7f0d0038

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const v0, 0x7f0a0bd9

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    .line 41
    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const v6, 0x7f1301a5

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const v6, 0x7f1301a4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v6, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    .line 79
    .line 80
    const v0, 0x7f0d0039

    .line 81
    .line 82
    .line 83
    invoke-direct {v6, v1, v2, v0, v5}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object v7, v1, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 91
    .line 92
    invoke-virtual {v7, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    const-string v0, ""

    .line 97
    .line 98
    if-eqz v8, :cond_1

    .line 99
    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    invoke-virtual {v7, v9}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    move-object v7, v0

    .line 114
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    new-instance v10, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v11, Landroid/content/Intent;

    .line 124
    .line 125
    const-string v12, "android.service.voice.VoiceInteractionService"

    .line 126
    .line 127
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/16 v12, 0x80

    .line 131
    .line 132
    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    const/4 v13, -0x1

    .line 137
    move-object v14, v4

    .line 138
    const/4 v15, 0x0

    .line 139
    move/from16 v27, v13

    .line 140
    .line 141
    move-object v13, v0

    .line 142
    move/from16 v0, v27

    .line 143
    .line 144
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const-string v12, "AssistManager"

    .line 149
    .line 150
    move-object/from16 v17, v13

    .line 151
    .line 152
    const-string v13, " not found"

    .line 153
    .line 154
    move-object/from16 v18, v14

    .line 155
    .line 156
    const-string v14, "Failed to add assistance app "

    .line 157
    .line 158
    if-ge v15, v4, :cond_5

    .line 159
    .line 160
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 165
    .line 166
    move-object/from16 v25, v11

    .line 167
    .line 168
    new-instance v11, Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 169
    .line 170
    move/from16 v19, v0

    .line 171
    .line 172
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 173
    .line 174
    invoke-direct {v11, v9, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 178
    .line 179
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v11}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_2

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_2
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_3

    .line 193
    .line 194
    :goto_3
    move-object/from16 v26, v3

    .line 195
    .line 196
    move-object/from16 v13, v17

    .line 197
    .line 198
    move-object/from16 v14, v18

    .line 199
    .line 200
    move/from16 v0, v19

    .line 201
    .line 202
    goto/16 :goto_a

    .line 203
    .line 204
    :cond_3
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_4

    .line 212
    .line 213
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    move-object/from16 v26, v3

    .line 218
    .line 219
    const/4 v3, 0x1

    .line 220
    sub-int/2addr v0, v3

    .line 221
    move/from16 v16, v0

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_4
    move-object/from16 v26, v3

    .line 225
    .line 226
    const/4 v3, 0x1

    .line 227
    move/from16 v16, v19

    .line 228
    .line 229
    :goto_4
    const/4 v3, 0x0

    .line 230
    :try_start_0
    invoke-virtual {v9, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/4 v3, 0x1

    .line 235
    invoke-virtual {v9, v1, v3}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 236
    .line 237
    .line 238
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 239
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 240
    .line 241
    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v13
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    move-object v14, v3

    .line 250
    goto :goto_9

    .line 251
    :catch_0
    move-exception v0

    .line 252
    goto :goto_5

    .line 253
    :catch_1
    move-exception v0

    .line 254
    goto :goto_6

    .line 255
    :catch_2
    move-exception v0

    .line 256
    move-object/from16 v18, v3

    .line 257
    .line 258
    goto :goto_8

    .line 259
    :catch_3
    move-exception v0

    .line 260
    move-object/from16 v3, v18

    .line 261
    .line 262
    :goto_5
    new-instance v13, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .line 276
    .line 277
    goto :goto_7

    .line 278
    :catch_4
    move-exception v0

    .line 279
    move-object/from16 v3, v18

    .line 280
    .line 281
    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .line 295
    .line 296
    :goto_7
    move-object v14, v3

    .line 297
    move-object/from16 v13, v17

    .line 298
    .line 299
    goto :goto_9

    .line 300
    :catch_5
    move-exception v0

    .line 301
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-static {v12, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .line 318
    .line 319
    move-object/from16 v13, v17

    .line 320
    .line 321
    move-object/from16 v14, v18

    .line 322
    .line 323
    :goto_9
    new-instance v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    .line 324
    .line 325
    new-instance v3, Landroid/content/ComponentName;

    .line 326
    .line 327
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 328
    .line 329
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 330
    .line 331
    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const/16 v24, 0x1

    .line 335
    .line 336
    move-object/from16 v19, v0

    .line 337
    .line 338
    move-object/from16 v20, v3

    .line 339
    .line 340
    move-object/from16 v21, v11

    .line 341
    .line 342
    move-object/from16 v22, v14

    .line 343
    .line 344
    move-object/from16 v23, v13

    .line 345
    .line 346
    invoke-direct/range {v19 .. v24}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move/from16 v0, v16

    .line 353
    .line 354
    :goto_a
    add-int/lit8 v15, v15, 0x1

    .line 355
    .line 356
    move-object/from16 v1, p0

    .line 357
    .line 358
    move-object/from16 v11, v25

    .line 359
    .line 360
    move-object/from16 v3, v26

    .line 361
    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :cond_5
    move/from16 v19, v0

    .line 365
    .line 366
    move-object/from16 v26, v3

    .line 367
    .line 368
    new-instance v0, Landroid/content/Intent;

    .line 369
    .line 370
    const-string v1, "android.intent.action.ASSIST"

    .line 371
    .line 372
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    const/high16 v1, 0x10000

    .line 376
    .line 377
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    move/from16 v0, v19

    .line 382
    .line 383
    const/4 v3, 0x0

    .line 384
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-ge v3, v4, :cond_8

    .line 389
    .line 390
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 395
    .line 396
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 397
    .line 398
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v15

    .line 404
    if-eqz v15, :cond_6

    .line 405
    .line 406
    goto/16 :goto_e

    .line 407
    .line 408
    :cond_6
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v15

    .line 415
    if-eqz v15, :cond_7

    .line 416
    .line 417
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    const/4 v15, 0x1

    .line 422
    sub-int/2addr v0, v15

    .line 423
    goto :goto_c

    .line 424
    :cond_7
    const/4 v15, 0x1

    .line 425
    :goto_c
    move/from16 v19, v0

    .line 426
    .line 427
    const/4 v15, 0x0

    .line 428
    :try_start_2
    invoke-virtual {v9, v11, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    const/4 v15, 0x1

    .line 433
    invoke-virtual {v9, v11, v15}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 434
    .line 435
    .line 436
    move-result-object v18

    .line 437
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 438
    .line 439
    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v17
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6

    .line 447
    goto :goto_d

    .line 448
    :catch_6
    move-exception v0

    .line 449
    new-instance v15, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v15

    .line 461
    invoke-static {v12, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .line 463
    .line 464
    goto :goto_d

    .line 465
    :catch_7
    move-exception v0

    .line 466
    new-instance v15, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v15

    .line 478
    invoke-static {v12, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .line 480
    .line 481
    goto :goto_d

    .line 482
    :catch_8
    move-exception v0

    .line 483
    new-instance v15, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v15

    .line 498
    invoke-static {v12, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    .line 500
    .line 501
    :goto_d
    new-instance v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    .line 502
    .line 503
    new-instance v15, Landroid/content/ComponentName;

    .line 504
    .line 505
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 506
    .line 507
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 508
    .line 509
    invoke-direct {v15, v11, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    const/16 v22, 0x0

    .line 513
    .line 514
    const/16 v25, 0x2

    .line 515
    .line 516
    move-object/from16 v20, v0

    .line 517
    .line 518
    move-object/from16 v21, v15

    .line 519
    .line 520
    move-object/from16 v23, v18

    .line 521
    .line 522
    move-object/from16 v24, v17

    .line 523
    .line 524
    invoke-direct/range {v20 .. v25}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move/from16 v0, v19

    .line 531
    .line 532
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 533
    .line 534
    goto/16 :goto_b

    .line 535
    .line 536
    :cond_8
    new-instance v1, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    .line 537
    .line 538
    const/16 v20, 0x0

    .line 539
    .line 540
    const/16 v21, 0x0

    .line 541
    .line 542
    const v3, 0x7f080a67

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 546
    .line 547
    .line 548
    move-result-object v22

    .line 549
    const v3, 0x7f1301a6

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v23

    .line 556
    const/16 v24, 0x0

    .line 557
    .line 558
    move-object/from16 v19, v1

    .line 559
    .line 560
    invoke-direct/range {v19 .. v24}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    if-gez v0, :cond_9

    .line 567
    .line 568
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    :cond_9
    iput v0, v6, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    .line 573
    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v3, "Current assistance app - "

    .line 577
    .line 578
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    const-string v3, " package name - "

    .line 585
    .line 586
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v3, " defaultItem - "

    .line 593
    .line 594
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .line 606
    .line 607
    new-instance v1, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;

    .line 608
    .line 609
    const/4 v3, 0x0

    .line 610
    invoke-direct {v1, v5, v6, v3}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;I)V

    .line 611
    .line 612
    .line 613
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 614
    .line 615
    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 616
    .line 617
    .line 618
    move-object/from16 v2, v26

    .line 619
    .line 620
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v3, v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 624
    .line 625
    .line 626
    const/high16 v0, 0x1040000

    .line 627
    .line 628
    const/4 v1, 0x0

    .line 629
    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 630
    .line 631
    .line 632
    new-instance v0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;

    .line 633
    .line 634
    const/4 v2, 0x1

    .line 635
    move-object/from16 v1, p0

    .line 636
    .line 637
    invoke-direct {v0, v1, v6, v2}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;I)V

    .line 638
    .line 639
    .line 640
    const v2, 0x104000a

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    .line 645
    .line 646
    new-instance v0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda1;

    .line 647
    .line 648
    invoke-direct {v0, v1}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    .line 653
    .line 654
    const/4 v2, 0x0

    .line 655
    iput-boolean v2, v1, Lcom/android/systemui/assist/AssistManager;->mAssistPopupPositiveClicked:Z

    .line 656
    .line 657
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    iput-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    .line 662
    .line 663
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    const/16 v2, 0x7d9

    .line 668
    .line 669
    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 670
    .line 671
    .line 672
    iget-object v0, v1, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    .line 673
    .line 674
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 675
    .line 676
    .line 677
    const-string v0, "980"

    .line 678
    .line 679
    const-string v1, "9800"

    .line 680
    .line 681
    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    :cond_a
    return-void
.end method

.method public final showDisclosure()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 15
    .line 16
    const-string v1, "assist_disclosure_enabled"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string p0, "AssistDisclosure"

    .line 34
    .line 35
    const-string v0, "AssistDisclosure VI is disabled"

    .line 36
    .line 37
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mShowRunnable:Lcom/android/systemui/assist/AssistDisclosure$1;

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method public final startAssist(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lcom/android/systemui/assist/AssistManager;->mDisabledFlags:I

    .line 14
    .line 15
    const/high16 v4, 0x2000000

    .line 16
    .line 17
    and-int/2addr v1, v4

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v1, v2

    .line 24
    :goto_1
    if-eqz v1, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    if-eqz p1, :cond_3

    .line 28
    .line 29
    const-string v1, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    move v1, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    move v1, v3

    .line 40
    :goto_2
    const-string v4, "AssistanceAppSettingAlreadySelected"

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    invoke-static {v5, v4, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_6

    .line 51
    .line 52
    const-string v1, "AssistanceMetaKeyPressed"

    .line 53
    .line 54
    invoke-static {v5, v1, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_6

    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    new-instance p1, Landroid/content/Intent;

    .line 71
    .line 72
    const-string v0, "android.intent.action.MANAGE_DEFAULT_APP"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p1, "android.intent.extra.ROLE_NAME"

    .line 82
    .line 83
    const-string v0, "android.app.role.ASSISTANT"

    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    const/4 p0, 0x0

    .line 91
    :goto_3
    if-eqz p0, :cond_5

    .line 92
    .line 93
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 94
    .line 95
    invoke-virtual {v5, p0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v5, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    :cond_5
    return-void

    .line 102
    :cond_6
    sget-boolean v1, Lcom/android/systemui/BasicRune;->ASSIST_ASSISTANCE_APP_SETTING_POPUP:Z

    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    invoke-static {v5, v4, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-nez v4, :cond_7

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showAssistanceAppSettingAlertDialog()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_7
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 117
    .line 118
    const-string v6, "invocation_type"

    .line 119
    .line 120
    if-eqz v4, :cond_9

    .line 121
    .line 122
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    const v7, 0x1110033

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    iget-object v8, p0, Lcom/android/systemui/assist/AssistManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 138
    .line 139
    check-cast v8, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 140
    .line 141
    invoke-virtual {v8}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    const-string v9, "assist_long_press_home_enabled"

    .line 146
    .line 147
    invoke-static {v7, v9, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_8

    .line 152
    .line 153
    move v4, v2

    .line 154
    goto :goto_4

    .line 155
    :cond_8
    move v4, v3

    .line 156
    :goto_4
    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    const/4 v8, 0x5

    .line 161
    if-ne v7, v8, :cond_9

    .line 162
    .line 163
    if-nez v4, :cond_9

    .line 164
    .line 165
    return-void

    .line 166
    :cond_9
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    iget-object v7, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 171
    .line 172
    invoke-virtual {v7, v4}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    if-nez v4, :cond_a

    .line 177
    .line 178
    return-void

    .line 179
    :cond_a
    invoke-virtual {v7}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-virtual {v4, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-nez p1, :cond_b

    .line 188
    .line 189
    new-instance p1, Landroid/os/Bundle;

    .line 190
    .line 191
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 192
    .line 193
    .line 194
    :cond_b
    move-object v9, p1

    .line 195
    invoke-virtual {v9, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    iget-object v6, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 200
    .line 201
    invoke-virtual {v6}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    const-string v8, "invocation_phone_state"

    .line 206
    .line 207
    invoke-virtual {v9, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    const-string v8, "invocation_time_ms"

    .line 211
    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 213
    .line 214
    .line 215
    move-result-wide v10

    .line 216
    invoke-virtual {v9, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 217
    .line 218
    .line 219
    iget-object v8, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    .line 220
    .line 221
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    invoke-virtual {v8, p1, v2, v4, v10}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantInvocationEventFromLegacy(IZLandroid/content/ComponentName;Ljava/lang/Integer;)V

    .line 226
    .line 227
    .line 228
    new-instance v8, Landroid/metrics/LogMaker;

    .line 229
    .line 230
    const/16 v10, 0x6b4

    .line 231
    .line 232
    invoke-direct {v8, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    shl-int/2addr p1, v2

    .line 240
    or-int/2addr p1, v3

    .line 241
    shl-int/lit8 v6, v6, 0x4

    .line 242
    .line 243
    or-int/2addr p1, v6

    .line 244
    invoke-virtual {v8, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 249
    .line 250
    .line 251
    if-eqz v1, :cond_c

    .line 252
    .line 253
    iget-boolean p1, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    .line 254
    .line 255
    if-nez p1, :cond_c

    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showAssistanceAppSettingAlertDialog()V

    .line 258
    .line 259
    .line 260
    iput-boolean v2, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    .line 261
    .line 262
    :cond_c
    if-eqz v7, :cond_d

    .line 263
    .line 264
    iget-object v8, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 265
    .line 266
    const/4 v10, 0x4

    .line 267
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    const/4 v12, 0x0

    .line 272
    const/4 v13, 0x0

    .line 273
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    .line 274
    .line 275
    .line 276
    goto/16 :goto_7

    .line 277
    .line 278
    :cond_d
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-nez p1, :cond_e

    .line 283
    .line 284
    goto/16 :goto_7

    .line 285
    .line 286
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 287
    .line 288
    const/4 v0, 0x3

    .line 289
    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 290
    .line 291
    .line 292
    const-string p1, "assist_structure_enabled"

    .line 293
    .line 294
    const/4 v0, -0x2

    .line 295
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 296
    .line 297
    invoke-interface {v1, v2, v0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    if-eqz p1, :cond_f

    .line 302
    .line 303
    move p1, v2

    .line 304
    goto :goto_5

    .line 305
    :cond_f
    move p1, v3

    .line 306
    :goto_5
    const-string/jumbo v0, "search"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    check-cast v0, Landroid/app/SearchManager;

    .line 314
    .line 315
    if-nez v0, :cond_10

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_10
    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    if-nez v0, :cond_11

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_11
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    if-eqz p1, :cond_13

    .line 332
    .line 333
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 334
    .line 335
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 340
    .line 341
    iget-object p1, p1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 342
    .line 343
    const-string v1, "assist_disclosure_enabled"

    .line 344
    .line 345
    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-eqz p1, :cond_12

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_12
    move v2, v3

    .line 357
    :goto_6
    if-eqz v2, :cond_13

    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 360
    .line 361
    .line 362
    :cond_13
    const p1, 0x7f01020e

    .line 363
    .line 364
    .line 365
    const v1, 0x7f01020f

    .line 366
    .line 367
    .line 368
    :try_start_0
    invoke-static {v5, p1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    const/high16 v1, 0x10000000

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    .line 376
    .line 377
    new-instance v1, Lcom/android/systemui/assist/AssistManager$3;

    .line 378
    .line 379
    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/assist/AssistManager$3;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .line 384
    .line 385
    goto :goto_7

    .line 386
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string p1, "Activity not found for "

    .line 389
    .line 390
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    const-string p1, "AssistManager"

    .line 405
    .line 406
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    :goto_7
    return-void
.end method
