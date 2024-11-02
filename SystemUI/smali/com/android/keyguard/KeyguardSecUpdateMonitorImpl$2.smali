.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "secureState"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const-string v0, "mSecureLockChangedCallback sendResult : secureState "

    .line 9
    .line 10
    const-string v1, "KeyguardUpdateMonitor"

    .line 11
    .line 12
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchSecureState(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
