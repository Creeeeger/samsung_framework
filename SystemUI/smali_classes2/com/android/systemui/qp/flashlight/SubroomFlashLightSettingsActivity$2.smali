.class public final Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$2;->this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

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
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$2;->this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubroomFlashLightUtil:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mInstance:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubroomFlashLightUtil:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    .line 41
    .line 42
    :cond_4
    return-void
.end method
