.class public final Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 4
    .line 5
    const-string v1, "onFolderStateChanged: "

    .line 6
    .line 7
    invoke-static {v1, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFolderOpened:Z

    .line 26
    .line 27
    return-void
.end method
