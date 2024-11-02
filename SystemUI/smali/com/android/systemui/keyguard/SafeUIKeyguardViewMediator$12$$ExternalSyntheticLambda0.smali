.class public final synthetic Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

.field public final synthetic f$1:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    .line 16
    .line 17
    iget-object v9, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 18
    .line 19
    invoke-static/range {v1 .. v9}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleStartKeyguardExitAnimation(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;JJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 25
    .line 26
    check-cast p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onSuccessfulUnlock()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionEnd()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
