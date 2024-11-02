.class public final synthetic Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mListener:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$TurnOnClickListener;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 18
    .line 19
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->showUnavailableMessage()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->showTurnOffView()V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
