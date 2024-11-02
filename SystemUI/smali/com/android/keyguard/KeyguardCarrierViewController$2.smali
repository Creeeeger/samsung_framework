.class public final Lcom/android/keyguard/KeyguardCarrierViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPhoneStateChanged(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneState:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x2

    .line 15
    if-ne p1, v2, :cond_1

    .line 16
    .line 17
    const/16 p0, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    if-eq p3, p2, :cond_1

    .line 6
    .line 7
    const/4 p2, 0x5

    .line 8
    if-eq p3, p2, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    const-string v0, "gsm.sim.state"

    .line 27
    .line 28
    const-string v1, ""

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    const-string v1, ","

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "isSimStateAbsentAll() : simSlotCount = "

    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, ", simStates = "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v2, "KeyguardCarrierView"

    .line 65
    .line 66
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move v0, p1

    .line 70
    move v2, p2

    .line 71
    :goto_0
    if-ge v0, p3, :cond_5

    .line 72
    .line 73
    array-length v3, v1

    .line 74
    if-gt v3, v0, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    aget-object v3, v1, v0

    .line 78
    .line 79
    const-string v4, "ABSENT"

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_3

    .line 86
    .line 87
    move v2, p1

    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    move v2, p2

    .line 92
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 93
    .line 94
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    .line 99
    .line 100
    .line 101
    :goto_2
    return-void
.end method
