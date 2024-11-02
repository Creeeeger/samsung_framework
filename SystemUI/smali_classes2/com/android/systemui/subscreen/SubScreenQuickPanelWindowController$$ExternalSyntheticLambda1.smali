.class public final synthetic Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelHeightAnimator:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 34
    .line 35
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 36
    .line 37
    const-string v1, "instantCollapse"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->updatePanelExpansion(FZ)V

    .line 45
    .line 46
    .line 47
    :goto_2
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
