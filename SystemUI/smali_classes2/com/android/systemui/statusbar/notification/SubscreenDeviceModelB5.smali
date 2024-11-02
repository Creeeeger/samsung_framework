.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;
.super Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final DISPLAY_LANG_CODE_DELIMITER:Ljava/lang/String;

.field public final SR_LLM_PACKAGE_NAME:Ljava/lang/String;

.field public aiDisclaimerBtn:Landroid/widget/ImageView;

.field public final aodTspUpdateReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;

.field public final broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$broadcastReceiver$1;

.field public callBackButtonText:Landroid/widget/TextView;

.field public childGraduateAge:I

.field public clearButtonText:Landroid/widget/TextView;

.field public currentAccount:Landroid/accounts/Account;

.field public detailButtonContainer:Landroid/widget/LinearLayout;

.field public detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public isAiInfoConfirmed:Z

.field public isChildAccount:Z

.field public final isDebug:Z

.field public isPossibleAiReply:Z

.field public isRDUMode:Z

.field public isSALoggedIn:Z

.field public isSuggestResponsesEnabled:Z

.field public isUnusableAccount:Z

.field public keyboardReplyButton:Landroid/widget/ImageView;

.field public mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

.field public mHeaderViewLayout:Landroid/view/View;

.field public mIsClickedPopupKeyguardUnlockShowing:Z

.field public mIsContentScroll:Z

.field public mIsNaviBarBackButtonClicked:Z

.field public mIsReplySendButtonLoading:Z

.field public mIsStartedReplyActivity:Z

.field public final mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

.field public mProgressScaleAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mPromptSB:Ljava/lang/StringBuilder;

.field public final mPromptSBForLog:Ljava/lang/StringBuilder;

.field public mReplyLayoutCurrentPostionY:F

.field public mSmartReplyClickedByUser:Z

.field public final mSmartReplyHashMap:Ljava/util/LinkedHashMap;

.field public mSmartReplyResult:I

.field public mSmartReplyResultCompleteMsg:Ljava/lang/StringBuilder;

.field public mSmartReplyResultFailureMsg:Ljava/lang/String;

.field public final mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

.field public final mSrResponseCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

.field public mUnlockNotificationPendingIntentItemKey:Ljava/lang/String;

.field public metaData:Ljava/lang/String;

.field public final onDeviceLanguageList:Ljava/util/List;

.field public openAppButtonText:Landroid/widget/TextView;

.field public final pkgBroadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$pkgBroadcastReceiver$1;

.field public progressLayout:Landroid/widget/LinearLayout;

.field public progressingVi:Lcom/airbnb/lottie/LottieAnimationView;

.field public replyButtonText:Landroid/widget/TextView;

.field public sendButtonPopupWindow:Landroid/widget/PopupWindow;

.field public smartReplyAiLogoText:Landroid/widget/TextView;

.field public smartReplyErrorMessageView:Landroid/widget/TextView;

.field public smartReplyStatus:I

.field public smartReplyTriggerBtn:Landroid/widget/ImageView;

.field public smartReplyTriggerBtnText:Landroid/widget/TextView;

.field public suggestResponsesBtn:Landroid/widget/LinearLayout;

