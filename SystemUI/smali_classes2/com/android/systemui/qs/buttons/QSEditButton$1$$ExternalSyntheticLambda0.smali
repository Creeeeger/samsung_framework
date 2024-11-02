.class public final synthetic Lcom/android/systemui/qs/buttons/QSEditButton$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSEditButton$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSEditButton$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSEditButton$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSEditButton$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSEditButton$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSEditButton$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSEditButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSEditButton;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSEditButton;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 15
    .line 16
    const v1, 0x7f0a021f

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 28
    .line 29
    iput-object v0, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mCapturedBlurredBackground:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda2;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/SecQSPanelController;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mUiHandler:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method
