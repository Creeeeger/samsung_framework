.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

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
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    if-eqz v0, :cond_5

    .line 23
    .line 24
    const-string p2, "com.salab.issuetracker"

    .line 25
    .line 26
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 34
    .line 35
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled:Z

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 48
    .line 49
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled:Z

    .line 59
    .line 60
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    const-string/jumbo p1, "pkg receiver "

    .line 67
    .line 68
    .line 69
    const-string p2, "KeyguardSysDumpTrigger"

    .line 70
    .line 71
    invoke-static {p1, p0, p2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_2
    return-void
.end method
