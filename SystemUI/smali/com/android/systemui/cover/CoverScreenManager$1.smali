.class public final Lcom/android/systemui/cover/CoverScreenManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLockDisabledChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 22
    .line 23
    const-string v1, "CoverScreenManager"

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string/jumbo p0, "onLockDisabledChanged() no plugin"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, v0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string/jumbo v0, "onLockDisabledChanged() "

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 45
    .line 46
    check-cast p0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    .line 47
    .line 48
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginDisplayCover;->onLockDisabledChanged(Z)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onUserSwitchComplete() "

    .line 2
    .line 3
    .line 4
    const-string v1, ", mCoverState = "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "CoverScreenManager"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->updatePluginListener()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 22
    .line 23
    const-string v1, "CoverScreenManager"

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string/jumbo p0, "onUserUnlocked() no plugin"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, v0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string/jumbo v0, "onUserUnlocked() "

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 45
    .line 46
    check-cast p0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    .line 47
    .line 48
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginDisplayCover;->onUserUnlocked()V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method
