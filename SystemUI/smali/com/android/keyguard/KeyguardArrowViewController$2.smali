.class public final Lcom/android/keyguard/KeyguardArrowViewController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardArrowViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$2;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$2;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->initMainDisplaySize(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLastOrientation:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    move v3, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v3, v2

    .line 23
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 24
    .line 25
    if-eq v0, p1, :cond_2

    .line 26
    .line 27
    iput p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLastOrientation:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowMargin()V

    .line 30
    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardArrowViewController;->updateSecurityViewPosition(ZZ)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method
