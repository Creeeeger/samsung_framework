.class public final Lcom/android/keyguard/StrongAuthPopup$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/StrongAuthPopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/StrongAuthPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/StrongAuthPopup$1;->this$0:Lcom/android/keyguard/StrongAuthPopup;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/keyguard/StrongAuthPopup$1$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/android/keyguard/StrongAuthPopup$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/StrongAuthPopup$1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
