.class public final Lcom/android/systemui/subscreen/SubScreenManager$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$2;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$2;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 10
    .line 11
    const-string v2, "SubScreenManager"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p0, "onKeyguardShowingChanged() no plugin"

    .line 16
    .line 17
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "onKeyguardShowingChanged() "

    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 27
    .line 28
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onKeyguardShowingChanged(Z)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final onUnlockedChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$2;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 10
    .line 11
    const-string v2, "SubScreenManager"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p0, "onUnlockedChanged() no plugin"

    .line 16
    .line 17
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "onUnlockedChanged() "

    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 27
    .line 28
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onUnlockedChanged(Z)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
