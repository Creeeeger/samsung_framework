.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

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
    .locals 2

    .line 1
    const-string p1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string/jumbo p1, "seq"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const-string p2, "SafeUIKeyguardViewMediator"

    .line 22
    .line 23
    const-string/jumbo v0, "received DELAYED_KEYGUARD_ACTION with seq = "

    .line 24
    .line 25
    .line 26
    const-string v1, ", mDelayedShowingSequence = "

    .line 27
    .line 28
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 33
    .line 34
    iget v1, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    .line 35
    .line 36
    invoke-static {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 40
    .line 41
    monitor-enter v1

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 43
    .line 44
    iget p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    .line 45
    .line 46
    if-ne p2, p1, :cond_0

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mdoKeyguardLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    monitor-exit v1

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_1
    const-string p1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    const-string/jumbo p1, "seq"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const-string v1, "android.intent.extra.USER_ID"

    .line 77
    .line 78
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 85
    .line 86
    monitor-enter v0

    .line 87
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 88
    .line 89
    iget v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedProfileShowingSequence:I

    .line 90
    .line 91
    if-ne v1, p1, :cond_2

    .line 92
    .line 93
    invoke-static {p0, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mlockProfile(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;I)V

    .line 94
    .line 95
    .line 96
    :cond_2
    monitor-exit v0

    .line 97
    goto :goto_0

    .line 98
    :catchall_1
    move-exception p0

    .line 99
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    throw p0

    .line 101
    :cond_3
    :goto_0
    return-void
.end method
