.class public final Lcom/android/systemui/shade/SecQuickSettingsController$interceptMediaTouchEvent$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickSettingsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecQuickSettingsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsController$interceptMediaTouchEvent$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsController;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsController$interceptMediaTouchEvent$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->trackingRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsController$interceptMediaTouchEvent$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->panelViewControllerLazy:Ldagger/Lazy;

    .line 11
    .line 12
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsController$interceptMediaTouchEvent$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->updateInitialHeightOnTouchRunnable:Ljava/lang/Runnable;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
