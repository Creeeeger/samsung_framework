.class public final Lcom/android/keyguard/DualDarInnerLockScreenController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$1;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDualDARInnerLockscreenRequirementChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$1;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->-$$Nest$mdismissInnerLockScreen(Lcom/android/keyguard/DualDarInnerLockScreenController;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
