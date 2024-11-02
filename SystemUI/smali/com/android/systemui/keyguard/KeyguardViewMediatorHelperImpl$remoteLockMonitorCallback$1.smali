.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemoteLockType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 10
    .line 11
    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 12
    .line 13
    iget-boolean v3, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 14
    .line 15
    const-string v4, "changeRemoteLockState data="

    .line 16
    .line 17
    const-string v5, " -> "

    .line 18
    .line 19
    const-string v6, " enableLock="

    .line 20
    .line 21
    invoke-static {v4, v0, v5, v2, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 41
    .line 42
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 46
    .line 47
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$notifyRemoteLockRequested(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final checkRemoteLockPassword([B)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
