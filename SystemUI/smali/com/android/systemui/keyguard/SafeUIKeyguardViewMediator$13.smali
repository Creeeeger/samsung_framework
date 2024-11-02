.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string v0, "KeyguardViewMediator.mKeyGuardGoingAwayRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "SafeUIKeyguardViewMediator"

    .line 7
    .line 8
    const-string v1, "keyguardGoingAway"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 16
    .line 17
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->keyguardGoingAway()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 29
    .line 30
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 40
    .line 41
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWallpaperSupportsAmbientMode:Z

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 53
    .line 54
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isGoingToNotificationShade()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 67
    .line 68
    iget-boolean v2, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWallpaperSupportsAmbientMode:Z

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    :cond_1
    or-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 81
    .line 82
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 87
    .line 88
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isUnlockWithWallpaper()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    or-int/lit8 v1, v1, 0x4

    .line 95
    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 99
    .line 100
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 105
    .line 106
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->shouldSubtleWindowAnimationsForUnlock()V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 110
    .line 111
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->Companion:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$Companion;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 131
    .line 132
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 137
    .line 138
    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 144
    .line 145
    new-instance v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$13$$ExternalSyntheticLambda0;-><init>(I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    .line 152
    .line 153
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 154
    .line 155
    .line 156
    return-void
.end method
