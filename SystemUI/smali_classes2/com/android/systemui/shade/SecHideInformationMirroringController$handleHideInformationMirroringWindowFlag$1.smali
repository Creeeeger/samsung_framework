.class public final Lcom/android/systemui/shade/SecHideInformationMirroringController$handleHideInformationMirroringWindowFlag$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecHideInformationMirroringController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecHideInformationMirroringController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController$handleHideInformationMirroringWindowFlag$1;->this$0:Lcom/android/systemui/shade/SecHideInformationMirroringController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController$handleHideInformationMirroringWindowFlag$1;->this$0:Lcom/android/systemui/shade/SecHideInformationMirroringController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->access$getModel$p(Lcom/android/systemui/shade/SecHideInformationMirroringController;)Lcom/android/systemui/shade/SecHideInformationMirroringModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecHideInformationMirroringModel;->shouldHideInformation()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController$handleHideInformationMirroringWindowFlag$1;->this$0:Lcom/android/systemui/shade/SecHideInformationMirroringController;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->access$getNotificationShadeWindowController$p(Lcom/android/systemui/shade/SecHideInformationMirroringController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->isHideInformationMirroring:Z

    .line 26
    .line 27
    if-eq v3, v0, :cond_0

    .line 28
    .line 29
    iput-boolean v0, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->isHideInformationMirroring:Z

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->access$getStatusBarWindowController$p(Lcom/android/systemui/shade/SecHideInformationMirroringController;)Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    .line 39
    .line 40
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsHideInformationMirroring:Z

    .line 41
    .line 42
    if-eq v2, v0, :cond_1

    .line 43
    .line 44
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsHideInformationMirroring:Z

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method