.field public titleText:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/settings/UserContextProvider;",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/systemui/log/LogBuffer;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;",
            "Lcom/android/systemui/bixby2/controller/NotificationController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p16}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x2

    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v1, v2

    .line 23
    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isDebug:Z

    .line 24
    .line 25
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsContentScroll:Z

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->titleText:Ljava/lang/CharSequence;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSB:Ljava/lang/StringBuilder;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSBForLog:Ljava/lang/StringBuilder;

    .line 44
    .line 45
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyHashMap:Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$broadcastReceiver$1;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$broadcastReceiver$1;

    .line 58
    .line 59
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$pkgBroadcastReceiver$1;

    .line 60
    .line 61
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$pkgBroadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 62
    .line 63
    .line 64
    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->pkgBroadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$pkgBroadcastReceiver$1;

    .line 65
    .line 66
    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;

    .line 67
    .line 68
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 69
    .line 70
    .line 71
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->aodTspUpdateReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;

    .line 72
    .line 73
    new-instance v4, Landroid/content/IntentFilter;

    .line 74
    .line 75
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v5, "com.samsung.android.action.UNLOCK_NOTIFICATION_PENDING_INTENT"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v5, "com.samsung.android.action.INTELLIGENCE_SERVICE_SETTINGS_START_INTENT"

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-boolean v5, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 94
    .line 95
    if-eqz v5, :cond_2

    .line 96
    .line 97
    const-string v6, "com.samsung.android.action.INTELLIGENCE_SERVICE_PROCESSING_ONLINE_INTENT"

    .line 98
    .line 99
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    const/4 v8, 0x0

    .line 106
    const/4 v9, 0x2

    .line 107
    const/4 v10, 0x0

    .line 108
    move-object p2, p1

    .line 109
    move-object p3, v1

    .line 110
    move-object p4, v6

    .line 111
    move-object/from16 p5, v4

    .line 112
    .line 113
    move-object/from16 p6, v10

    .line 114
    .line 115
    move-object/from16 p7, v8

    .line 116
    .line 117
    move/from16 p8, v9

    .line 118
    .line 119
    invoke-virtual/range {p2 .. p8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    new-instance v1, Landroid/content/IntentFilter;

    .line 123
    .line 124
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 128
    .line 129
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    .line 133
    .line 134
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string/jumbo v4, "package"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    const/4 v8, 0x2

    .line 152
    move-object p2, v3

    .line 153
    move-object p3, v4

    .line 154
    move-object p4, v1

    .line 155
    move-object/from16 p5, v6

    .line 156
    .line 157
    move-object/from16 p6, v7

    .line 158
    .line 159
    move/from16 p7, v8

    .line 160
    .line 161
    invoke-virtual/range {p1 .. p7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 165
    .line 166
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 171
    .line 172
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 173
    .line 174
    if-eqz v1, :cond_3

    .line 175
    .line 176
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initKeyguardStateConroller$1;

    .line 177
    .line 178
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initKeyguardStateConroller$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 179
    .line 180
    .line 181
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    .line 187
    .line 188
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSmartReplyVariables()V

    .line 194
    .line 195
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->onDeviceLanguageList:Ljava/util/List;

    .line 202
    .line 203
    const-string v1, "com.samsung.android.offline.languagemodel"

    .line 204
    .line 205
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->SR_LLM_PACKAGE_NAME:Ljava/lang/String;

    .line 206
    .line 207
    const-string v1, "-"

    .line 208
    .line 209
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->DISPLAY_LANG_CODE_DELIMITER:Ljava/lang/String;

    .line 210
    .line 211
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    .line 212
    .line 213
    const/4 v1, -0x1

    .line 214
    iput v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    .line 215
    .line 216
    if-eqz v5, :cond_4

    .line 217
    .line 218
    new-instance v1, Lnotification/src/com/android/systemui/CloudPromptProcessor;

    .line 219
    .line 220
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    invoke-direct {v1, v2}, Lnotification/src/com/android/systemui/CloudPromptProcessor;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_4
    new-instance v1, Lnotification/src/com/android/systemui/SrPromptProcessor;

    .line 227
    .line 228
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    invoke-direct {v1, v2}, Lnotification/src/com/android/systemui/SrPromptProcessor;-><init>(Landroid/content/Context;)V

    .line 231
    .line 232
    .line 233
    :goto_2
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    .line 234
    .line 235
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

    .line 236
    .line 237
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 238
    .line 239
    .line 240
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrResponseCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

    .line 241
    .line 242
    return-void
.end method

.method public static final access$handleTextLinkClick(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "android.intent.action.VIEW"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getIsoCountryCode()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "&applicationRegion="

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "&language="

    .line 33
    .line 34
    invoke-static {v3, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getIsoCountryCode()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "&region="

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "&type="

    .line 49
    .line 50
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v5, "https://policies.account.samsung.com/terms?appKey=j5p7ll8g33"

    .line 57
    .line 58
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const/high16 p1, 0x10000000

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const/high16 p1, 0xc000000

    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-static {v1, v2, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v0, Landroid/content/Intent;

    .line 99
    .line 100
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string/jumbo v1, "runOnCover"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    const-string v1, "ignoreKeyguardState"

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    const-string/jumbo v1, "showCoverToast"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 122
    .line 123
    if-eqz p0, :cond_0

    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 126
    .line 127
    if-eqz p0, :cond_0

    .line 128
    .line 129
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 130
    .line 131
    .line 132
    :cond_0
    return-void
.end method

.method public static final access$handleTurnOnClick(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string/jumbo v3, "suggestion_responses"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput v2, v0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->setSuggestResponsesUsed()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSmartReplyUnusable()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    .line 48
    .line 49
    xor-int/2addr v0, v2

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->suggestResponsesBtn:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    :cond_1
    const/16 v1, 0x8

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleTurnOnClick$1;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleTurnOnClick$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public static final access$isSupportableLanguage(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->onDeviceLanguageList:Ljava/util/List;

    .line 10
    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->language:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    :goto_1
    return p0
.end method

.method public static final access$showReplyActivity(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsStartedReplyActivity:Z

    .line 2
    .line 3
    const-string v1, "S.S.N."

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "showReplyActivity mIsStartedReplyActivity is true"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsStartedReplyActivity:Z

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    new-instance v3, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 28
    .line 29
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 30
    .line 31
    const-string v5, "key"

    .line 32
    .line 33
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 37
    .line 38
    iget v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputMaxLength:I

    .line 39
    .line 40
    const-string v5, "maxLength"

    .line 41
    .line 42
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 46
    .line 47
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputIsSms:Z

    .line 48
    .line 49
    const-string v5, "isSms"

    .line 50
    .line 51
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 55
    .line 56
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputSignature:Ljava/lang/String;

    .line 57
    .line 58
    const-string/jumbo v5, "signature"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Landroid/content/Intent;

    .line 65
    .line 66
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 67
    .line 68
    .line 69
    const/high16 v5, 0x14000000

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    const-string v5, "com.android.systemui"

    .line 75
    .line 76
    const-string v6, "com.android.systemui.statusbar.notification.SubscreenNotificationReplyActivity"

    .line 77
    .line 78
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v0}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 99
    .line 100
    if-eqz p0, :cond_1

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 105
    .line 106
    const/4 v2, 0x2

    .line 107
    new-array v2, v2, [F

    .line 108
    .line 109
    fill-array-data v2, :array_0

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-wide/16 v5, 0x12c

    .line 117
    .line 118
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;

    .line 123
    .line 124
    invoke-direct {v0, p1, v4, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 131
    .line 132
    .line 133
    :cond_1
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 136
    .line 137
    const-string/jumbo p1, "start SubscreenNotificationReplyActivity. key: "

    .line 138
    .line 139
    .line 140
    invoke-static {p1, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    .line 146
    .line 147
    const-string p1, "QPNE0203"

    .line 148
    .line 149
    const-string p2, "app"

    .line 150
    .line 151
    const-string v0, "QPN102"

    .line 152
    .line 153
    invoke-static {v0, p1, p2, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_2
    :goto_0
    return-void

    .line 157
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static bindContent(Landroid/view/View;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 3

    .line 1
    const v0, 0x7f0a0311

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    move v2, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v1

    .line 31
    :goto_0
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v1

    .line 35
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iput-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method public static bindTime(Landroid/view/View;JLcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const v0, 0x7f0a030e

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/widget/DateTimeView;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iput-object p0, p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method public static isCallNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.skt.prod.dialer"

    .line 8
    .line 9
    const-string v2, "com.samsung.android.incallui"

    .line 10
    .line 11
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    :goto_0
    const-string v0, "call"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_1
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static showErrorMessageWithAnim(Landroid/view/View;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-wide/16 v0, 0xc8

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelReplySendButtonAnimator()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    .line 3
    .line 4
    return-void
.end method

.method public final clickAdapterItem(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isCallNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "S.S.N."

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 20
    .line 21
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object p2, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startNotificationIntent(Landroid/app/PendingIntent;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "callNotificationLaunchApp B5 - "

    .line 36
    .line 37
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ", result: "

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    const-string p0, "QPN100"

    .line 61
    .line 62
    const-string p1, "QPNE0213"

    .line 63
    .line 64
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 103
    .line 104
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsCall:Z

    .line 105
    .line 106
    if-nez v2, :cond_1

    .line 107
    .line 108
    const-string v2, "alarm"

    .line 109
    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    :cond_1
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 121
    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v0, "clickAdapterItem B5 - put fullscreenIntent : "

    .line 125
    .line 126
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {p2, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    .line 135
    .line 136
    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->makeSubScreenNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showSubscreenNotification()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    const/4 v2, 0x1

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    .line 152
    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 156
    .line 157
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_3

    .line 164
    .line 165
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_4

    .line 176
    .line 177
    :cond_3
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 182
    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showBouncer(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 184
    .line 185
    .line 186
    if-eqz v3, :cond_8

    .line 187
    .line 188
    iput v2, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    .line 189
    .line 190
    iput-object p2, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardUnlockShowing()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    const-string p0, "keyguard"

    .line 200
    .line 201
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    check-cast p0, Landroid/app/KeyguardManager;

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    .line 208
    .line 209
    .line 210
    if-eqz v3, :cond_8

    .line 211
    .line 212
    iput v2, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    .line 213
    .line 214
    iput-object p2, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_5
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 218
    .line 219
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 220
    .line 221
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clickKnoxItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_6

    .line 228
    .line 229
    const-string p0, " clickAdapterItem - clickKnoxItem is true"

    .line 230
    .line 231
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 236
    .line 237
    if-eqz p0, :cond_7

    .line 238
    .line 239
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_7
    const/4 p1, 0x0

    .line 243
    :goto_0
    const/4 v0, 0x0

    .line 244
    invoke-virtual {p2, p1, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->animateClickNotification(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Z)V

    .line 245
    .line 246
    .line 247
    :cond_8
    :goto_1
    return-void
.end method

.method public final clickKnoxItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, " clickKnoxItem - isKnoxSecurity : "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "S.S.N."

    .line 27
    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v0, v1

    .line 58
    :goto_0
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 71
    .line 72
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 73
    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 77
    .line 78
    if-eqz p0, :cond_2

    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {p0, v1, p1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    const/4 p0, 0x1

    .line 86
    return p0

    .line 87
    :cond_3
    const/4 p0, 0x0

    .line 88
    return p0
.end method

.method public final closeFullscreenFullPopupWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFullscreenFullPopupWindowClosing:Z

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final detailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, v0

    .line 8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, " DETAIL CLICKED B5 - "

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "S.S.N."

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->skipDetailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->closeFullscreenFullPopupWindow()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsContentScroll:Z

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v4, 0x4

    .line 67
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    .line 68
    .line 69
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    if-eqz v1, :cond_6

    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    :cond_4
    invoke-virtual {p0, v6, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showBouncer(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 91
    .line 92
    .line 93
    if-eqz v5, :cond_5

    .line 94
    .line 95
    iput v4, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    .line 96
    .line 97
    iput-object p1, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 98
    .line 99
    :cond_5
    return-void

    .line 100
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardUnlockShowing()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v7, 0x0

    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    const-string v1, "keyguard"

    .line 108
    .line 109
    invoke-virtual {v6, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Landroid/app/KeyguardManager;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    .line 116
    .line 117
    .line 118
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsClickedPopupKeyguardUnlockShowing:Z

    .line 119
    .line 120
    if-eqz v5, :cond_a

    .line 121
    .line 122
    iput v4, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    .line 123
    .line 124
    iput-object p1, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clickKnoxItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    const-string v1, " detailClicked - clickKnoxItem is true"

    .line 134
    .line 135
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsClickedPopupKeyguardUnlockShowing:Z

    .line 140
    .line 141
    if-eqz v1, :cond_9

    .line 142
    .line 143
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsClickedPopupKeyguardUnlockShowing:Z

    .line 144
    .line 145
    :cond_9
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->detailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 146
    .line 147
    .line 148
    :cond_a
    :goto_1
    if-eqz p1, :cond_b

    .line 149
    .line 150
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_b
    move-object v1, v0

    .line 154
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 155
    .line 156
    if-eqz v2, :cond_c

    .line 157
    .line 158
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 159
    .line 160
    :cond_c
    invoke-static {v1, v0, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_d

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isCoverBriefAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-eqz p0, :cond_e

    .line 171
    .line 172
    :cond_d
    const-class p0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 173
    .line 174
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    check-cast p0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    .line 181
    .line 182
    .line 183
    :cond_e
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3d

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/16 v4, 0x14

    .line 10
    .line 11
    if-eq v0, v4, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v5, 0x13

    .line 18
    .line 19
    if-eq v0, v5, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move v0, v2

    .line 31
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/4 v6, 0x2

    .line 36
    const/4 v7, 0x4

    .line 37
    if-eqz v5, :cond_7

    .line 38
    .line 39
    if-eq v5, v2, :cond_2

    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ne v1, v7, :cond_3

    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsNaviBarBackButtonClicked:Z

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->performBackClick()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_3
    if-eqz v0, :cond_f

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 73
    .line 74
    if-eqz p1, :cond_f

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 77
    .line 78
    if-eqz p1, :cond_f

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_5

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_5
    new-array v1, v6, [I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 91
    .line 92
    .line 93
    aget v4, v1, v2

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    add-int/2addr v0, v4

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const v5, 0x7f071318

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    rsub-int v4, v4, 0x2d0

    .line 116
    .line 117
    if-le v0, v4, :cond_6

    .line 118
    .line 119
    sub-int/2addr v0, v4

    .line 120
    invoke-virtual {p1, v3, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    aget v0, v1, v2

    .line 129
    .line 130
    if-ge v0, p0, :cond_f

    .line 131
    .line 132
    sub-int/2addr v0, p0

    .line 133
    invoke-virtual {p1, v3, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-ne v5, v7, :cond_a

    .line 142
    .line 143
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsNaviBarBackButtonClicked:Z

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_8

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-eqz p0, :cond_9

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_9
    move v2, v3

    .line 160
    :goto_2
    const-string p0, "dispatchKeyEvent() - navi back click, ret: "

    .line 161
    .line 162
    const-string p1, "S.S.N."

    .line 163
    .line 164
    invoke-static {p0, v2, p1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    move v3, v2

    .line 168
    goto :goto_5

    .line 169
    :cond_a
    if-eqz v0, :cond_f

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_b

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_b
    if-eq p1, v4, :cond_d

    .line 183
    .line 184
    if-ne p1, v1, :cond_c

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_c
    move v2, v3

    .line 188
    :cond_d
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 189
    .line 190
    if-eqz p0, :cond_f

    .line 191
    .line 192
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 193
    .line 194
    if-eqz p0, :cond_f

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz v2, :cond_e

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_e
    const/4 v6, -0x2

    .line 208
    :goto_4
    add-int/2addr p1, v6

    .line 209
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 210
    .line 211
    .line 212
    :cond_f
    :goto_5
    return v3
.end method

.method public final enableGoToTopButton()V
    .locals 0

    .line 1
    return-void
.end method

.method public final enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const v2, 0x3ecccccd    # 0.4f

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    move v4, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v2

    .line 19
    :goto_0
    cmpg-float v3, v3, v4

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    move v3, v5

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v3, v6

    .line 28
    :goto_1
    if-nez v3, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    move v7, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v7, v2

    .line 39
    :goto_2
    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-wide/16 v7, 0xc8

    .line 44
    .line 45
    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-instance v7, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;

    .line 50
    .line 51
    invoke-direct {v7, v0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;-><init>(Landroid/widget/ImageView;F)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 58
    .line 59
    .line 60
    :cond_3
    const-string/jumbo v3, "unsupportedLanguage"

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_5

    .line 68
    .line 69
    const-string v3, "emptyMessage"

    .line 70
    .line 71
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move v5, p2

    .line 79
    goto :goto_4

    .line 80
    :cond_5
    :goto_3
    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 81
    .line 82
    const/4 v3, 0x2

    .line 83
    if-ne p1, v3, :cond_6

    .line 84
    .line 85
    move v5, v6

    .line 86
    :cond_6
    :goto_4
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 87
    .line 88
    .line 89
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtnText:Landroid/widget/TextView;

    .line 90
    .line 91
    if-eqz p0, :cond_9

    .line 92
    .line 93
    if-eqz p2, :cond_8

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_8
    move v1, v2

    .line 97
    :goto_5
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    .line 102
    .line 103
    :cond_9
    return-void
.end method

.method public final foldStateChanged(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_8

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getTopActivityName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "com.android.systemui.subscreen.SubHomeActivity"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    move v2, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v1

    .line 35
    :goto_0
    if-nez v2, :cond_3

    .line 36
    .line 37
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    .line 49
    move v1, v3

    .line 50
    :cond_2
    if-eqz v1, :cond_a

    .line 51
    .line 52
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 53
    .line 54
    if-eqz v1, :cond_6

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    const-string v3, "SubscreenNotificationDetailAdapter"

    .line 63
    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    const-string v1, "notificationActivityStarter is null"

    .line 67
    .line 68
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 73
    .line 74
    if-eqz v4, :cond_5

    .line 75
    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v5, "startNotificationActivity  mSelectNotificationInfo : "

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 85
    .line 86
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 99
    .line 100
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 101
    .line 102
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 103
    .line 104
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 105
    .line 106
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->onNotificationClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 107
    .line 108
    .line 109
    const-class v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 116
    .line 117
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 118
    .line 119
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 120
    .line 121
    check-cast v2, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/android/systemui/shade/ShadeControllerImpl;->makeExpandedInvisible()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    const-string/jumbo v1, "startNotificationActivity no select holder..."

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 137
    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 141
    .line 142
    if-eqz v2, :cond_a

    .line 143
    .line 144
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 145
    .line 146
    if-eqz v1, :cond_7

    .line 147
    .line 148
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 149
    .line 150
    if-eqz v1, :cond_7

    .line 151
    .line 152
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    .line 153
    .line 154
    :cond_7
    const-string v1, "QPNE0212"

    .line 155
    .line 156
    const-string v2, "app"

    .line 157
    .line 158
    const-string v3, "QPN102"

    .line 159
    .line 160
    invoke-static {v3, v1, v2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsClickedPopupKeyguardUnlockShowing:Z

    .line 165
    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    .line 167
    .line 168
    if-eqz v2, :cond_9

    .line 169
    .line 170
    iput v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    .line 171
    .line 172
    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 173
    .line 174
    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    :cond_9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mUnlockNotificationPendingIntentItemKey:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSmartReplyVariables()V

    .line 179
    .line 180
    .line 181
    :cond_a
    :goto_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->foldStateChanged(Z)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final getDetailAdapterAutoScrollCurrentPositionByReceive(Landroid/view/View;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    move v3, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v2

    .line 14
    :goto_0
    const-string v4, "S.S.N."

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    const-string p0, "getDetailAdapterAutoScrollCurrentPositionByReceive B5 - return - mSubRoomNotification?.isShownDetail is false"

    .line 19
    .line 20
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    const-string p0, "getDetailAdapterAutoScrollCurrentPositionByReceive B5 - return - show reply activity"

    .line 31
    .line 32
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    const/4 v3, 0x0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 40
    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move-object v5, v3

    .line 47
    :goto_1
    if-nez v5, :cond_5

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 52
    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 56
    .line 57
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "getDetailAdapterAutoScrollCurrentPositionByReceive B5 - return - value is null  View : "

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, ", selectNotificationInfo : "

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :cond_5
    if-eqz v0, :cond_6

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_2

    .line 94
    :cond_6
    move-object v0, v3

    .line 95
    :goto_2
    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 96
    .line 97
    if-eqz v0, :cond_17

    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 104
    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    goto :goto_3

    .line 112
    :cond_7
    move-object p1, v3

    .line 113
    :goto_3
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 114
    .line 115
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 116
    .line 117
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 118
    .line 119
    if-eqz v0, :cond_17

    .line 120
    .line 121
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    if-eqz p1, :cond_17

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    const-string p0, "getDetailAdapterAutoScrollCurrentPositionByReceive B5 - size is zero"

    .line 132
    .line 133
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    return v2

    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const v6, 0x7f071318

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 153
    .line 154
    if-eqz v6, :cond_9

    .line 155
    .line 156
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 157
    .line 158
    if-eqz v6, :cond_9

    .line 159
    .line 160
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    goto :goto_4

    .line 169
    :cond_9
    move-object v6, v3

    .line 170
    :goto_4
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    rsub-int v7, v7, 0x2d0

    .line 182
    .line 183
    sub-int/2addr v7, v5

    .line 184
    add-int/2addr v7, v6

    .line 185
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 186
    .line 187
    if-eqz p0, :cond_a

    .line 188
    .line 189
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 190
    .line 191
    if-eqz p0, :cond_a

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_a
    move-object p0, v3

    .line 197
    :goto_5
    if-eqz p0, :cond_b

    .line 198
    .line 199
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_b
    move-object v5, v3

    .line 203
    :goto_6
    if-nez v5, :cond_c

    .line 204
    .line 205
    invoke-static {p1, v2}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    :cond_c
    if-eqz p0, :cond_d

    .line 209
    .line 210
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_d
    move-object v5, v3

    .line 214
    :goto_7
    if-nez v5, :cond_e

    .line 215
    .line 216
    sub-int/2addr v0, v1

    .line 217
    invoke-static {p1, v0}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    :cond_e
    if-eqz p0, :cond_f

    .line 222
    .line 223
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_f
    move-object p1, v3

    .line 227
    :goto_8
    if-eqz p1, :cond_11

    .line 228
    .line 229
    if-eqz p0, :cond_10

    .line 230
    .line 231
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_10
    move-object p1, v3

    .line 235
    :goto_9
    if-nez p1, :cond_14

    .line 236
    .line 237
    :cond_11
    if-eqz p0, :cond_12

    .line 238
    .line 239
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    .line 240
    .line 241
    goto :goto_a

    .line 242
    :cond_12
    move-object p1, v3

    .line 243
    :goto_a
    if-eqz p0, :cond_13

    .line 244
    .line 245
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    .line 246
    .line 247
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v0, "getDetailAdapterAutoScrollCurrentPositionByReceive B5 - prevItem is null,scrollInfo?.prevFirstHistoryView :"

    .line 250
    .line 251
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string p1, ", scrollInfo?.prevLastHistoryView : "

    .line 258
    .line 259
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    const/4 v0, 0x3

    .line 281
    div-int/2addr p1, v0

    .line 282
    int-to-float p1, p1

    .line 283
    add-float/2addr p0, p1

    .line 284
    int-to-float p1, v7

    .line 285
    cmpl-float v3, p1, p0

    .line 286
    .line 287
    if-lez v3, :cond_15

    .line 288
    .line 289
    int-to-float v3, v6

    .line 290
    cmpg-float v3, v3, p0

    .line 291
    .line 292
    if-gez v3, :cond_15

    .line 293
    .line 294
    return v0

    .line 295
    :cond_15
    cmpg-float p1, p1, p0

    .line 296
    .line 297
    if-gez p1, :cond_16

    .line 298
    .line 299
    return v1

    .line 300
    :cond_16
    int-to-float p1, v6

    .line 301
    cmpl-float p0, p1, p0

    .line 302
    .line 303
    if-lez p0, :cond_17

    .line 304
    .line 305
    const/4 p0, 0x2

    .line 306
    return p0

    .line 307
    :cond_17
    return v2
.end method

.method public final getDetailAdapterContentViewResource()I
    .locals 0

    .line 1
    const p0, 0x7f0d044c

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getDetailAdapterLayout(Landroidx/recyclerview/widget/RecyclerView;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p2, p0, :cond_0

    .line 5
    .line 6
    const/4 p0, -0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const p0, 0x7f0d0457

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const p0, 0x7f0d0455

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final getDetailAdapterReplyWordResource()I
    .locals 0

    .line 1
    const p0, 0x7f0d0451

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getDispalyHeight()I
    .locals 0

    .line 1
    const/16 p0, 0x2d0

    .line 2
    .line 3
    return p0
.end method

.method public final getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string p0, ""

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->DISPLAY_LANG_CODE_DELIMITER:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1, p0, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    filled-new-array {p0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, 0x6

    .line 30
    invoke-static {p1, p0, v2, v0}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/lang/String;

    .line 45
    .line 46
    new-instance v0, Ljava/util/Locale;

    .line 47
    .line 48
    invoke-direct {v0, p1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    new-instance p0, Ljava/util/Locale;

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_1
    return-object p0
.end method

.method public final getFullPopupWindowType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x7ea

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/16 p0, 0x7f8

    .line 13
    .line 14
    return p0
.end method

.method public final getGroupAdapterLayout(Landroidx/recyclerview/widget/RecyclerView;ILandroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    if-eq p2, v0, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p2, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq p2, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v1, 0x7f0d045c

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const v1, 0x7f0d045e

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const v1, 0x7f0d0448

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const v1, 0x7f0d0446

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_4
    const v1, 0x7f0d0460

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eq p2, v0, :cond_5

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const p2, 0x7f081283

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    :cond_5
    return-object p1
.end method

.method public final getHistoryInfo(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    xor-int/2addr v2, v3

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sub-int/2addr v1, v3

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 28
    .line 29
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string p0, "S.S.N."

    .line 34
    .line 35
    const-string p1, "getHistoryInfo() - this is reply notification. so do not call AI"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSBForLog:Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    add-int/lit8 v4, v4, -0x7

    .line 53
    .line 54
    if-gez v4, :cond_1

    .line 55
    .line 56
    move v4, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    add-int/lit8 v4, v4, -0x7

    .line 63
    .line 64
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    new-instance v6, Ljava/util/Date;

    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 75
    .line 76
    .line 77
    :goto_1
    if-ge v4, v5, :cond_b

    .line 78
    .line 79
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 84
    .line 85
    iget-wide v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    .line 86
    .line 87
    const-wide/16 v10, 0x0

    .line 88
    .line 89
    cmp-long v10, v8, v10

    .line 90
    .line 91
    if-lez v10, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    iget-wide v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    .line 95
    .line 96
    :goto_2
    new-instance v10, Ljava/util/Date;

    .line 97
    .line 98
    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v8, v5, -0x1

    .line 102
    .line 103
    if-ge v4, v8, :cond_3

    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-virtual {v10}, Ljava/util/Date;->getYear()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-gt v8, v9, :cond_a

    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    invoke-virtual {v10}, Ljava/util/Date;->getMonth()I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-gt v8, v9, :cond_a

    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/util/Date;->getDay()I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    invoke-virtual {v10}, Ljava/util/Date;->getDay()I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-gt v8, v9, :cond_a

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    sub-int/2addr v8, v9

    .line 144
    if-le v8, v3, :cond_3

    .line 145
    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_3
    sget-boolean v8, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 149
    .line 150
    if-eqz v8, :cond_5

    .line 151
    .line 152
    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    .line 153
    .line 154
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    if-eqz v8, :cond_4

    .line 157
    .line 158
    const v8, 0x7f1310ff

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_4
    const v8, 0x7f1310f8

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_5
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    if-eqz v8, :cond_7

    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-nez v8, :cond_6

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    move v8, v2

    .line 214
    goto :goto_4

    .line 215
    :cond_7
    :goto_3
    move v8, v3

    .line 216
    :goto_4
    if-eqz v8, :cond_8

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_8
    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    .line 220
    .line 221
    if-eqz v8, :cond_9

    .line 222
    .line 223
    const-string v8, "User: "

    .line 224
    .line 225
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_9
    const-string v8, "Others: "

    .line 233
    .line 234
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    :goto_5
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v8, "\n"

    .line 246
    .line 247
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    .line 251
    .line 252
    const/4 v9, 0x2

    .line 253
    invoke-static {v7, v9}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    check-cast v7, Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0
.end method

.method public final getIsoCountryCode()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "phone"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v3, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v3, v2

    .line 30
    :goto_1
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    new-instance p0, Ljava/util/Locale;

    .line 37
    .line 38
    const-string v3, ""

    .line 39
    .line 40
    invoke-direct {p0, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-lez v0, :cond_3

    .line 52
    .line 53
    move v1, v2

    .line 54
    :cond_3
    if-eqz v1, :cond_4

    .line 55
    .line 56
    return-object p0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    const-string v0, "getIsoCountryCode: "

    .line 59
    .line 60
    const-string v1, "S.S.N."

    .line 61
    .line 62
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public final getLayoutInDisplayCutoutMode()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public final getListAdapterGroupItemResource()I
    .locals 0

    .line 1
    const p0, 0x7f0d0467

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getListAdapterLayout(Landroidx/recyclerview/widget/RecyclerView;ILandroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_5

    .line 4
    .line 5
    if-eq p2, v1, :cond_4

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p2, v2, :cond_3

    .line 9
    .line 10
    if-eq p2, v0, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq p2, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq p2, v2, :cond_0

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const v2, 0x7f0d0465

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const v2, 0x7f0d0469

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const v2, 0x7f0d044a

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const v2, 0x7f0d0463

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    const v2, 0x7f0d0446

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_5
    const v2, 0x7f0d046b

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p3, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eq p2, v1, :cond_6

    .line 53
    .line 54
    if-eq p2, v0, :cond_6

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const p2, 0x7f081283

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :cond_6
    return-object p1
.end method

.method public final getMainHeaderViewHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final getOnDeviceMetaData()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->SR_LLM_PACKAGE_NAME:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "S.S.N."

    .line 6
    .line 7
    const-string v3, "On-Device LLM MetaData : "

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->metaData:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    return-object v4

    .line 14
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/16 v5, 0x80

    .line 21
    .line 22
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ".FUNCTION_INFO"

    .line 39
    .line 40
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->metaData:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->metaData:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    if-nez p0, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object v0, p0

    .line 74
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "On-Device LLM Not Found "

    .line 79
    .line 80
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_2
    return-object v0
.end method

.method public final getPopUpViewDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 4

    .line 1
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 14
    .line 15
    new-array v1, v1, [F

    .line 16
    .line 17
    fill-array-data v1, :array_1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 27
    .line 28
    .line 29
    filled-new-array {v0, p1}, [Landroid/animation/Animator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v2, 0xc8

    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 39
    .line 40
    .line 41
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->topPopupAnimationListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object v1

    .line 51
    :array_0
    .array-data 4
        0x0
        -0x3d720000    # -71.0f
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x0
    .end array-data
.end method

.method public final getPopUpViewShowAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    .line 1
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [F

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 14
    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    fill-array-data v0, :array_1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 27
    .line 28
    .line 29
    filled-new-array {p0, p1}, [Landroid/animation/Animator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 p0, 0xc8

    .line 37
    .line 38
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 39
    .line 40
    .line 41
    new-instance p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getPopUpViewShowAnimator$lambda$3$$inlined$doOnStart$1;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getPopUpViewShowAnimator$lambda$3$$inlined$doOnStart$1;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :array_0
    .array-data 4
        -0x3d720000    # -71.0f
        0x0
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 4
        0x0
        0x3f733333    # 0.95f
    .end array-data
.end method

.method public final getReplyButtonView()Landroid/view/View;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubScreenManagerLazy:Ldagger/Lazy;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/systemui/subscreen/SubScreenManager;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f0d044e

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, 0x7f0a09d6

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsReplySendButtonLoading:Z

    .line 37
    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    invoke-virtual {v1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    const/high16 p0, 0x3f000000    # 0.5f

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p0, 0x1

    .line 51
    invoke-virtual {v1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    .line 53
    .line 54
    const/high16 p0, 0x3f800000    # 1.0f

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string p0, "S.S.N."

    .line 61
    .line 62
    const-string v1, "can\'t inflate ReplyButtonView."

    .line 63
    .line 64
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public final getSelectedReplyBGColor()I
    .locals 0

    .line 1
    const p0, 0x7f060869

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getSubIconVisible(ZZ)Z
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 9
    :goto_1
    return p0
.end method

.method public final getSubscreenNotificationTipResource()I
    .locals 0

    .line 1
    const p0, 0x7f0d0473

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getTopPresentationDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    .line 1
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [F

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 14
    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    fill-array-data v0, :array_1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 27
    .line 28
    .line 29
    filled-new-array {p0, p1}, [Landroid/animation/Animator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 p0, 0xc8

    .line 37
    .line 38
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 4
        0x0
        -0x3d720000    # -71.0f
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x0
    .end array-data
.end method

.method public final handleProgressLayout(Z)V
    .locals 2

    .line 1
    const-string v0, "handleProgressLayout() - show : "

    .line 2
    .line 3
    const-string v1, "S.S.N."

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleProgressLayout$runnable$1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleProgressLayout$runnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startProgressSpringAnimation(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleProgressLayout$runnable$2;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleProgressLayout$runnable$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startProgressSpringAnimation(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final inflateSmartReplyAI(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "S.S.N."

    .line 2
    .line 3
    const-string v1, "inflateSmartReplyAI()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p1, :cond_11

    .line 12
    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v5, "\n"

    .line 24
    .line 25
    filled-new-array {v5}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/4 v6, 0x6

    .line 30
    invoke-static {p1, v5, v2, v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    move v5, v2

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    :goto_2
    move v5, v1

    .line 90
    :goto_3
    if-nez v5, :cond_1

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v4, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v5, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_5

    .line 120
    .line 121
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Ljava/lang/String;

    .line 126
    .line 127
    const-string/jumbo v8, "~"

    .line 128
    .line 129
    .line 130
    const-string v9, ""

    .line 131
    .line 132
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const-string v8, "!"

    .line 137
    .line 138
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    const-string v8, "@"

    .line 143
    .line 144
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    const-string v8, "#"

    .line 149
    .line 150
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    const-string v8, "$"

    .line 155
    .line 156
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    const-string v8, "%"

    .line 161
    .line 162
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    const-string v8, "^"

    .line 167
    .line 168
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    const-string v8, "&"

    .line 173
    .line 174
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const-string v8, "*"

    .line 179
    .line 180
    const-string v10, "("

    .line 181
    .line 182
    invoke-static {v7, v8, v10}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    const-string v8, ")"

    .line 187
    .line 188
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    const-string v8, "`"

    .line 193
    .line 194
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    const-string v8, ","

    .line 199
    .line 200
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    const-string v8, "."

    .line 205
    .line 206
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    const-string v8, "-"

    .line 211
    .line 212
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    const-string v8, "_"

    .line 217
    .line 218
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    const-string v8, "\""

    .line 223
    .line 224
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    move v7, v2

    .line 245
    :goto_5
    if-ge v7, v6, :cond_a

    .line 246
    .line 247
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    if-eqz v8, :cond_6

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    move v9, v7

    .line 263
    :goto_6
    if-ge v9, v8, :cond_9

    .line 264
    .line 265
    if-eq v7, v9, :cond_8

    .line 266
    .line 267
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    if-eqz v10, :cond_7

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_7
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    check-cast v10, Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    check-cast v11, Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v10

    .line 294
    if-eqz v10, :cond_8

    .line 295
    .line 296
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    :cond_8
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_9
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    move v6, v2

    .line 314
    :goto_9
    if-ge v6, p1, :cond_d

    .line 315
    .line 316
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    if-eqz v7, :cond_b

    .line 321
    .line 322
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-nez v7, :cond_c

    .line 331
    .line 332
    :cond_b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    check-cast v7, Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-nez p1, :cond_e

    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    const/4 v3, 0x3

    .line 356
    if-lt p1, v3, :cond_f

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    :goto_a
    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :catchall_0
    move-exception p1

    .line 367
    sget v4, Lkotlin/Result;->$r8$clinit:I

    .line 368
    .line 369
    new-instance v4, Lkotlin/Result$Failure;

    .line 370
    .line 371
    invoke-direct {v4, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 372
    .line 373
    .line 374
    :goto_b
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 375
    .line 376
    instance-of v5, v4, Lkotlin/Result$Failure;

    .line 377
    .line 378
    if-eqz v5, :cond_10

    .line 379
    .line 380
    move-object v4, p1

    .line 381
    :cond_10
    check-cast v4, Ljava/util/List;

    .line 382
    .line 383
    invoke-interface {v4, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    goto :goto_d

    .line 388
    :cond_11
    :goto_c
    move-object p1, v0

    .line 389
    :goto_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 390
    .line 391
    if-eqz v3, :cond_12

    .line 392
    .line 393
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    .line 394
    .line 395
    if-eqz v3, :cond_12

    .line 396
    .line 397
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 398
    .line 399
    .line 400
    :cond_12
    if-eqz p1, :cond_19

    .line 401
    .line 402
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    :cond_13
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-eqz v4, :cond_18

    .line 411
    .line 412
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    check-cast v4, Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 427
    .line 428
    if-eqz v6, :cond_14

    .line 429
    .line 430
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 431
    .line 432
    goto :goto_f

    .line 433
    :cond_14
    move-object v6, v0

    .line 434
    :goto_f
    const v7, 0x7f0d0450

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5, v7, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    const v6, 0x7f0a0b23

    .line 442
    .line 443
    .line 444
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    check-cast v6, Landroid/widget/TextView;

    .line 449
    .line 450
    if-nez v6, :cond_15

    .line 451
    .line 452
    goto :goto_10

    .line 453
    :cond_15
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    .line 463
    .line 464
    :goto_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 465
    .line 466
    if-eqz v4, :cond_16

    .line 467
    .line 468
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    .line 469
    .line 470
    if-eqz v4, :cond_16

    .line 471
    .line 472
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    .line 474
    .line 475
    :cond_16
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 476
    .line 477
    if-eqz v4, :cond_13

    .line 478
    .line 479
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 480
    .line 481
    if-eqz v4, :cond_13

    .line 482
    .line 483
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 484
    .line 485
    if-eqz v6, :cond_13

    .line 486
    .line 487
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    .line 488
    .line 489
    if-nez v7, :cond_17

    .line 490
    .line 491
    goto :goto_e

    .line 492
    :cond_17
    new-instance v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;

    .line 493
    .line 494
    invoke-direct {v7, v4, v6, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Landroid/view/View;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    .line 499
    .line 500
    goto :goto_e

    .line 501
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    goto :goto_11

    .line 506
    :cond_19
    move p1, v2

    .line 507
    :goto_11
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$1;

    .line 508
    .line 509
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 510
    .line 511
    .line 512
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 513
    .line 514
    if-eqz v4, :cond_1a

    .line 515
    .line 516
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    .line 517
    .line 518
    if-eqz v4, :cond_1a

    .line 519
    .line 520
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getY()F

    .line 521
    .line 522
    .line 523
    :cond_1a
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 524
    .line 525
    if-eqz v4, :cond_1b

    .line 526
    .line 527
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-nez v4, :cond_1b

    .line 532
    .line 533
    goto :goto_12

    .line 534
    :cond_1b
    move v1, v2

    .line 535
    :goto_12
    if-eqz v1, :cond_1c

    .line 536
    .line 537
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 538
    .line 539
    if-eqz v1, :cond_1c

    .line 540
    .line 541
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startProgressSpringAnimation(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 542
    .line 543
    .line 544
    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 545
    .line 546
    if-eqz v1, :cond_1d

    .line 547
    .line 548
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    .line 549
    .line 550
    if-eqz v1, :cond_1d

    .line 551
    .line 552
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    :cond_1d
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-nez v0, :cond_1e

    .line 568
    .line 569
    const/16 p1, 0x8

    .line 570
    .line 571
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    .line 572
    .line 573
    .line 574
    goto :goto_13

    .line 575
    :cond_1e
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$2;

    .line 576
    .line 577
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 578
    .line 579
    .line 580
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    .line 581
    .line 582
    const-wide/16 v3, 0xc8

    .line 583
    .line 584
    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    .line 586
    .line 587
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    const-string v0, "QPN102"

    .line 592
    .line 593
    const-string v1, "QPNE0215"

    .line 594
    .line 595
    const-string v3, "count"

    .line 596
    .line 597
    invoke-static {v0, v1, v3, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    :goto_13
    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 601
    .line 602
    return-void
.end method

.method public final initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "S.S.N."

    .line 5
    .line 6
    const-string v0, "initDetailAdapterItemViewHolder() - B5"

    .line 7
    .line 8
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    const v0, 0x7f0a030c

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/LinearLayout;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const v0, 0x7f0a04f9

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .line 33
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->keyboardReplyButton:Landroid/widget/ImageView;

    .line 42
    .line 43
    const p3, 0x7f0a0210

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    check-cast p3, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->callBackButtonText:Landroid/widget/TextView;

    .line 53
    .line 54
    const p3, 0x7f0a04fa

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    check-cast p3, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->replyButtonText:Landroid/widget/TextView;

    .line 64
    .line 65
    const p3, 0x7f0a00e5

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openAppButtonText:Landroid/widget/TextView;

    .line 75
    .line 76
    const p3, 0x7f0a0266

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    check-cast p3, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clearButtonText:Landroid/widget/TextView;

    .line 86
    .line 87
    const p3, 0x7f0a0a82

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    check-cast p3, Landroid/widget/TextView;

    .line 95
    .line 96
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtnText:Landroid/widget/TextView;

    .line 97
    .line 98
    const/4 p3, 0x0

    .line 99
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    .line 100
    .line 101
    const v0, 0x7f0a0a81

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/ImageView;

    .line 109
    .line 110
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;

    .line 111
    .line 112
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/widget/ImageView;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    .line 119
    .line 120
    const v0, 0x7f0a0a78

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/TextView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 130
    .line 131
    const v0, 0x7f0a0a7f

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/LinearLayout;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->suggestResponsesBtn:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    const v0, 0x7f0a0a6f

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/widget/ImageView;

    .line 150
    .line 151
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;

    .line 152
    .line 153
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->aiDisclaimerBtn:Landroid/widget/ImageView;

    .line 160
    .line 161
    const p1, 0x7f0a0a72

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Landroid/widget/TextView;

    .line 169
    .line 170
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyAiLogoText:Landroid/widget/TextView;

    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    sget-boolean p2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    .line 178
    .line 179
    if-nez p2, :cond_0

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_0
    iget-object p2, p1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 183
    .line 184
    const-string v0, "ai_info_confirmed"

    .line 185
    .line 186
    invoke-virtual {p2, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-eqz p2, :cond_1

    .line 195
    .line 196
    const/4 p3, 0x1

    .line 197
    :cond_1
    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isAiInfoConfirmed:Z

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesEnabled()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSmartReplyUnusable()Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    .line 210
    .line 211
    return-void
.end method

.method public final initDetailAdapterTextViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    const v0, 0x7f0a00e5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openAppButtonText:Landroid/widget/TextView;

    .line 13
    .line 14
    const v0, 0x7f0a0266

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clearButtonText:Landroid/widget/TextView;

    .line 24
    .line 25
    return-void
.end method

.method public final initKeyguardActioninfo()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->isShowBouncer:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final initMainHeaderView(Landroid/widget/LinearLayout;)V
    .locals 4

    .line 1
    const v0, 0x7f0a0481

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v2, 0x7f0d0448

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 p1, 0x8

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const v4, 0x7f0a0478

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v3

    .line 21
    :goto_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    const v5, 0x7f0a0119

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Landroid/widget/LinearLayout;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v4, v3

    .line 36
    :goto_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    const v6, 0x7f0a0b27

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Landroid/widget/TextView;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move-object v5, v3

    .line 51
    :goto_2
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    const v7, 0x7f0a09ba

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Landroid/widget/ImageView;

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move-object v6, v3

    .line 66
    :goto_3
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 67
    .line 68
    if-eqz v7, :cond_4

    .line 69
    .line 70
    const v8, 0x7f0a0c60

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Landroid/widget/ImageView;

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    move-object v7, v3

    .line 81
    :goto_4
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 82
    .line 83
    const/16 v9, 0x8

    .line 84
    .line 85
    if-eqz v8, :cond_5

    .line 86
    .line 87
    const v10, 0x7f0a0b26

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    check-cast v8, Landroid/widget/ImageView;

    .line 95
    .line 96
    if-eqz v8, :cond_5

    .line 97
    .line 98
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_5
    move-object v8, v3

    .line 106
    :goto_5
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    if-eqz v10, :cond_6

    .line 110
    .line 111
    const v12, 0x7f0a0b28

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    check-cast v10, Landroid/widget/ImageView;

    .line 119
    .line 120
    if-eqz v10, :cond_6

    .line 121
    .line 122
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_6
    move-object v10, v3

    .line 139
    :goto_6
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 140
    .line 141
    if-eqz v12, :cond_7

    .line 142
    .line 143
    const v13, 0x7f0a0b39

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    check-cast v12, Landroid/widget/ImageView;

    .line 151
    .line 152
    if-eqz v12, :cond_7

    .line 153
    .line 154
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_7
    move-object v12, v3

    .line 162
    :goto_7
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 163
    .line 164
    if-eqz v13, :cond_8

    .line 165
    .line 166
    const v14, 0x7f0a0b3d

    .line 167
    .line 168
    .line 169
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    check-cast v13, Landroid/widget/ImageView;

    .line 174
    .line 175
    if-eqz v13, :cond_8

    .line 176
    .line 177
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v13, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v13}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_8
    move-object v13, v3

    .line 194
    :goto_8
    if-eqz v1, :cond_9

    .line 195
    .line 196
    iget-object v14, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 197
    .line 198
    goto :goto_9

    .line 199
    :cond_9
    move-object v14, v3

    .line 200
    :goto_9
    if-eqz v1, :cond_a

    .line 201
    .line 202
    iget-object v15, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 203
    .line 204
    goto :goto_a

    .line 205
    :cond_a
    move-object v15, v3

    .line 206
    :goto_a
    if-eqz v1, :cond_b

    .line 207
    .line 208
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 209
    .line 210
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    goto :goto_b

    .line 215
    :cond_b
    const/4 v3, 0x0

    .line 216
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    .line 217
    .line 218
    .line 219
    move-result v16

    .line 220
    if-eqz v16, :cond_c

    .line 221
    .line 222
    if-eqz v1, :cond_c

    .line 223
    .line 224
    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 225
    .line 226
    if-eqz v9, :cond_c

    .line 227
    .line 228
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    goto :goto_c

    .line 233
    :cond_c
    move v9, v11

    .line 234
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    move-object/from16 v17, v7

    .line 239
    .line 240
    const v7, 0x7f1310d3

    .line 241
    .line 242
    .line 243
    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    if-nez v4, :cond_d

    .line 248
    .line 249
    goto :goto_d

    .line 250
    :cond_d
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    :goto_d
    if-nez p3, :cond_10

    .line 254
    .line 255
    if-eqz v4, :cond_e

    .line 256
    .line 257
    new-instance v11, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setBackKeyClickListener$1;

    .line 258
    .line 259
    invoke-direct {v11, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setBackKeyClickListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    .line 264
    .line 265
    :cond_e
    if-eqz v4, :cond_f

    .line 266
    .line 267
    new-instance v11, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setBackKeyClickListener$2;

    .line 268
    .line 269
    invoke-direct {v11, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setBackKeyClickListener$2;-><init>(Landroid/widget/LinearLayout;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 273
    .line 274
    .line 275
    :cond_f
    if-eqz v2, :cond_10

    .line 276
    .line 277
    new-instance v11, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initMainHeaderViewItems$1;

    .line 278
    .line 279
    invoke-direct {v11, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initMainHeaderViewItems$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    :cond_10
    if-nez v4, :cond_11

    .line 286
    .line 287
    goto :goto_e

    .line 288
    :cond_11
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 289
    .line 290
    .line 291
    :goto_e
    const/4 v2, 0x1

    .line 292
    if-eqz v1, :cond_12

    .line 293
    .line 294
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 295
    .line 296
    if-ne v4, v2, :cond_12

    .line 297
    .line 298
    move v4, v2

    .line 299
    goto :goto_f

    .line 300
    :cond_12
    const/4 v4, 0x0

    .line 301
    :goto_f
    if-eqz v4, :cond_13

    .line 302
    .line 303
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 304
    .line 305
    if-eqz v4, :cond_13

    .line 306
    .line 307
    move v4, v2

    .line 308
    goto :goto_10

    .line 309
    :cond_13
    const/4 v4, 0x0

    .line 310
    :goto_10
    if-nez v5, :cond_14

    .line 311
    .line 312
    goto :goto_12

    .line 313
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-eqz v7, :cond_15

    .line 318
    .line 319
    if-eqz v4, :cond_15

    .line 320
    .line 321
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->titleText:Ljava/lang/CharSequence;

    .line 322
    .line 323
    goto :goto_11

    .line 324
    :cond_15
    if-eqz v1, :cond_16

    .line 325
    .line 326
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    .line 327
    .line 328
    goto :goto_11

    .line 329
    :cond_16
    const/4 v4, 0x0

    .line 330
    :goto_11
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    :goto_12
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 334
    .line 335
    if-nez v4, :cond_17

    .line 336
    .line 337
    goto :goto_14

    .line 338
    :cond_17
    if-eqz v5, :cond_18

    .line 339
    .line 340
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    goto :goto_13

    .line 345
    :cond_18
    const/4 v5, 0x0

    .line 346
    :goto_13
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    :goto_14
    if-eqz v8, :cond_19

    .line 350
    .line 351
    invoke-virtual {v8}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 352
    .line 353
    .line 354
    :cond_19
    if-nez v9, :cond_1e

    .line 355
    .line 356
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 357
    .line 358
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    if-eqz v3, :cond_1e

    .line 363
    .line 364
    if-nez v14, :cond_1a

    .line 365
    .line 366
    if-eqz v15, :cond_1e

    .line 367
    .line 368
    :cond_1a
    if-nez v12, :cond_1b

    .line 369
    .line 370
    goto :goto_15

    .line 371
    :cond_1b
    const/4 v3, 0x0

    .line 372
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    :goto_15
    if-eqz v14, :cond_1c

    .line 376
    .line 377
    if-eqz v12, :cond_1d

    .line 378
    .line 379
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 380
    .line 381
    .line 382
    goto :goto_16

    .line 383
    :cond_1c
    if-eqz v12, :cond_1d

    .line 384
    .line 385
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 386
    .line 387
    .line 388
    :cond_1d
    :goto_16
    move v3, v2

    .line 389
    goto/16 :goto_1f

    .line 390
    .line 391
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isShowNotificationAppIcon()Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_25

    .line 396
    .line 397
    if-eqz v8, :cond_21

    .line 398
    .line 399
    if-eqz v1, :cond_1f

    .line 400
    .line 401
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->useSmallIcon()Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-nez v3, :cond_1f

    .line 406
    .line 407
    move v3, v2

    .line 408
    goto :goto_17

    .line 409
    :cond_1f
    const/4 v3, 0x0

    .line 410
    :goto_17
    if-eqz v3, :cond_21

    .line 411
    .line 412
    if-eqz v1, :cond_20

    .line 413
    .line 414
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 415
    .line 416
    goto :goto_18

    .line 417
    :cond_20
    const/4 v3, 0x0

    .line 418
    :goto_18
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    .line 420
    .line 421
    const/4 v3, 0x0

    .line 422
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    goto :goto_1e

    .line 426
    :cond_21
    const/4 v3, 0x0

    .line 427
    if-nez v10, :cond_22

    .line 428
    .line 429
    goto :goto_19

    .line 430
    :cond_22
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    .line 432
    .line 433
    :goto_19
    if-eqz v10, :cond_28

    .line 434
    .line 435
    if-eqz v1, :cond_23

    .line 436
    .line 437
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 438
    .line 439
    goto :goto_1a

    .line 440
    :cond_23
    const/4 v4, 0x0

    .line 441
    :goto_1a
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v10, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconSquircleBg(Landroid/widget/ImageView;ZZ)V

    .line 445
    .line 446
    .line 447
    if-eqz v1, :cond_24

    .line 448
    .line 449
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 450
    .line 451
    if-eqz v3, :cond_24

    .line 452
    .line 453
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 454
    .line 455
    goto :goto_1b

    .line 456
    :cond_24
    const/4 v3, 0x0

    .line 457
    :goto_1b
    invoke-virtual {v0, v10, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 458
    .line 459
    .line 460
    goto :goto_1e

    .line 461
    :cond_25
    if-eqz v10, :cond_28

    .line 462
    .line 463
    const/4 v3, 0x0

    .line 464
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v10, v2, v3, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V

    .line 468
    .line 469
    .line 470
    if-eqz v1, :cond_26

    .line 471
    .line 472
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 473
    .line 474
    goto :goto_1c

    .line 475
    :cond_26
    const/4 v3, 0x0

    .line 476
    :goto_1c
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    .line 478
    .line 479
    if-eqz v1, :cond_27

    .line 480
    .line 481
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 482
    .line 483
    if-eqz v3, :cond_27

    .line 484
    .line 485
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 486
    .line 487
    goto :goto_1d

    .line 488
    :cond_27
    const/4 v3, 0x0

    .line 489
    :goto_1d
    invoke-virtual {v0, v10, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 490
    .line 491
    .line 492
    :cond_28
    :goto_1e
    const/4 v3, 0x0

    .line 493
    :goto_1f
    if-eqz v3, :cond_30

    .line 494
    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isShowNotificationAppIcon()Z

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    if-eqz v4, :cond_2a

    .line 500
    .line 501
    if-eqz v13, :cond_2e

    .line 502
    .line 503
    if-eqz v1, :cond_29

    .line 504
    .line 505
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 506
    .line 507
    goto :goto_20

    .line 508
    :cond_29
    const/4 v4, 0x0

    .line 509
    :goto_20
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    .line 511
    .line 512
    goto :goto_23

    .line 513
    :cond_2a
    const/4 v4, 0x0

    .line 514
    invoke-virtual {v0, v13, v4, v4, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V

    .line 515
    .line 516
    .line 517
    if-eqz v13, :cond_2c

    .line 518
    .line 519
    if-eqz v1, :cond_2b

    .line 520
    .line 521
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 522
    .line 523
    goto :goto_21

    .line 524
    :cond_2b
    const/4 v4, 0x0

    .line 525
    :goto_21
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    .line 527
    .line 528
    :cond_2c
    if-eqz v1, :cond_2d

    .line 529
    .line 530
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 531
    .line 532
    if-eqz v4, :cond_2d

    .line 533
    .line 534
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 535
    .line 536
    goto :goto_22

    .line 537
    :cond_2d
    const/4 v4, 0x0

    .line 538
    :goto_22
    invoke-virtual {v0, v13, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 539
    .line 540
    .line 541
    :cond_2e
    :goto_23
    if-nez v13, :cond_2f

    .line 542
    .line 543
    const/4 v4, 0x0

    .line 544
    goto :goto_24

    .line 545
    :cond_2f
    const/4 v4, 0x0

    .line 546
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    goto :goto_24

    .line 550
    :cond_30
    const/4 v4, 0x0

    .line 551
    if-nez v13, :cond_31

    .line 552
    .line 553
    goto :goto_24

    .line 554
    :cond_31
    const/16 v5, 0x8

    .line 555
    .line 556
    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    .line 558
    .line 559
    :goto_24
    if-eqz v3, :cond_33

    .line 560
    .line 561
    if-eqz v1, :cond_32

    .line 562
    .line 563
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 564
    .line 565
    if-eqz v3, :cond_32

    .line 566
    .line 567
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 568
    .line 569
    if-eqz v3, :cond_32

    .line 570
    .line 571
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    if-eqz v3, :cond_32

    .line 576
    .line 577
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    if-ne v3, v2, :cond_32

    .line 582
    .line 583
    move v3, v2

    .line 584
    goto :goto_25

    .line 585
    :cond_32
    move v3, v4

    .line 586
    :goto_25
    if-eqz v3, :cond_33

    .line 587
    .line 588
    move v11, v2

    .line 589
    goto :goto_26

    .line 590
    :cond_33
    move v11, v4

    .line 591
    :goto_26
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 592
    .line 593
    invoke-virtual {v0, v2, v11}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateImportBadgeIconRing(Landroid/view/View;Z)V

    .line 594
    .line 595
    .line 596
    invoke-static {v6, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 597
    .line 598
    .line 599
    move-object/from16 v3, v17

    .line 600
    .line 601
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 602
    .line 603
    .line 604
    return-void
.end method

.method public final initSmartReplyStatus()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultCompleteMsg:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultFailureMsg:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public final isCoverBriefAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 4
    .line 5
    const-string v1, "edge_lighting"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_2
    return v1
.end method

.method public final isDismissiblePopup()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->useTopPresentation()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final isKeyguardStats()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v3, v0

    .line 8
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    .line 10
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 11
    .line 12
    if-ne v3, v1, :cond_0

    .line 13
    .line 14
    move v3, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v2

    .line 17
    :goto_0
    if-eqz v3, :cond_2

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v2

    .line 30
    :goto_1
    if-nez v0, :cond_6

    .line 31
    .line 32
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 33
    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    move-object v0, p0

    .line 37
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 38
    .line 39
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    move v0, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move v0, v2

    .line 46
    :goto_2
    if-eqz v0, :cond_5

    .line 47
    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 51
    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 53
    .line 54
    if-ne p0, v1, :cond_4

    .line 55
    .line 56
    move p0, v1

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    move p0, v2

    .line 59
    :goto_3
    if-eqz p0, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    move v1, v2

    .line 63
    :cond_6
    :goto_4
    return v1
.end method

.method public final isKeyguardUnlockShowing()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v3, v0

    .line 8
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    .line 10
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 11
    .line 12
    if-ne v3, v1, :cond_0

    .line 13
    .line 14
    move v3, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v2

    .line 17
    :goto_0
    if-eqz v3, :cond_3

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v2

    .line 30
    :goto_1
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 37
    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 39
    .line 40
    if-ne p0, v1, :cond_2

    .line 41
    .line 42
    move p0, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move p0, v2

    .line 45
    :goto_2
    if-eqz p0, :cond_3

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move v1, v2

    .line 49
    :goto_3
    return v1
.end method

.method public final isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 1
    const-class p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-interface {v0, v3, v4}, Landroid/app/IActivityTaskManager;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v0, v2

    .line 40
    :goto_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isCallNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 73
    .line 74
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKidsModeRunning()Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-nez p0, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move v1, v2

    .line 82
    :goto_1
    return v1
.end method

.method public final isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mUserPublic:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public final isPreventOnlineProcessing()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "prevent_online_processing"

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    move v1, v0

    .line 19
    :cond_0
    return v1
.end method

.method public final isReplyLayoutShowing()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x7f071318

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    rsub-int v2, v2, 0x2d0

    .line 46
    .line 47
    sub-int/2addr v2, v1

    .line 48
    add-int/2addr v2, v0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_1

    .line 65
    .line 66
    move v5, v0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v5, v1

    .line 69
    :goto_1
    if-eqz v5, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    :goto_2
    if-eqz v4, :cond_4

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getY()F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyContainer:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    :cond_3
    add-float/2addr v4, v3

    .line 89
    move v3, v4

    .line 90
    :cond_4
    int-to-float p0, v2

    .line 91
    cmpl-float p0, p0, v3

    .line 92
    .line 93
    if-lez p0, :cond_5

    .line 94
    .line 95
    return v0

    .line 96
    :cond_5
    return v1
.end method

.method public final isSamsungAccountLoggedIn()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isShowNotificationAppIcon()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isShowingRemoteView(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "com.skt.prod.dialer"

    .line 2
    .line 3
    const-string v1, "com.samsung.android.incallui"

    .line 4
    .line 5
    const-string v2, "com.sec.android.app.clockpackage"

    .line 6
    .line 7
    const-string v3, "com.sec.android.app.voicenote"

    .line 8
    .line 9
    const-string v4, "com.sec.android.app.voicerecorder"

    .line 10
    .line 11
    const-string v5, "com.samsung.android.app.interpreter"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final isSkipFullscreenIntentClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFullscreenFullPopupWindowClosing:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->useTopPresentation()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final isSmartReplyUnusable()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isRDUMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isAiInfoConfirmed:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPreventOnlineProcessing()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    :cond_1
    const/4 v1, 0x1

    .line 34
    :cond_2
    :goto_0
    return v1
.end method

.method public final isUpdatedRemoteView(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string p0, "com.samsung.android.incallui"

    .line 2
    .line 3
    const-string v0, "com.sec.android.app.clockpackage"

    .line 4
    .line 5
    const-string v1, "com.skt.prod.dialer"

    .line 6
    .line 7
    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final launchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 1
    const-string v0, "S.S.N."

    .line 2
    .line 3
    const-string v1, "launchApp B5 -  Run App : "

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startNotificationIntent(Landroid/app/PendingIntent;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, ", result: "

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    return p0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string/jumbo p1, "unable to get isPackageEnabledForCoverLauncher()"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :cond_0
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public final launchFullscreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 1
    const-string v0, "S.S.N."

    .line 2
    .line 3
    const-string v1, "launchFullscreenIntent B5 -  Run FullscreenIntent : "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-interface {v2, v3, v4}, Landroid/app/IActivityTaskManager;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startNotificationIntent(Landroid/app/PendingIntent;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ", result: "

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x1

    .line 77
    return p0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    const-string/jumbo p1, "unable to get isPackageEnabledForCoverLauncher()"

    .line 80
    .line 81
    .line 82
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :cond_0
    const/4 p0, 0x0

    .line 86
    return p0
.end method

.method public final loadOnDeviceMetaData()V
    .locals 15

    .line 1
    const-string/jumbo v0, "}"

    .line 2
    .line 3
    .line 4
    const-string v1, "S.S.N."

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->onDeviceLanguageList:Ljava/util/List;

    .line 7
    .line 8
    const-string/jumbo v3, "{ \"list\" : "

    .line 9
    .line 10
    .line 11
    :try_start_0
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getOnDeviceMetaData()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v4, Lkotlin/text/Regex;

    .line 36
    .line 37
    const-string v5, "\\s+"

    .line 38
    .line 39
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, ",}"

    .line 47
    .line 48
    invoke-static {v3, v4, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v3, ",]"

    .line 53
    .line 54
    const-string v4, "]"

    .line 55
    .line 56
    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x1

    .line 65
    if-lez v3, :cond_0

    .line 66
    .line 67
    move v3, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v3, 0x0

    .line 70
    :goto_0
    if-eqz v3, :cond_9

    .line 71
    .line 72
    new-instance v3, Lcom/google/gson/JsonParser;

    .line 73
    .line 74
    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v3, "list"

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_9

    .line 92
    .line 93
    instance-of v3, v0, Lcom/google/gson/JsonArray;

    .line 94
    .line 95
    if-eqz v3, :cond_8

    .line 96
    .line 97
    check-cast v0, Lcom/google/gson/JsonArray;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_9

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lcom/google/gson/JsonElement;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    new-instance v14, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v8, 0x0

    .line 124
    const/4 v9, 0x0

    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v11, 0x0

    .line 127
    const/16 v12, 0x3f

    .line 128
    .line 129
    const/4 v13, 0x0

    .line 130
    move-object v5, v14

    .line 131
    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 132
    .line 133
    .line 134
    const-string/jumbo v5, "order"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    if-eqz v5, :cond_2

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    goto :goto_2

    .line 148
    :cond_2
    const/4 v5, -0x1

    .line 149
    :goto_2
    iput v5, v14, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->order:I

    .line 150
    .line 151
    const-string v5, "language"

    .line 152
    .line 153
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    if-eqz v5, :cond_3

    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_3

    .line 164
    :cond_3
    const/4 v5, 0x0

    .line 165
    :goto_3
    if-nez v5, :cond_4

    .line 166
    .line 167
    const-string v5, ""

    .line 168
    .line 169
    :cond_4
    :try_start_1
    iput-object v5, v14, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->language:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    iput-object v5, v14, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->languageDisplayName:Ljava/lang/String;

    .line 176
    .line 177
    const-string/jumbo v5, "supportToneConversion"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    if-eqz v5, :cond_5

    .line 185
    .line 186
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    goto :goto_4

    .line 191
    :cond_5
    move v5, v4

    .line 192
    :goto_4
    iput-boolean v5, v14, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportToneConversion:Z

    .line 193
    .line 194
    const-string/jumbo v5, "supportCorrection"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    if-eqz v5, :cond_6

    .line 202
    .line 203
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    goto :goto_5

    .line 208
    :cond_6
    move v5, v4

    .line 209
    :goto_5
    iput-boolean v5, v14, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportCorrection:Z

    .line 210
    .line 211
    const-string/jumbo v5, "supportReply"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-eqz v3, :cond_7

    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    goto :goto_6

    .line 225
    :cond_7
    move v3, v4

    .line 226
    :goto_6
    iput-boolean v3, v14, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportReply:Z

    .line 227
    .line 228
    iget v5, v14, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->order:I

    .line 229
    .line 230
    if-ltz v5, :cond_1

    .line 231
    .line 232
    if-eqz v3, :cond_1

    .line 233
    .line 234
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 240
    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v3, "Not a JSON Array: "

    .line 244
    .line 245
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw p0

    .line 259
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v2, "loadOnDeviceMetaData : "

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .line 282
    .line 283
    goto :goto_7

    .line 284
    :catch_0
    move-exception p0

    .line 285
    const-string v0, "loadOnDeviceMetaData e: "

    .line 286
    .line 287
    invoke-static {v0, p0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :goto_7
    return-void
.end method

.method public final moveDetailAdapterContentScroll(Landroid/view/View;ZZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    const-string v4, "S.S.N."

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "moveDetailAdapterContentScroll B5 - return - value is null  View : "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", selectNotificationInfo : "

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsContentScroll:Z

    .line 58
    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    const-string v0, "moveDetailAdapterContentScroll B5 - return mIsContentScroll : "

    .line 62
    .line 63
    invoke-static {v0, v3, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    const/4 v3, 0x0

    .line 68
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsContentScroll:Z

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    const/4 v2, 0x0

    .line 82
    :goto_2
    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 83
    .line 84
    if-eqz v2, :cond_29

    .line 85
    .line 86
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 87
    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    const/4 v1, 0x0

    .line 100
    :goto_3
    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 101
    .line 102
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 103
    .line 104
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 105
    .line 106
    if-eqz v2, :cond_29

    .line 107
    .line 108
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 109
    .line 110
    if-eqz v2, :cond_29

    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_6

    .line 117
    .line 118
    const-string v0, "moveDetailAdapterContentScroll B5 - size is zero"

    .line 119
    .line 120
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    const v7, 0x7f071318

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    add-int/lit8 v8, v5, -0x1

    .line 144
    .line 145
    invoke-static {v2, v8}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    int-to-float v7, v7

    .line 150
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    add-float/2addr v10, v7

    .line 155
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    int-to-float v7, v7

    .line 160
    add-float/2addr v10, v7

    .line 161
    rsub-int v7, v6, 0x2d0

    .line 162
    .line 163
    int-to-float v7, v7

    .line 164
    cmpl-float v7, v10, v7

    .line 165
    .line 166
    if-ltz v7, :cond_7

    .line 167
    .line 168
    const/4 v7, 0x1

    .line 169
    goto :goto_4

    .line 170
    :cond_7
    move v7, v3

    .line 171
    :goto_4
    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    .line 172
    .line 173
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getHeight()I

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    const-string v13, "moveDetailAdapterContentScroll B5 - cuttent body height : "

    .line 178
    .line 179
    invoke-static {v13, v12, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyContainer:Landroid/widget/LinearLayout;

    .line 183
    .line 184
    if-eqz p2, :cond_a

    .line 185
    .line 186
    const v2, 0x7f0a0311

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getY()F

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    int-to-float v2, v2

    .line 207
    sub-float/2addr v1, v2

    .line 208
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 209
    .line 210
    if-eqz v2, :cond_8

    .line 211
    .line 212
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 213
    .line 214
    if-eqz v2, :cond_8

    .line 215
    .line 216
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    goto :goto_5

    .line 221
    :cond_8
    move v2, v3

    .line 222
    :goto_5
    int-to-float v2, v2

    .line 223
    sub-float/2addr v1, v2

    .line 224
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 225
    .line 226
    if-eqz v0, :cond_9

    .line 227
    .line 228
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 229
    .line 230
    if-eqz v0, :cond_9

    .line 231
    .line 232
    float-to-int v2, v1

    .line 233
    invoke-virtual {v0, v3, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    .line 234
    .line 235
    .line 236
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v2, "moveDetailAdapterContentScroll B5 - isQuickReply scroll : "

    .line 239
    .line 240
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    goto/16 :goto_14

    .line 254
    .line 255
    :cond_a
    if-eqz p3, :cond_24

    .line 256
    .line 257
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 258
    .line 259
    if-eqz v1, :cond_b

    .line 260
    .line 261
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 262
    .line 263
    if-eqz v1, :cond_b

    .line 264
    .line 265
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    goto :goto_6

    .line 274
    :cond_b
    const/4 v1, 0x0

    .line 275
    :goto_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    .line 283
    .line 284
    .line 285
    move-result v10

    .line 286
    rsub-int v10, v10, 0x2d0

    .line 287
    .line 288
    sub-int/2addr v10, v6

    .line 289
    add-int/2addr v10, v1

    .line 290
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 291
    .line 292
    if-eqz v6, :cond_c

    .line 293
    .line 294
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 295
    .line 296
    if-eqz v6, :cond_c

    .line 297
    .line 298
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_c
    const/4 v6, 0x0

    .line 302
    :goto_7
    if-eqz v6, :cond_d

    .line 303
    .line 304
    iget-object v12, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_d
    const/4 v12, 0x0

    .line 308
    :goto_8
    if-nez v12, :cond_e

    .line 309
    .line 310
    invoke-static {v2, v3}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    :cond_e
    if-eqz v6, :cond_f

    .line 315
    .line 316
    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_f
    const/4 v3, 0x0

    .line 320
    :goto_9
    if-nez v3, :cond_10

    .line 321
    .line 322
    invoke-static {v2, v8}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    :cond_10
    if-eqz v6, :cond_11

    .line 327
    .line 328
    iget v8, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevHistoryCount:I

    .line 329
    .line 330
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    goto :goto_a

    .line 335
    :cond_11
    const/4 v8, 0x0

    .line 336
    :goto_a
    if-eqz v6, :cond_12

    .line 337
    .line 338
    iget-object v13, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    .line 339
    .line 340
    goto :goto_b

    .line 341
    :cond_12
    const/4 v13, 0x0

    .line 342
    :goto_b
    if-eqz v13, :cond_14

    .line 343
    .line 344
    if-eqz v6, :cond_13

    .line 345
    .line 346
    iget-object v13, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    .line 347
    .line 348
    goto :goto_c

    .line 349
    :cond_13
    const/4 v13, 0x0

    .line 350
    :goto_c
    if-nez v13, :cond_17

    .line 351
    .line 352
    :cond_14
    if-eqz v6, :cond_15

    .line 353
    .line 354
    iget-object v13, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    .line 355
    .line 356
    goto :goto_d

    .line 357
    :cond_15
    const/4 v13, 0x0

    .line 358
    :goto_d
    if-eqz v6, :cond_16

    .line 359
    .line 360
    iget-object v14, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    .line 361
    .line 362
    goto :goto_e

    .line 363
    :cond_16
    const/4 v14, 0x0

    .line 364
    :goto_e
    new-instance v15, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v0, "moveDetailAdapterContentScroll B5 - prevItem is null,scrollInfo?.prevFirstHistoryView :"

    .line 367
    .line 368
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v0, ", scrollInfo?.prevLastHistoryView : "

    .line 375
    .line 376
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 394
    .line 395
    .line 396
    move-result v13

    .line 397
    div-int/lit8 v13, v13, 0x3

    .line 398
    .line 399
    int-to-float v13, v13

    .line 400
    add-float/2addr v0, v13

    .line 401
    if-eqz v6, :cond_18

    .line 402
    .line 403
    iget v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryViewBottomMargin:I

    .line 404
    .line 405
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    goto :goto_f

    .line 410
    :cond_18
    const/4 v6, 0x0

    .line 411
    :goto_f
    const/4 v13, 0x1

    .line 412
    if-le v5, v13, :cond_19

    .line 413
    .line 414
    add-int/lit8 v13, v5, -0x2

    .line 415
    .line 416
    invoke-static {v2, v13}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 425
    .line 426
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 427
    .line 428
    goto :goto_10

    .line 429
    :cond_19
    const/4 v2, 0x0

    .line 430
    :goto_10
    int-to-float v10, v10

    .line 431
    cmpl-float v13, v10, v0

    .line 432
    .line 433
    if-lez v13, :cond_1c

    .line 434
    .line 435
    int-to-float v13, v1

    .line 436
    cmpg-float v13, v13, v0

    .line 437
    .line 438
    if-gez v13, :cond_1c

    .line 439
    .line 440
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-lt v0, v5, :cond_1b

    .line 448
    .line 449
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-le v0, v1, :cond_1a

    .line 458
    .line 459
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    add-int/2addr v1, v0

    .line 471
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    add-int/2addr v0, v2

    .line 476
    sub-int/2addr v1, v0

    .line 477
    neg-int v0, v1

    .line 478
    const-string v1, "latest prevFirstView?.height!! > lastItem.height"

    .line 479
    .line 480
    goto/16 :goto_11

    .line 481
    .line 482
    :cond_1a
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    add-int/2addr v0, v2

    .line 487
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    add-int/2addr v2, v1

    .line 499
    sub-int/2addr v0, v2

    .line 500
    const-string v1, "latest prevFirstView?.height!! <= lastItem.height"

    .line 501
    .line 502
    goto/16 :goto_11

    .line 503
    .line 504
    :cond_1b
    const-string v1, "latest normal"

    .line 505
    .line 506
    if-eqz v7, :cond_21

    .line 507
    .line 508
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    sub-float/2addr v0, v2

    .line 517
    float-to-int v0, v0

    .line 518
    goto/16 :goto_11

    .line 519
    .line 520
    :cond_1c
    cmpg-float v3, v10, v0

    .line 521
    .line 522
    if-gez v3, :cond_1d

    .line 523
    .line 524
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    if-lt v0, v5, :cond_20

    .line 532
    .line 533
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    add-int/2addr v1, v0

    .line 545
    neg-int v0, v1

    .line 546
    const-string/jumbo v1, "postion top"

    .line 547
    .line 548
    .line 549
    goto/16 :goto_11

    .line 550
    .line 551
    :cond_1d
    int-to-float v1, v1

    .line 552
    cmpl-float v0, v1, v0

    .line 553
    .line 554
    if-lez v0, :cond_20

    .line 555
    .line 556
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-lt v0, v5, :cond_1f

    .line 564
    .line 565
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-le v0, v1, :cond_1e

    .line 574
    .line 575
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    add-int/2addr v1, v0

    .line 587
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    add-int/2addr v0, v2

    .line 592
    sub-int/2addr v1, v0

    .line 593
    neg-int v0, v1

    .line 594
    const-string/jumbo v1, "postion bottom History Max - prevFirstView > lastitem"

    .line 595
    .line 596
    .line 597
    goto :goto_11

    .line 598
    :cond_1e
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    add-int/2addr v0, v2

    .line 603
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    add-int/2addr v2, v1

    .line 615
    sub-int/2addr v0, v2

    .line 616
    const-string/jumbo v1, "postion bottom History Max - prevFirstView <= lastitem"

    .line 617
    .line 618
    .line 619
    goto :goto_11

    .line 620
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    const v1, 0x7f07132b

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    const v3, 0x7f07131e

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getHeight()I

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    add-int/2addr v0, v1

    .line 655
    if-gt v0, v3, :cond_20

    .line 656
    .line 657
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    add-int/2addr v0, v2

    .line 662
    const-string/jumbo v1, "postion bottom History Not Max"

    .line 663
    .line 664
    .line 665
    goto :goto_11

    .line 666
    :cond_20
    const-string v0, ""

    .line 667
    .line 668
    move-object v1, v0

    .line 669
    :cond_21
    const/4 v0, 0x0

    .line 670
    :goto_11
    move-object/from16 v2, p0

    .line 671
    .line 672
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 673
    .line 674
    if-eqz v3, :cond_22

    .line 675
    .line 676
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 677
    .line 678
    if-eqz v3, :cond_22

    .line 679
    .line 680
    const/4 v5, 0x0

    .line 681
    invoke-virtual {v3, v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 682
    .line 683
    .line 684
    goto :goto_12

    .line 685
    :cond_22
    const/4 v5, 0x0

    .line 686
    :goto_12
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 687
    .line 688
    if-eqz v2, :cond_23

    .line 689
    .line 690
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 691
    .line 692
    if-eqz v2, :cond_23

    .line 693
    .line 694
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    .line 695
    .line 696
    const/4 v3, 0x0

    .line 697
    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    .line 698
    .line 699
    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    .line 700
    .line 701
    iput v5, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevHistoryCount:I

    .line 702
    .line 703
    iput v5, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryViewBottomMargin:I

    .line 704
    .line 705
    iput v5, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevBodyLayoutHeght:I

    .line 706
    .line 707
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    const-string v3, "moveDetailAdapterContentScroll B5 - isReceive scroll : "

    .line 710
    .line 711
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    const-string v1, ", receiveMoveScroll : "

    .line 718
    .line 719
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .line 731
    .line 732
    goto :goto_14

    .line 733
    :cond_24
    move-object v2, v0

    .line 734
    const/4 v0, 0x0

    .line 735
    const/4 v3, 0x1

    .line 736
    new-instance v5, Ljava/lang/StringBuilder;

    .line 737
    .line 738
    const-string v6, "moveDetailAdapterContentScroll B5 - totalY : "

    .line 739
    .line 740
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .line 752
    .line 753
    if-nez v7, :cond_26

    .line 754
    .line 755
    if-nez p4, :cond_26

    .line 756
    .line 757
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    .line 758
    .line 759
    if-eqz v5, :cond_25

    .line 760
    .line 761
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    .line 762
    .line 763
    .line 764
    move-result v5

    .line 765
    if-nez v5, :cond_25

    .line 766
    .line 767
    goto :goto_13

    .line 768
    :cond_25
    const/4 v3, 0x0

    .line 769
    :goto_13
    if-eqz v3, :cond_29

    .line 770
    .line 771
    :cond_26
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getY()F

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    .line 776
    .line 777
    .line 778
    move-result v3

    .line 779
    int-to-float v3, v3

    .line 780
    sub-float/2addr v1, v3

    .line 781
    if-eqz p4, :cond_28

    .line 782
    .line 783
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 784
    .line 785
    if-eqz v3, :cond_27

    .line 786
    .line 787
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 788
    .line 789
    if-eqz v3, :cond_27

    .line 790
    .line 791
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    :cond_27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 803
    .line 804
    .line 805
    move-result v0

    .line 806
    int-to-float v0, v0

    .line 807
    sub-float/2addr v1, v0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    const-string v3, "moveDetailAdapterContentScroll B5 - updated : "

    .line 811
    .line 812
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    .line 824
    .line 825
    :cond_28
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 826
    .line 827
    if-eqz v0, :cond_29

    .line 828
    .line 829
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 830
    .line 831
    if-eqz v0, :cond_29

    .line 832
    .line 833
    float-to-int v1, v1

    .line 834
    const/4 v2, 0x0

    .line 835
    invoke-virtual {v0, v2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    .line 836
    .line 837
    .line 838
    :cond_29
    :goto_14
    return-void
.end method

.method public final onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    const v1, 0x7f0a0a7c

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const v1, 0x7f0a0a7d

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressingVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyAiLogoText:Landroid/widget/TextView;

    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :goto_3
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 66
    .line 67
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x1

    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    move v1, v5

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    move v1, v4

    .line 80
    :goto_4
    const/4 v3, 0x0

    .line 81
    iget-object v6, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 82
    .line 83
    iget-object v7, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    iget-object v8, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    if-eqz v1, :cond_1a

    .line 88
    .line 89
    iget p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mItemPostionInGroup:I

    .line 90
    .line 91
    if-gt p1, v2, :cond_1a

    .line 92
    .line 93
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI:Z

    .line 94
    .line 95
    if-nez p1, :cond_7

    .line 96
    .line 97
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_5
    const-string p1, "S.S.N."

    .line 103
    .line 104
    const-string v1, " NOT SUPPORT SMART REPLY AI"

    .line 105
    .line 106
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    if-nez p1, :cond_6

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_c

    .line 121
    .line 122
    :cond_7
    :goto_6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    .line 123
    .line 124
    xor-int/2addr p1, v5

    .line 125
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    .line 126
    .line 127
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    .line 128
    .line 129
    if-nez p1, :cond_e

    .line 130
    .line 131
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 132
    .line 133
    if-eqz p1, :cond_a

    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    sget-boolean v9, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    .line 141
    .line 142
    if-eqz v9, :cond_9

    .line 143
    .line 144
    if-nez p1, :cond_8

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_8
    iget-object p1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 148
    .line 149
    const-string/jumbo v1, "suggestion_responses_used"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_9

    .line 161
    .line 162
    move p1, v5

    .line 163
    goto :goto_8

    .line 164
    :cond_9
    :goto_7
    move p1, v4

    .line 165
    :goto_8
    if-eqz p1, :cond_e

    .line 166
    .line 167
    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isRDUMode:Z

    .line 168
    .line 169
    if-eqz p1, :cond_c

    .line 170
    .line 171
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    .line 172
    .line 173
    if-nez p1, :cond_b

    .line 174
    .line 175
    goto/16 :goto_c

    .line 176
    .line 177
    :cond_b
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_c

    .line 181
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    .line 182
    .line 183
    if-nez p1, :cond_d

    .line 184
    .line 185
    goto :goto_c

    .line 186
    :cond_d
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_c

    .line 190
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    .line 191
    .line 192
    if-nez p1, :cond_f

    .line 193
    .line 194
    goto :goto_9

    .line 195
    :cond_f
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    :goto_9
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    .line 199
    .line 200
    if-nez p1, :cond_13

    .line 201
    .line 202
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 203
    .line 204
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-lez p1, :cond_13

    .line 211
    .line 212
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getHistoryInfo(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-eqz v1, :cond_11

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_10

    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_10
    move v1, v4

    .line 226
    goto :goto_b

    .line 227
    :cond_11
    :goto_a
    move v1, v5

    .line 228
    :goto_b
    if-eqz v1, :cond_12

    .line 229
    .line 230
    const-string p1, "emptyMessage"

    .line 231
    .line 232
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_12
    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    .line 240
    .line 241
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 242
    .line 243
    invoke-direct {v1, v9}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;-><init>(Landroid/content/Context;)V

    .line 244
    .line 245
    .line 246
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 247
    .line 248
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 249
    .line 250
    .line 251
    iget-object v10, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 252
    .line 253
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 254
    .line 255
    sub-int/2addr p1, v5

    .line 256
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 261
    .line 262
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    .line 263
    .line 264
    iput-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 265
    .line 266
    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->refresh()Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;

    .line 271
    .line 272
    invoke-direct {v5, v1, v9, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v5}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    .line 276
    .line 277
    .line 278
    :cond_13
    :goto_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->keyboardReplyButton:Landroid/widget/ImageView;

    .line 279
    .line 280
    if-nez p1, :cond_14

    .line 281
    .line 282
    move-object p1, v3

    .line 283
    :cond_14
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->inflateReplyWord()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setEditButton(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 293
    .line 294
    .line 295
    const p1, 0x7f0a0b25

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, Landroid/widget/ImageView;

    .line 303
    .line 304
    if-nez p1, :cond_15

    .line 305
    .line 306
    goto :goto_d

    .line 307
    :cond_15
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    :goto_d
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    const v1, 0x7f071330

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    invoke-virtual {v8, v4, p1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    const v1, 0x7f07132b

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 350
    .line 351
    .line 352
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    .line 353
    .line 354
    if-nez p1, :cond_16

    .line 355
    .line 356
    move-object p1, v3

    .line 357
    :cond_16
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    .line 361
    .line 362
    if-nez p1, :cond_17

    .line 363
    .line 364
    move-object p1, v3

    .line 365
    :cond_17
    invoke-virtual {p1, v4, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    const v1, 0x7f071336

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    const v4, 0x7f07133a

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    .line 399
    .line 400
    if-nez v4, :cond_18

    .line 401
    .line 402
    move-object v4, v3

    .line 403
    :cond_18
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    div-int/lit8 p1, p1, 0x2

    .line 408
    .line 409
    sub-int/2addr v4, p1

    .line 410
    sub-int/2addr v4, v1

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    const v1, 0x7f071344

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyContainer:Landroid/widget/LinearLayout;

    .line 427
    .line 428
    if-eqz v1, :cond_19

    .line 429
    .line 430
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    add-int/2addr p1, v4

    .line 435
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    invoke-virtual {v1, v5, p1, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 444
    .line 445
    .line 446
    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    const v1, 0x7f07131b

    .line 455
    .line 456
    .line 457
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    const v1, 0x7f0a0a70

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    check-cast v0, Landroid/widget/LinearLayout;

    .line 469
    .line 470
    if-eqz v0, :cond_25

    .line 471
    .line 472
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    add-int/2addr v4, p1

    .line 477
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 478
    .line 479
    .line 480
    move-result p1

    .line 481
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    invoke-virtual {v0, v1, v4, p1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_12

    .line 489
    .line 490
    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->keyboardReplyButton:Landroid/widget/ImageView;

    .line 491
    .line 492
    if-nez p1, :cond_1b

    .line 493
    .line 494
    move-object p1, v3

    .line 495
    :cond_1b
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    .line 497
    .line 498
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 499
    .line 500
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 501
    .line 502
    if-eqz p1, :cond_1d

    .line 503
    .line 504
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->keyboardReplyButton:Landroid/widget/ImageView;

    .line 505
    .line 506
    if-nez p1, :cond_1c

    .line 507
    .line 508
    move-object p1, v3

    .line 509
    :cond_1c
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    .line 511
    .line 512
    :cond_1d
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setEditButton(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    .line 519
    .line 520
    .line 521
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 522
    .line 523
    if-nez p1, :cond_1e

    .line 524
    .line 525
    goto :goto_e

    .line 526
    :cond_1e
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    .line 528
    .line 529
    :goto_e
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->suggestResponsesBtn:Landroid/widget/LinearLayout;

    .line 530
    .line 531
    if-nez p1, :cond_1f

    .line 532
    .line 533
    move-object p1, v3

    .line 534
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    if-eqz p1, :cond_21

    .line 542
    .line 543
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    if-nez p1, :cond_20

    .line 548
    .line 549
    goto :goto_f

    .line 550
    :cond_20
    move v5, v4

    .line 551
    :cond_21
    :goto_f
    if-nez v5, :cond_23

    .line 552
    .line 553
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    if-eqz p1, :cond_22

    .line 562
    .line 563
    goto :goto_10

    .line 564
    :cond_22
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    .line 566
    .line 567
    move p1, v4

    .line 568
    goto :goto_11

    .line 569
    :cond_23
    :goto_10
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 573
    .line 574
    .line 575
    move-result-object p1

    .line 576
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    const v0, 0x7f07132a

    .line 581
    .line 582
    .line 583
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 584
    .line 585
    .line 586
    move-result p1

    .line 587
    :goto_11
    const v0, 0x7f081272

    .line 588
    .line 589
    .line 590
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v8, v4, p1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 594
    .line 595
    .line 596
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    .line 597
    .line 598
    if-nez p1, :cond_24

    .line 599
    .line 600
    move-object p1, v3

    .line 601
    :cond_24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    const v1, 0x7f071319

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    invoke-virtual {p1, v4, v4, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 620
    .line 621
    .line 622
    move-result-object p1

    .line 623
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 624
    .line 625
    .line 626
    move-result-object p1

    .line 627
    const v0, 0x7f07131d

    .line 628
    .line 629
    .line 630
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 631
    .line 632
    .line 633
    move-result p1

    .line 634
    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 635
    .line 636
    .line 637
    :cond_25
    :goto_12
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    .line 638
    .line 639
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 640
    .line 641
    .line 642
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->callBackButtonText:Landroid/widget/TextView;

    .line 643
    .line 644
    if-nez v0, :cond_26

    .line 645
    .line 646
    move-object v0, v3

    .line 647
    :cond_26
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mCallBackButton:Landroid/view/View;

    .line 648
    .line 649
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 650
    .line 651
    .line 652
    move-result v1

    .line 653
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    .line 655
    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->replyButtonText:Landroid/widget/TextView;

    .line 657
    .line 658
    if-nez v0, :cond_27

    .line 659
    .line 660
    move-object v0, v3

    .line 661
    :cond_27
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->keyboardReplyButton:Landroid/widget/ImageView;

    .line 662
    .line 663
    if-nez v1, :cond_28

    .line 664
    .line 665
    move-object v1, v3

    .line 666
    :cond_28
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    .line 672
    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openAppButtonText:Landroid/widget/TextView;

    .line 674
    .line 675
    if-nez v0, :cond_29

    .line 676
    .line 677
    move-object v0, v3

    .line 678
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 679
    .line 680
    .line 681
    move-result p1

    .line 682
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    .line 684
    .line 685
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clearButtonText:Landroid/widget/TextView;

    .line 686
    .line 687
    if-nez p1, :cond_2a

    .line 688
    .line 689
    goto :goto_13

    .line 690
    :cond_2a
    move-object v3, p1

    .line 691
    :goto_13
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClearButton:Landroid/view/View;

    .line 692
    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 694
    .line 695
    .line 696
    move-result p1

    .line 697
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    .line 699
    .line 700
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtnText:Landroid/widget/TextView;

    .line 701
    .line 702
    if-nez p1, :cond_2b

    .line 703
    .line 704
    goto :goto_14

    .line 705
    :cond_2b
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    .line 706
    .line 707
    if-eqz p0, :cond_2c

    .line 708
    .line 709
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    :cond_2c
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    .line 715
    .line 716
    :goto_14
    return-void
.end method

.method public final onBindDetailAdapterTextViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openAppButtonText:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clearButtonText:Landroid/widget/TextView;

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v2, p0

    .line 27
    :goto_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClearButton:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onStateChangedInDeviceStateCallback(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFlexMode:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final openPhonePopupForIntelligenceSettings(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const/high16 v1, 0x14000000

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "runOnCover"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string v1, "ignoreKeyguardState"

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "showCoverToast"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 42
    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 46
    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string p1, "exception on openPhonePopupForIntelligenceSettings: "

    .line 55
    .line 56
    const-string v0, "S.S.N."

    .line 57
    .line 58
    invoke-static {p1, p0, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    return-void
.end method

.method public final performBackClick()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x12c

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-string v0, "QPN102"

    .line 19
    .line 20
    const-string v1, "QPNE0214"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v1, v2

    .line 48
    :goto_0
    if-nez v0, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    .line 52
    .line 53
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    .line 54
    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideGroupNotification()V

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 61
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    .line 62
    .line 63
    invoke-interface {p0, v2}, Lnotification/src/com/android/systemui/BasePromptProcessor;->setNotificationKey(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v0, "performBackClick() - ret: "

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string v0, "S.S.N."

    .line 82
    .line 83
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return v1
.end method

.method public final registerAODTspReceiver()V
    .locals 4

    .line 1
    const-string v0, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->aodTspUpdateReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;

    .line 13
    .line 14
    invoke-virtual {v3, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final removeSmartReplyHashMap(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyHashMap:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final replyActivityFinished(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateMainHeaderView(Landroid/widget/LinearLayout;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "S.S.N."

    .line 16
    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateMainHeaderViewVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo p0, "replyActivityFinished() - forcedFinish"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    :goto_0
    const/4 v4, 0x0

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {p0, v5, p1, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 66
    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    :cond_4
    move v3, v4

    .line 74
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateMainHeaderViewVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 78
    .line 79
    if-eqz p0, :cond_6

    .line 80
    .line 81
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-wide/16 v4, 0x12c

    .line 92
    .line 93
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 94
    .line 95
    .line 96
    :cond_6
    const-string/jumbo p0, "replyActivityFinished() - header visibility: "

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v3, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_7
    return-void
.end method

.method public final resetProgressScaleAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 19
    .line 20
    return-void
.end method

.method public final runSmartReplyUncompletedOperation()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    .line 2
    .line 3
    const-string/jumbo v1, "runSmartReplyUncompletedOperation() - "

    .line 4
    .line 5
    .line 6
    const-string v2, "S.S.N."

    .line 7
    .line 8
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultCompleteMsg:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showSmartReplyResultComplete(Ljava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultFailureMsg:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showSmartReplyResultFailure(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v1, 0x0

    .line 43
    :goto_1
    if-eqz v1, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const/16 v1, 0x8

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_2
    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultCompleteMsg:Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultFailureMsg:Ljava/lang/String;

    .line 62
    .line 63
    return-void
.end method

.method public final setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const p0, 0x7f0a0b34

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/widget/DateTimeView;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    if-nez p0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    if-eqz p1, :cond_6

    .line 18
    .line 19
    iget-boolean p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mShowWhen:Z

    .line 20
    .line 21
    if-eqz p2, :cond_5

    .line 22
    .line 23
    iget-wide v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    .line 24
    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmp-long p2, v0, v2

    .line 28
    .line 29
    if-lez p2, :cond_5

    .line 30
    .line 31
    iget-boolean p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-lez p2, :cond_3

    .line 43
    .line 44
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 57
    .line 58
    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    add-int/lit8 p2, p2, -0x1

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 73
    .line 74
    iget-wide p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    .line 75
    .line 76
    cmp-long v1, v4, v2

    .line 77
    .line 78
    if-lez v1, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move-wide v4, p1

    .line 82
    :goto_1
    invoke-virtual {p0, v4, v5}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    iget-wide v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    .line 90
    .line 91
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    iget-wide v1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mWhenMillis:J

    .line 110
    .line 111
    :cond_4
    invoke-virtual {p0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    const/16 p1, 0x8

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_2
    return-void
.end method

.method public final setContentViewItem(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 6
    .line 7
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v4

    .line 19
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    const v5, 0x7f0a0b27

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/widget/TextView;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    :goto_1
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->titleText:Ljava/lang/CharSequence;

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 48
    .line 49
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    .line 50
    .line 51
    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    const-string v3, "S.S.N."

    .line 55
    .line 56
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    if-eqz v2, :cond_1d

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const v6, 0x7f07132c

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const v7, 0x7f07132e

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    const v8, 0x7f07132d

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    const v9, 0x7f071336

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 105
    .line 106
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 113
    .line 114
    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v12, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v13, "setContentViewItem B5 - conversation key : "

    .line 119
    .line 120
    .line 121
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v11, ", size : "

    .line 128
    .line 129
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    move v12, v4

    .line 147
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    if-eqz v13, :cond_23

    .line 152
    .line 153
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    check-cast v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 158
    .line 159
    iget-boolean v14, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsChecked:Z

    .line 160
    .line 161
    if-eqz v14, :cond_4

    .line 162
    .line 163
    add-int/lit8 v4, v4, 0x1

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    iget-boolean v15, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    .line 171
    .line 172
    if-eqz v15, :cond_5

    .line 173
    .line 174
    const v15, 0x7f0d0453

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_5
    const v15, 0x7f0d0452

    .line 179
    .line 180
    .line 181
    :goto_4
    invoke-virtual {v14, v15, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    .line 191
    const v15, 0x7f0a0312

    .line 192
    .line 193
    .line 194
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v15

    .line 198
    check-cast v15, Landroid/widget/ImageView;

    .line 199
    .line 200
    if-eqz v15, :cond_6

    .line 201
    .line 202
    const/4 v0, 0x0

    .line 203
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 204
    .line 205
    .line 206
    :cond_6
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mPrevSender:Ljava/lang/String;

    .line 207
    .line 208
    move-object/from16 v16, v11

    .line 209
    .line 210
    if-eqz v0, :cond_7

    .line 211
    .line 212
    iget-object v11, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    const/4 v0, 0x1

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    const/4 v0, 0x0

    .line 223
    :goto_5
    const-class v11, Landroid/app/Notification$MessagingStyle;

    .line 224
    .line 225
    move-object/from16 v17, v5

    .line 226
    .line 227
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 228
    .line 229
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 230
    .line 231
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v5}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_a

    .line 244
    .line 245
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 246
    .line 247
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 248
    .line 249
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 250
    .line 251
    if-eqz v5, :cond_8

    .line 252
    .line 253
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 254
    .line 255
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    const-string v11, "com.viber.voip"

    .line 260
    .line 261
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    goto :goto_6

    .line 266
    :cond_8
    const/4 v5, 0x0

    .line 267
    :goto_6
    if-eqz v5, :cond_9

    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_9
    const/4 v5, 0x0

    .line 271
    goto :goto_8

    .line 272
    :cond_a
    :goto_7
    const/4 v5, 0x1

    .line 273
    :goto_8
    iget-boolean v11, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    .line 274
    .line 275
    const/16 v18, 0x1

    .line 276
    .line 277
    xor-int/lit8 v11, v11, 0x1

    .line 278
    .line 279
    move/from16 v19, v7

    .line 280
    .line 281
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 282
    .line 283
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    .line 284
    .line 285
    or-int/2addr v5, v7

    .line 286
    and-int/2addr v5, v11

    .line 287
    if-eqz v5, :cond_10

    .line 288
    .line 289
    if-eqz v0, :cond_d

    .line 290
    .line 291
    if-nez v4, :cond_b

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_b
    if-nez v15, :cond_c

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_c
    const/4 v0, 0x4

    .line 298
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_d
    :goto_9
    iget-object v0, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    .line 303
    .line 304
    const v5, 0x7f0a0316

    .line 305
    .line 306
    .line 307
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    check-cast v5, Landroid/widget/TextView;

    .line 312
    .line 313
    const/4 v7, 0x0

    .line 314
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mPrevSender:Ljava/lang/String;

    .line 321
    .line 322
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    .line 323
    .line 324
    invoke-static {v5, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    .line 329
    .line 330
    if-nez v15, :cond_e

    .line 331
    .line 332
    goto :goto_a

    .line 333
    :cond_e
    const/4 v0, 0x0

    .line 334
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    :goto_a
    if-nez v15, :cond_f

    .line 338
    .line 339
    goto :goto_b

    .line 340
    :cond_f
    const/16 v0, 0x8

    .line 341
    .line 342
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_10
    const/16 v0, 0x8

    .line 347
    .line 348
    const/4 v5, 0x0

    .line 349
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mPrevSender:Ljava/lang/String;

    .line 350
    .line 351
    if-nez v15, :cond_11

    .line 352
    .line 353
    goto :goto_b

    .line 354
    :cond_11
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    .line 356
    .line 357
    :goto_b
    iget-object v0, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    .line 358
    .line 359
    invoke-static {v12, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->bindContent(Landroid/view/View;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 360
    .line 361
    .line 362
    iget-object v0, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/drawable/Drawable;

    .line 363
    .line 364
    if-nez v0, :cond_12

    .line 365
    .line 366
    move/from16 v22, v2

    .line 367
    .line 368
    move/from16 v20, v8

    .line 369
    .line 370
    move-object/from16 v21, v14

    .line 371
    .line 372
    goto :goto_e

    .line 373
    :cond_12
    const v5, 0x7f0a030f

    .line 374
    .line 375
    .line 376
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    check-cast v5, Landroid/widget/ImageView;

    .line 381
    .line 382
    const/4 v7, 0x0

    .line 383
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 391
    .line 392
    .line 393
    move-result v11

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 395
    .line 396
    .line 397
    move-result-object v15

    .line 398
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 399
    .line 400
    .line 401
    move-result-object v15

    .line 402
    move/from16 v20, v8

    .line 403
    .line 404
    const v8, 0x7f07132f

    .line 405
    .line 406
    .line 407
    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    if-ge v7, v8, :cond_14

    .line 412
    .line 413
    if-ge v11, v8, :cond_14

    .line 414
    .line 415
    const-string/jumbo v15, "resizing image. drawable width = "

    .line 416
    .line 417
    .line 418
    move-object/from16 v21, v14

    .line 419
    .line 420
    const-string v14, ", height = "

    .line 421
    .line 422
    move/from16 v22, v2

    .line 423
    .line 424
    const-string v2, " | minimum = "

    .line 425
    .line 426
    invoke-static {v15, v7, v14, v11, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 445
    .line 446
    if-le v7, v11, :cond_13

    .line 447
    .line 448
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 449
    .line 450
    goto :goto_c

    .line 451
    :cond_13
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 452
    .line 453
    :goto_c
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    .line 455
    .line 456
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 457
    .line 458
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 459
    .line 460
    .line 461
    goto :goto_d

    .line 462
    :cond_14
    move/from16 v22, v2

    .line 463
    .line 464
    move-object/from16 v21, v14

    .line 465
    .line 466
    :goto_d
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    .line 468
    .line 469
    :goto_e
    add-int/lit8 v4, v4, 0x1

    .line 470
    .line 471
    const-wide/16 v7, 0x0

    .line 472
    .line 473
    if-eq v10, v4, :cond_1a

    .line 474
    .line 475
    iget-boolean v0, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    .line 476
    .line 477
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 482
    .line 483
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    .line 484
    .line 485
    if-ne v0, v2, :cond_1a

    .line 486
    .line 487
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 492
    .line 493
    iget-wide v14, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    .line 494
    .line 495
    cmp-long v2, v14, v7

    .line 496
    .line 497
    if-lez v2, :cond_15

    .line 498
    .line 499
    goto :goto_f

    .line 500
    :cond_15
    iget-wide v14, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    .line 501
    .line 502
    :goto_f
    move-object v5, v3

    .line 503
    iget-wide v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    .line 504
    .line 505
    cmp-long v7, v2, v7

    .line 506
    .line 507
    if-lez v7, :cond_16

    .line 508
    .line 509
    goto :goto_10

    .line 510
    :cond_16
    iget-wide v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    .line 511
    .line 512
    :goto_10
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 513
    .line 514
    const-string v8, "HH:mm"

    .line 515
    .line 516
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    new-instance v8, Ljava/util/Date;

    .line 520
    .line 521
    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 522
    .line 523
    .line 524
    new-instance v11, Ljava/util/Date;

    .line 525
    .line 526
    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    iget-object v7, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    .line 538
    .line 539
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    .line 540
    .line 541
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-eqz v2, :cond_18

    .line 546
    .line 547
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    if-nez v0, :cond_17

    .line 552
    .line 553
    goto :goto_11

    .line 554
    :cond_17
    const/16 v18, 0x0

    .line 555
    .line 556
    :cond_18
    :goto_11
    if-eqz v18, :cond_19

    .line 557
    .line 558
    goto :goto_12

    .line 559
    :cond_19
    move-object/from16 v14, v21

    .line 560
    .line 561
    goto :goto_14

    .line 562
    :cond_1a
    move-object v5, v3

    .line 563
    :goto_12
    iget-wide v2, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    .line 564
    .line 565
    const-wide/16 v7, 0x0

    .line 566
    .line 567
    cmp-long v0, v2, v7

    .line 568
    .line 569
    if-lez v0, :cond_1b

    .line 570
    .line 571
    goto :goto_13

    .line 572
    :cond_1b
    iget-wide v2, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    .line 573
    .line 574
    :goto_13
    invoke-static {v12, v2, v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->bindTime(Landroid/view/View;JLcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 575
    .line 576
    .line 577
    sub-int v2, v22, v6

    .line 578
    .line 579
    move-object/from16 v14, v21

    .line 580
    .line 581
    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 582
    .line 583
    :goto_14
    if-ne v4, v10, :cond_1c

    .line 584
    .line 585
    div-int/lit8 v8, v20, 0x2

    .line 586
    .line 587
    add-int v8, v8, v19

    .line 588
    .line 589
    sub-int/2addr v8, v6

    .line 590
    iput v8, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 591
    .line 592
    :cond_1c
    invoke-virtual {v12, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    .line 594
    .line 595
    move-object/from16 v0, v17

    .line 596
    .line 597
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 598
    .line 599
    .line 600
    const/4 v12, 0x0

    .line 601
    move-object v3, v5

    .line 602
    move-object/from16 v11, v16

    .line 603
    .line 604
    move/from16 v7, v19

    .line 605
    .line 606
    move/from16 v8, v20

    .line 607
    .line 608
    move/from16 v2, v22

    .line 609
    .line 610
    move-object v5, v0

    .line 611
    move-object/from16 v0, p0

    .line 612
    .line 613
    goto/16 :goto_3

    .line 614
    .line 615
    :cond_1d
    move-object v0, v5

    .line 616
    move-object v5, v3

    .line 617
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 618
    .line 619
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 620
    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    const-string/jumbo v4, "setContentViewItem B5 - key : "

    .line 624
    .line 625
    .line 626
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .line 638
    .line 639
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    const v3, 0x7f0d044c

    .line 644
    .line 645
    .line 646
    const/4 v4, 0x0

    .line 647
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 652
    .line 653
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigText:Ljava/lang/String;

    .line 654
    .line 655
    if-eqz v4, :cond_1e

    .line 656
    .line 657
    goto :goto_15

    .line 658
    :cond_1e
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    .line 659
    .line 660
    :goto_15
    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->bindContent(Landroid/view/View;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 661
    .line 662
    .line 663
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 664
    .line 665
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 666
    .line 667
    if-nez v3, :cond_1f

    .line 668
    .line 669
    goto/16 :goto_18

    .line 670
    .line 671
    :cond_1f
    const v4, 0x7f0a0311

    .line 672
    .line 673
    .line 674
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    check-cast v4, Landroid/widget/TextView;

    .line 679
    .line 680
    const v6, 0x7f0a030f

    .line 681
    .line 682
    .line 683
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 684
    .line 685
    .line 686
    move-result-object v6

    .line 687
    check-cast v6, Landroid/widget/ImageView;

    .line 688
    .line 689
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 690
    .line 691
    .line 692
    move-result v7

    .line 693
    int-to-float v7, v7

    .line 694
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    int-to-float v8, v8

    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 700
    .line 701
    .line 702
    move-result-object v9

    .line 703
    const v10, 0x7f071326

    .line 704
    .line 705
    .line 706
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 707
    .line 708
    .line 709
    move-result v9

    .line 710
    int-to-float v9, v9

    .line 711
    const/4 v10, 0x2

    .line 712
    int-to-float v10, v10

    .line 713
    mul-float/2addr v10, v9

    .line 714
    const-string v11, "bindImageBitmap bitmapWidth : "

    .line 715
    .line 716
    const-string v12, " bitmapHeight : "

    .line 717
    .line 718
    const-string v13, " viewWidth : "

    .line 719
    .line 720
    invoke-static {v11, v7, v12, v8, v13}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    move-result-object v8

    .line 724
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    const-string v11, " viewHeight : "

    .line 728
    .line 729
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v8

    .line 739
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .line 741
    .line 742
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 747
    .line 748
    const/4 v8, 0x3

    .line 749
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 750
    .line 751
    const/16 v8, 0xc8

    .line 752
    .line 753
    int-to-float v8, v8

    .line 754
    mul-float/2addr v8, v9

    .line 755
    const/16 v11, 0x120

    .line 756
    .line 757
    int-to-float v11, v11

    .line 758
    div-float/2addr v8, v11

    .line 759
    cmpl-float v8, v7, v8

    .line 760
    .line 761
    if-lez v8, :cond_20

    .line 762
    .line 763
    float-to-int v7, v9

    .line 764
    goto :goto_16

    .line 765
    :cond_20
    float-to-int v7, v7

    .line 766
    :goto_16
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 767
    .line 768
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    const/16 v7, 0x8

    .line 773
    .line 774
    if-eq v4, v7, :cond_21

    .line 775
    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    const v7, 0x7f071327

    .line 781
    .line 782
    .line 783
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 784
    .line 785
    .line 786
    move-result v4

    .line 787
    goto :goto_17

    .line 788
    :cond_21
    const/4 v4, 0x0

    .line 789
    :goto_17
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 790
    .line 791
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    .line 793
    .line 794
    float-to-int v4, v10

    .line 795
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 796
    .line 797
    .line 798
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 799
    .line 800
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 801
    .line 802
    .line 803
    const/4 v4, 0x0

    .line 804
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 808
    .line 809
    .line 810
    :goto_18
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 811
    .line 812
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mShowWhen:Z

    .line 813
    .line 814
    if-eqz v4, :cond_22

    .line 815
    .line 816
    iget-wide v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    .line 817
    .line 818
    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->bindTime(Landroid/view/View;JLcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 819
    .line 820
    .line 821
    :cond_22
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 822
    .line 823
    .line 824
    :cond_23
    return-void
.end method

.method public final setDimOnMainBackground(Landroid/view/View;)V
    .locals 0

    .line 1
    const p0, 0x7f081286

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setFullPopupWindowKeyEventListener(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setFullPopupWindowKeyEventListener$1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setFullPopupWindowKeyEventListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final setGroupAdapterFooterMargin(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v0, 0x7f071362

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setGroupAdapterIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 31
    .line 32
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mUserPublic:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    xor-int/2addr v1, v0

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p3, p2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->setIconView(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;Z)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 57
    .line 58
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setRightIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final setIsReplySendButtonLoading()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsReplySendButtonLoading:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    if-eqz p0, :cond_1

    .line 17
    .line 18
    const v0, 0x7f0a09d6

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final setItemDecoration(Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f07138a

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;

    .line 17
    .line 18
    invoke-direct {v1, p1, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setListItemTextLayout(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    .line 1
    const p0, 0x7f0a0b3e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const v0, 0x7f0a0b3f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    const v1, 0x7f0a0b34

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/DateTimeView;

    .line 27
    .line 28
    const v2, 0x7f0a0b49

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/ImageView;

    .line 36
    .line 37
    const v3, 0x7f0a0c60

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/widget/ImageView;

    .line 45
    .line 46
    const v4, 0x7f0a09ba

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/widget/ImageView;

    .line 54
    .line 55
    const v5, 0x7f0a0c7f

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const v6, 0x7f0713bb

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const/4 v6, 0x0

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/widget/DateTimeView;->getVisibility()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_0

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    move v1, v6

    .line 87
    :goto_0
    if-eqz v1, :cond_1

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const v7, 0x7f07130e

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    const v8, 0x7f0713af

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    sub-int/2addr v5, v1

    .line 112
    sub-int/2addr v5, v7

    .line 113
    :cond_1
    const v1, 0x7f071350

    .line 114
    .line 115
    .line 116
    if-eqz p0, :cond_3

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    .line 124
    if-eqz v2, :cond_2

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_2

    .line 131
    .line 132
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const v6, 0x7f071376

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    sub-int/2addr v5, v2

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    const v6, 0x7f07137f

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 167
    .line 168
    .line 169
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    if-eqz v3, :cond_4

    .line 173
    .line 174
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-nez p0, :cond_4

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    const v2, 0x7f0713c2

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    sub-int/2addr v5, p0

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 197
    .line 198
    .line 199
    :cond_4
    if-eqz v4, :cond_5

    .line 200
    .line 201
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    if-nez p0, :cond_5

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    const v2, 0x7f071395

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    sub-int/2addr v5, p0

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 224
    .line 225
    .line 226
    :cond_5
    if-eqz p2, :cond_6

    .line 227
    .line 228
    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    if-nez p0, :cond_6

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    const p2, 0x7f071317

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    sub-int/2addr v5, p0

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    const p1, 0x7f071314

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 254
    .line 255
    .line 256
    :cond_6
    if-nez v0, :cond_7

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_7
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 260
    .line 261
    .line 262
    :goto_2
    return-void
.end method

.method public final setPopupItemInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setPopupItemInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, p2

    .line 13
    :goto_0
    if-nez p3, :cond_4

    .line 14
    .line 15
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 16
    .line 17
    if-nez p4, :cond_4

    .line 18
    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 22
    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    const p4, 0x7f0a0b3c

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/TextView;

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 37
    .line 38
    if-eqz p4, :cond_4

    .line 39
    .line 40
    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 41
    .line 42
    if-eqz p4, :cond_4

    .line 43
    .line 44
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    move-object p4, v1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    :goto_1
    check-cast p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 64
    .line 65
    if-eqz p4, :cond_4

    .line 66
    .line 67
    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz p4, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-lez v0, :cond_3

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move v0, p2

    .line 88
    :goto_2
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    :cond_4
    if-nez p3, :cond_5

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->useTopPresentation()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 111
    .line 112
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    return-void
.end method

.method public final setPopupViewLayout(Landroid/content/Context;ZLandroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->useTopPresentation()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const p2, 0x7f0d0459

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const p2, 0x7f0d045b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 34
    .line 35
    return-void
.end method

.method public final setQuickReplyFocusBackground(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const v0, 0x7f081287

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setSmartReplyResultValue(ILjava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultCompleteMsg:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultFailureMsg:Ljava/lang/String;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final setStartedReplyActivity()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsStartedReplyActivity:Z

    .line 3
    .line 4
    return-void
.end method

.method public final showAIReply()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 17
    .line 18
    if-ne v3, v1, :cond_1

    .line 19
    .line 20
    move v3, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v3, v2

    .line 23
    :goto_0
    if-eqz v3, :cond_3

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    move v0, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v0, v2

    .line 38
    :goto_1
    if-eqz v0, :cond_3

    .line 39
    .line 40
    move v0, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move v0, v2

    .line 43
    :goto_2
    if-nez v0, :cond_4

    .line 44
    .line 45
    :goto_3
    move v0, v2

    .line 46
    goto :goto_4

    .line 47
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isReplyLayoutShowing()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :goto_4
    if-eqz v0, :cond_18

    .line 52
    .line 53
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 54
    .line 55
    if-eqz v7, :cond_17

    .line 56
    .line 57
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 58
    .line 59
    const-string v3, "callAIReply() - start smartReplyStatus : "

    .line 60
    .line 61
    const-string v9, "S.S.N."

    .line 62
    .line 63
    invoke-static {v3, v0, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    const-string v0, "callAIReply() return - CallAIReply is already running"

    .line 71
    .line 72
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto/16 :goto_e

    .line 76
    .line 77
    :cond_5
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 78
    .line 79
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getHistoryInfo(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const-string v0, ""

    .line 84
    .line 85
    const/16 v3, 0x8

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    if-eqz v8, :cond_10

    .line 89
    .line 90
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_7

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_6

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_6
    move v5, v2

    .line 108
    goto :goto_6

    .line 109
    :cond_7
    :goto_5
    move v5, v1

    .line 110
    :goto_6
    if-eqz v5, :cond_8

    .line 111
    .line 112
    goto/16 :goto_b

    .line 113
    .line 114
    :cond_8
    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 115
    .line 116
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyHashMap:Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;

    .line 125
    .line 126
    if-eqz v5, :cond_b

    .line 127
    .line 128
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;->prevPrompt:Ljava/lang/String;

    .line 129
    .line 130
    if-eqz v6, :cond_9

    .line 131
    .line 132
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    goto :goto_7

    .line 137
    :cond_9
    move v6, v2

    .line 138
    :goto_7
    if-eqz v6, :cond_b

    .line 139
    .line 140
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    .line 141
    .line 142
    if-eqz v6, :cond_a

    .line 143
    .line 144
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    .line 145
    .line 146
    const-string v5, "callAIReply() continue - isAlreadyAiReply but click button by user"

    .line 147
    .line 148
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_a
    iget-object v0, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;->replyText:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->inflateSmartReplyAI(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v0, "callAIReply() return - isAlreadyAiReply"

    .line 158
    .line 159
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 163
    .line 164
    goto/16 :goto_e

    .line 165
    .line 166
    :cond_b
    :goto_8
    iget v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 167
    .line 168
    if-eq v5, v1, :cond_c

    .line 169
    .line 170
    const-string v0, "callAIReply() return - it\'s already progressing... "

    .line 171
    .line 172
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    goto/16 :goto_e

    .line 176
    .line 177
    :cond_c
    const/4 v5, 0x2

    .line 178
    iput v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 179
    .line 180
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 181
    .line 182
    if-eqz v5, :cond_d

    .line 183
    .line 184
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    .line 185
    .line 186
    if-eqz v5, :cond_d

    .line 187
    .line 188
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getY()F

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    iput v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mReplyLayoutCurrentPostionY:F

    .line 204
    .line 205
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 206
    .line 207
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-lez v4, :cond_f

    .line 214
    .line 215
    new-instance v5, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    .line 216
    .line 217
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;-><init>(Landroid/content/Context;)V

    .line 220
    .line 221
    .line 222
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 223
    .line 224
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 228
    .line 229
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 230
    .line 231
    sub-int/2addr v4, v1

    .line 232
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 237
    .line 238
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 241
    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 243
    .line 244
    if-nez v1, :cond_e

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_e
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    :goto_9
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->refresh()Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1;

    .line 258
    .line 259
    move-object v3, v1

    .line 260
    move-object v4, v5

    .line 261
    move-object v5, v6

    .line 262
    move-object v6, p0

    .line 263
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    .line 267
    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_f
    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 271
    .line 272
    :goto_a
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 273
    .line 274
    const-string v1, "callAIReply() - end smartReplyStatus : "

    .line 275
    .line 276
    invoke-static {v1, v0, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto :goto_e

    .line 280
    :cond_10
    :goto_b
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->handleProgressLayout(Z)V

    .line 281
    .line 282
    .line 283
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 284
    .line 285
    if-nez v5, :cond_11

    .line 286
    .line 287
    goto :goto_c

    .line 288
    :cond_11
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    .line 290
    .line 291
    :goto_c
    if-eqz v8, :cond_12

    .line 292
    .line 293
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    :cond_12
    if-eqz v4, :cond_14

    .line 302
    .line 303
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-nez v4, :cond_13

    .line 308
    .line 309
    goto :goto_d

    .line 310
    :cond_13
    move v1, v2

    .line 311
    :cond_14
    :goto_d
    if-eqz v1, :cond_16

    .line 312
    .line 313
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    .line 314
    .line 315
    if-eqz v1, :cond_16

    .line 316
    .line 317
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    .line 318
    .line 319
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    .line 323
    .line 324
    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 326
    .line 327
    if-eqz v0, :cond_15

    .line 328
    .line 329
    const v1, 0x7f1310f2

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 333
    .line 334
    .line 335
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 336
    .line 337
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showErrorMessageWithAnim(Landroid/view/View;)V

    .line 338
    .line 339
    .line 340
    :cond_16
    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 341
    .line 342
    const-string v0, "callAIReply() return - history is null or empty"

    .line 343
    .line 344
    invoke-static {v0, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :cond_17
    :goto_e
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    .line 348
    .line 349
    :cond_18
    return-void
.end method

.method public final showBouncer(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 11
    .line 12
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v2

    .line 20
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v4, "showBouncer B5 -isMethodSecure : "

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", isUnlocked : "

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "S.S.N."

    .line 44
    .line 45
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 55
    .line 56
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 57
    .line 58
    if-ne v1, v4, :cond_1

    .line 59
    .line 60
    move v1, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v1, v3

    .line 63
    :goto_1
    if-eqz v1, :cond_6

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    new-instance v0, Landroid/content/Intent;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "com.samsung.android.action.UNLOCK_NOTIFICATION_PENDING_INTENT"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 78
    .line 79
    const-string v5, "key"

    .line 80
    .line 81
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const/high16 v1, 0x14000000

    .line 85
    .line 86
    invoke-static {p1, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v0, Landroid/content/Intent;

    .line 91
    .line 92
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v1, "runOnCover"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    const-string v1, "ignoreKeyguardState"

    .line 102
    .line 103
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    const-string/jumbo v1, "showCoverToast"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 113
    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 117
    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    invoke-interface {v1, p1, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    .line 124
    .line 125
    if-nez p1, :cond_3

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    iput-boolean v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->isShowBouncer:Z

    .line 129
    .line 130
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    .line 131
    .line 132
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showBouncer$1;

    .line 133
    .line 134
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showBouncer$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 138
    .line 139
    if-eqz p0, :cond_4

    .line 140
    .line 141
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 142
    .line 143
    :cond_4
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-eqz p0, :cond_5

    .line 150
    .line 151
    const-wide/16 v1, 0x12c

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    const-wide/16 v1, 0x0

    .line 155
    .line 156
    :goto_3
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_6
    const-string p0, "keyguard"

    .line 161
    .line 162
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Landroid/app/KeyguardManager;

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    .line 169
    .line 170
    .line 171
    :cond_7
    :goto_4
    return-void
.end method

.method public final showReplyButtonViewPopupWindow(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, p1, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$1;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    div-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    add-int/2addr p2, v0

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const v2, 0x7f071342

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/2addr v0, p2

    .line 52
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFlexMode:Z

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 p2, 0x0

    .line 74
    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    rsub-int p2, p2, 0x2d0

    .line 82
    .line 83
    div-int/lit8 p2, p2, 0x2

    .line 84
    .line 85
    add-int/2addr v0, p2

    .line 86
    :cond_2
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 87
    .line 88
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const v3, 0x7f071336

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    .line 109
    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;

    .line 113
    .line 114
    invoke-direct {v3, p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    if-eqz p2, :cond_4

    .line 124
    .line 125
    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 126
    .line 127
    .line 128
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    .line 131
    .line 132
    return-object p0
.end method

.method public final showSmartReplyResultComplete(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSB:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    .line 5
    .line 6
    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v1

    .line 21
    :goto_0
    if-eqz v2, :cond_3

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;

    .line 36
    .line 37
    invoke-direct {v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iput-object v4, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;->prevPrompt:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p1, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;->replyText:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyHashMap:Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->inflateSmartReplyAI(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 59
    .line 60
    .line 61
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    sget p1, Lkotlin/Result;->$r8$clinit:I

    .line 66
    .line 67
    new-instance p1, Lkotlin/Result$Failure;

    .line 68
    .line 69
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    move-object p0, p1

    .line 73
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final showSmartReplyResultFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->resetProgressScaleAnimation()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v2, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressingVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSB:Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 32
    .line 33
    .line 34
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 35
    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    :cond_2
    const/4 v1, 0x1

    .line 47
    :cond_3
    if-nez v1, :cond_a

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showErrorMessageWithAnim(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    goto :goto_5

    .line 63
    :cond_5
    if-eqz p1, :cond_6

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_2

    .line 74
    :cond_6
    const/4 p1, 0x0

    .line 75
    :goto_2
    const-string v0, "Blocked by input safety filter"

    .line 76
    .line 77
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    const p1, 0x7f1310f3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_3

    .line 93
    :cond_7
    const-string v0, "Input is too long"

    .line 94
    .line 95
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_8

    .line 100
    .line 101
    const p1, 0x7f1310f1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_3

    .line 109
    :cond_8
    const p1, 0x7f1310f2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 117
    .line 118
    if-nez v0, :cond_9

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showErrorMessageWithAnim(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    :cond_a
    :goto_5
    return-void
.end method

.method public final showUnlockIconAnim()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->isShowBouncer:Z

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v2, v1

    .line 18
    :goto_1
    const-string v3, "S.S.N."

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    const-string/jumbo p0, "showUnlockIconAnim() return - not in notiRoom"

    .line 23
    .line 24
    .line 25
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    if-eqz v2, :cond_3

    .line 30
    .line 31
    const-string/jumbo p0, "showUnlockIconAnim() return - show bouncer"

    .line 32
    .line 33
    .line 34
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubScreenManagerLazy:Ldagger/Lazy;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/systemui/subscreen/SubScreenManager;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const v2, 0x7f0d0474

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const v2, 0x7f0a0c78

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 80
    .line 81
    new-instance v3, Landroid/widget/PopupWindow;

    .line 82
    .line 83
    const/4 v4, -0x2

    .line 84
    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const v4, 0x7f0713c5

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    const/16 v4, 0x31

    .line 103
    .line 104
    invoke-virtual {v3, v0, v4, v1, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-wide/16 v0, 0x1f4

    .line 120
    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showUnlockIconAnim$1$1;

    .line 130
    .line 131
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showUnlockIconAnim$1$1;-><init>(Landroid/widget/PopupWindow;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_4
    const-string p0, "can\'t inflate unlock icon"

    .line 139
    .line 140
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final smallIconPadding(ZZZ)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const p1, 0x7f07136e

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const p1, 0x7f071354

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eqz p3, :cond_2

    .line 22
    .line 23
    const p1, 0x7f0713a2

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const p1, 0x7f071374

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final squircleRadius(ZZ)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const p1, 0x7f071371

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const p1, 0x7f071391

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const p1, 0x7f07138c

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final startNotificationIntent(Landroid/app/PendingIntent;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getActivityOptions(ILandroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v9

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    move-object v2, p1

    .line 24
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, -0x1

    .line 30
    return p0
.end method

.method public final startProgressSpringAnimation(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 8

    .line 1
    const-wide/16 v0, 0xc8

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v4, v5

    .line 27
    :goto_0
    if-nez v4, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mReplyLayoutCurrentPostionY:F

    .line 31
    .line 32
    const/16 v7, 0x130

    .line 33
    .line 34
    int-to-float v7, v7

    .line 35
    sub-float/2addr v6, v7

    .line 36
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 37
    .line 38
    .line 39
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    :cond_3
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    new-array v6, v6, [F

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    aput v2, v6, v7

    .line 52
    .line 53
    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 66
    .line 67
    .line 68
    const v4, 0x3f59999a    # 0.85f

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move v4, v3

    .line 73
    move v3, v2

    .line 74
    move v2, v4

    .line 75
    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->resetProgressScaleAnimation()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$1;

    .line 100
    .line 101
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$1;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 105
    .line 106
    .line 107
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 108
    .line 109
    invoke-direct {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 110
    .line 111
    .line 112
    const/high16 v1, 0x43480000    # 200.0f

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 115
    .line 116
    .line 117
    const/high16 v1, 0x3f400000    # 0.75f

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 123
    .line 124
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 125
    .line 126
    invoke-direct {v1, p1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 130
    .line 131
    iput-object v0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 134
    .line 135
    .line 136
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 137
    .line 138
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    .line 139
    .line 140
    invoke-direct {v1, p1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 141
    .line 142
    .line 143
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 144
    .line 145
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;

    .line 146
    .line 147
    invoke-direct {p1, p2, p3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;-><init>(ZLjava/lang/Runnable;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 151
    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 154
    .line 155
    if-eqz p0, :cond_5

    .line 156
    .line 157
    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 160
    .line 161
    .line 162
    :cond_5
    return-void
.end method

.method public final unregisterAODTspReceiver()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->aodTspUpdateReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, " unregisterAODTspReceiver IllegalArgumentException: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "S.S.N."

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final updateContentScroll()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsContentScroll:Z

    .line 3
    .line 4
    return-void
.end method

.method public final updateIconContainer(Landroid/view/View;Z)V
    .locals 3

    .line 1
    const p0, 0x7f0a04a5

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const v0, 0x7f0a0aa9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    move v2, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v1

    .line 25
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final updateImportBadgeIconRing(Landroid/view/View;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const v1, 0x7f0a0b3a

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/ImageView;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p1, v0

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    if-eqz p2, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const v1, 0x106020a

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isShowNotificationAppIcon()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const v0, 0x7f081108

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 58
    .line 59
    .line 60
    const/4 p2, 0x1

    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const p2, 0x7f081266

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    const/4 p0, 0x0

    .line 79
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    const/16 p0, 0x8

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :goto_2
    return-void
.end method

.method public final updateMainHeaderView(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 1
    const v0, 0x7f0a0481

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method

.method public final updateMainHeaderViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 17
    .line 18
    .line 19
    :goto_1
    return-void
.end method

.method public final updateSamsungAccount()V
    .locals 6

    .line 1
    const-string v0, "S.S.N."

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    const-string v3, "com.osp.app.signin"

    .line 11
    .line 12
    iget v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentUserId:I

    .line 13
    .line 14
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v1, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    move-object v1, v2

    .line 34
    :goto_0
    const/4 v3, 0x0

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    array-length v4, v1

    .line 38
    if-lez v4, :cond_1

    .line 39
    .line 40
    aget-object v2, v1, v3

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->currentAccount:Landroid/accounts/Account;

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v5, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    xor-int/2addr v1, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    if-nez v1, :cond_4

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move v1, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    :goto_1
    move v1, v4

    .line 67
    :goto_2
    if-nez v1, :cond_5

    .line 68
    .line 69
    const-string/jumbo p0, "updateSamsungAccount() : No Change"

    .line 70
    .line 71
    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->currentAccount:Landroid/accounts/Account;

    .line 77
    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    move v3, v4

    .line 81
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    .line 82
    .line 83
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 89
    .line 90
    .line 91
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    .line 92
    .line 93
    const-string/jumbo v1, "updateSamsungAccount() : isSALoggedIn "

    .line 94
    .line 95
    .line 96
    invoke-static {v1, p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final updateShadowIconColor(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const-class v2, Lnoticolorpicker/NotificationColorPicker;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lnoticolorpicker/NotificationColorPicker;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lnoticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v1, v0

    .line 25
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const v2, 0x7f0a044d

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v2, :cond_5

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isShowNotificationAppIcon()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 50
    .line 51
    .line 52
    const p0, 0x7f0a00d8

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/16 p2, 0x4c

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/4 p0, 0x0

    .line 88
    :goto_1
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_3
    if-eqz p2, :cond_4

    .line 94
    .line 95
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    mul-int/lit8 p0, p0, 0x3

    .line 100
    .line 101
    div-int/lit8 p0, p0, 0xa

    .line 102
    .line 103
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 120
    .line 121
    invoke-virtual {v2, p0, p1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    const p1, 0x7f060466

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    const p2, 0x7f060467

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 150
    .line 151
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    mul-int/lit8 v1, v1, 0x3

    .line 156
    .line 157
    div-int/lit8 v1, v1, 0xa

    .line 158
    .line 159
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-static {v1, v2, v3, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    const p2, 0x7f0709e9

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    mul-int/lit8 p2, p2, 0x3

    .line 194
    .line 195
    div-int/lit8 p2, p2, 0xa

    .line 196
    .line 197
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-static {p2, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 214
    .line 215
    .line 216
    :cond_5
    :goto_2
    return-void
.end method

.method public final updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smallIconPadding(ZZZ)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const p3, 0x7f080cd0

    .line 16
    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    invoke-virtual {p0, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final updateSmartReplyVariables()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 14
    .line 15
    const-string v4, "ai_info_confirmed"

    .line 16
    .line 17
    invoke-virtual {v1, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v1, v3

    .line 30
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isAiInfoConfirmed:Z

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string/jumbo v1, "shopdemo"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ne v0, v2, :cond_2

    .line 52
    .line 53
    move v0, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v0, v3

    .line 56
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isRDUMode:Z

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSamsungAccount()V

    .line 59
    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isRDUMode:Z

    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    .line 64
    .line 65
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    .line 66
    .line 67
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isAiInfoConfirmed:Z

    .line 68
    .line 69
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    .line 70
    .line 71
    sget-boolean v7, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 72
    .line 73
    if-eqz v7, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPreventOnlineProcessing()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    move v2, v3

    .line 83
    :goto_3
    const-string p0, "isRDUMode: "

    .line 84
    .line 85
    const-string v3, " isSALoggedIn: "

    .line 86
    .line 87
    const-string v7, " isChildAccount: "

    .line 88
    .line 89
    invoke-static {p0, v0, v3, v1, v7}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string v0, " isAiInfoConfirmed: "

    .line 94
    .line 95
    const-string v1, " isSuggestionResponsesEnabled: "

    .line 96
    .line 97
    invoke-static {p0, v4, v0, v5, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, " isPreventOnlineProcessing: "

    .line 101
    .line 102
    const-string v1, "S.S.N."

    .line 103
    .line 104
    invoke-static {p0, v6, v0, v2, v1}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final updateVisibilityForSmartReplyLayout(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, v1

    .line 10
    :goto_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->aiDisclaimerBtn:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    move-object v1, v0

    .line 22
    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyAiLogoText:Landroid/widget/TextView;

    .line 30
    .line 31
    if-nez p0, :cond_3

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_4
    :goto_3
    return-void
.end method

.method public final useTopPresentation()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string v2, "call"

    .line 18
    .line 19
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const-class v2, Landroid/app/Notification$CallStyle;

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    move v1, v0

    .line 36
    :cond_0
    xor-int/lit8 p0, v1, 0x1

    .line 37
    .line 38
    return p0
.end method
