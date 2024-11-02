.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "cancel blank scrim"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimControllerLazy:Ldagger/Lazy;

    .line 16
    .line 17
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onScreenTurnedOn()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
