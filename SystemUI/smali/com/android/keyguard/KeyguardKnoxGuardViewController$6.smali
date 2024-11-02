.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-string/jumbo p1, "wifi_state"

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x3

    .line 22
    if-ne p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    const-string p2, "WIFI_STATE_CHANGED_ACTION received : enabled = "

    .line 34
    .line 35
    const-string v0, " visibility :"

    .line 36
    .line 37
    invoke-static {p2, p1, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const-string v0, "KeyguardKnoxGuardView"

    .line 57
    .line 58
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const v0, 0x7f130887

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->showToast(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 92
    .line 93
    const/16 p1, 0x8

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void
.end method
