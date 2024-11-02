.class public final synthetic Lcom/android/keyguard/KeyguardSecSimPinViewController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "KeyguardSecSimPinViewController"

    .line 10
    .line 11
    const-string v1, "eraseSubscriptions"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecESimArea;->eraseSubscriptions()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
