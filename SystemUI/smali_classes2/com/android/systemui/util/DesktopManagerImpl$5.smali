.class public final Lcom/android/systemui/util/DesktopManagerImpl$5;
.super Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getConnectedDeviceListForGroup()V
    .locals 2

    .line 1
    const-string v0, "DesktopManager"

    .line 2
    .line 3
    const-string v1, "getConnectedDeviceListForGroup"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 11
    .line 12
    const/high16 v1, 0x30000

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final getFailedUnlockAttempt()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getLockoutAttemptDeadline()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final getRemainingAttemptBeforeWipe()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final requestPrivacyItems()V
    .locals 2

    .line 1
    const-string v0, "DesktopManager"

    .line 2
    .line 3
    const-string/jumbo v1, "requestPrivacyItems"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 12
    .line 13
    const/high16 v1, 0x90000

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final requestStatusIcons()V
    .locals 2

    .line 1
    const-string v0, "DesktopManager"

    .line 2
    .line 3
    const-string/jumbo v1, "requestStatusIcons"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 12
    .line 13
    const/high16 v1, 0x80000

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final requestUnlock(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "DesktopManager"

    .line 2
    .line 3
    const-string/jumbo v1, "requestUnlock called!"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 12
    .line 13
    const/high16 v1, 0x10000

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 21
    .line 22
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final showControls()V
    .locals 2

    .line 1
    const-string v0, "DesktopManager"

    .line 2
    .line 3
    const-string/jumbo v1, "showControls"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 12
    .line 13
    const/high16 v1, 0x70000

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
