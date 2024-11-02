.class public final synthetic Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;->mListener:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$ClickListener;

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    .line 13
    .line 14
    .line 15
    const-string v0, "SubroomFlashLightSettingsActivity"

    .line 16
    .line 17
    const-string v1, "onTurnOffClick: "

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->finishFlashLightActivity()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;->mTurnOffView:Landroid/widget/Button;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const v0, 0x7f1300ff

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
