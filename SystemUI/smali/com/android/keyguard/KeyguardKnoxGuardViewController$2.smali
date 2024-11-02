.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRemoteLockInfoChanged()V
    .locals 2

    .line 1
    const-string v0, "KeyguardKnoxGuardView"

    .line 2
    .line 3
    const-string/jumbo v1, "onRemoteLockInfoChanged"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    .line 12
    .line 13
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 3

    .line 1
    const-string/jumbo v0, "onSimStateChanged subID : "

    .line 2
    .line 3
    .line 4
    const-string v1, ", slotId : "

    .line 5
    .line 6
    const-string v2, ", simState : "

    .line 7
    .line 8
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "KeyguardKnoxGuardView"

    .line 13
    .line 14
    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    if-eq p3, p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x5

    .line 21
    if-ne p3, p1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateNetworkSettingsButton()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method
