.class public final Lcom/android/keyguard/KeyguardCarrierTextViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p0, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierTextView;->updateVisibility()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p0, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierTextView;->updateVisibility()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
