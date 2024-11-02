.class public final Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 0

    .line 1
    return-void
.end method

.method public final isShowing()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final show()V
    .locals 9

    .line 1
    const-string/jumbo v0, "phone"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v3, "DataConnectionDataLimitDialog"

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 23
    .line 24
    if-nez v2, :cond_3

    .line 25
    .line 26
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    array-length v6, v2

    .line 39
    move v7, v4

    .line 40
    :goto_0
    if-ge v7, v6, :cond_1

    .line 41
    .line 42
    aget-object v5, v2, v7

    .line 43
    .line 44
    iget-object v5, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 62
    .line 63
    new-instance p0, Landroid/content/Intent;

    .line 64
    .line 65
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v0, Landroid/content/ComponentName;

    .line 69
    .line 70
    const-string v2, "com.android.systemui"

    .line 71
    .line 72
    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    .line 73
    .line 74
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    const/high16 v0, 0x10000000

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    const-string v0, "android.net.NETWORK_TEMPLATE"

    .line 86
    .line 87
    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    const-string/jumbo v0, "showDataConnectionNotifications() : hasPolicy is false"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    const-string/jumbo v0, "showDataConnectionNotifications() : Failed TelephonyManager.getSubscriberId"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    return-void
.end method
