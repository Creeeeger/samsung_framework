.class public final Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;->this$0:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;

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
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;->this$0:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardShowing:Z

    .line 14
    .line 15
    return-void
.end method
