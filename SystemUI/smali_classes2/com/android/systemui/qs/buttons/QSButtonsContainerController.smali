.class public final Lcom/android/systemui/qs/buttons/QSButtonsContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsListener:Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;

.field public final mSettingsValueList:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/SecQSPanelController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "emergency_mode"

    .line 5
    .line 6
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    filled-new-array {p1}, [Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsValueList:[Landroid/net/Uri;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 19
    .line 20
    check-cast p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    .line 21
    .line 22
    const p2, 0x7f0a0a11

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/android/systemui/qs/buttons/QSSettingsButton;

    .line 30
    .line 31
    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainerController;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsListener:Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 39
    .line 40
    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    .line 41
    .line 42
    const p1, 0x7f0a0392

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/systemui/qs/buttons/QSEditButton;

    .line 50
    .line 51
    iput-object p3, p0, Lcom/android/systemui/qs/buttons/QSEditButton;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsValueList:[Landroid/net/Uri;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsListener:Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsListener:Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setListening(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mListening:Z

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mListening:Z

    .line 11
    .line 12
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->supportsMultipleUsers()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 19
    .line 20
    iget-boolean v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mListening:Z

    .line 21
    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iput-boolean p1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mListening:Z

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    new-instance p1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 43
    .line 44
    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    .line 47
    .line 48
    if-ne p1, p2, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    iput-boolean p2, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    .line 52
    .line 53
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->supportsMultipleUsers()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 60
    .line 61
    iget-boolean v0, p1, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    .line 62
    .line 63
    if-ne v0, p2, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iput-boolean p2, p1, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    .line 67
    .line 68
    :cond_5
    :goto_1
    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :goto_2
    return-void
.end method
