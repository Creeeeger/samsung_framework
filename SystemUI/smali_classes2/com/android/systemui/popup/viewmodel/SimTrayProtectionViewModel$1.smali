.class public final Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "SimTrayProtectionViewModel"

    .line 14
    .line 15
    const-string v1, "onFinishedGoingToSleep"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mRemoveSimTray:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "SimTrayProtectionViewModel"

    .line 14
    .line 15
    const-string v1, "onStartedGoingToSleep"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mRemoveSimTray:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    .line 1
    const-string v0, "SimTrayProtectionViewModel"

    .line 2
    .line 3
    const-string v1, "onStartedWakingUp"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mRemoveSimTray:Z

    .line 12
    .line 13
    return-void
.end method
