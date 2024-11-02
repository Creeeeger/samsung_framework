.class public final Lcom/android/keyguard/KeyguardCarrierViewController$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

.field public final synthetic val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "onReceive: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "KeyguardCarrierView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, -0x1

    .line 35
    sparse-switch v0, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :sswitch_0
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v3, 0x2

    .line 49
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v3, v2

    .line 60
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v0, "com.sec.android.CarrierLock.DISABLED"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move v3, v1

    .line 71
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_0
    const-string/jumbo p1, "ss"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p2, "LOADED"

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 91
    .line 92
    iget-object p2, p1, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

    .line 95
    .line 96
    invoke-virtual {p2, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

    .line 104
    .line 105
    invoke-virtual {p1, p0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setCarrierLockPlusInfo()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_2
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerByRemoteLock(I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 119
    .line 120
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 127
    .line 128
    invoke-interface {p1, p2, p0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_1
    return-void

    .line 132
    nop

    .line 133
    :sswitch_data_0
    .sparse-switch
        -0x749e82b0 -> :sswitch_2
        -0x290a5660 -> :sswitch_1
        -0xdb21ee7 -> :sswitch_0
    .end sparse-switch

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
