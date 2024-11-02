.class public final Lcom/android/keyguard/KeyguardSimPersoViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSimStateChanged(III)V
    .locals 3

    .line 1
    const/4 p2, 0x5

    .line 2
    const/4 v0, 0x1

    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 4
    .line 5
    if-eq p3, v0, :cond_0

    .line 6
    .line 7
    if-eq p3, p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->resetState()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimState(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 41
    .line 42
    invoke-interface {p1, p2, p0, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-ne p3, p2, :cond_2

    .line 47
    .line 48
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    iget p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    .line 55
    .line 56
    if-eq p2, p1, :cond_2

    .line 57
    .line 58
    const-string p0, "KeyguardSimPersoView"

    .line 59
    .line 60
    const-string p1, "READY already came. Skip this"

    .line 61
    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->resetState()V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method
