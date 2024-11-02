.class public final Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field public final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field public final SYSTEM_DIALOG_REASON_RECENT_APPS_KEY:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/controls/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/BaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "reason"

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    .line 10
    .line 11
    const-string p1, "homekey"

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    .line 14
    .line 15
    const-string/jumbo p1, "recentapps"

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_RECENT_APPS_KEY:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v3, "onReceive "

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->onHomeKeyPressed()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_RECENT_APPS_KEY:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->onRecentAppsKeyPressed()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string p0, "android.intent.action.SCREEN_OFF"

    .line 70
    .line 71
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string/jumbo p2, "onScreenOff"

    .line 82
    .line 83
    .line 84
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    return-void
.end method
