.class public final Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;->this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;->this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v1, v0

    .line 9
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mIsFlexMode:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v1, "updateRoundedCorners ,flexmode:"

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mIsFlexMode:Z

    .line 25
    .line 26
    const-string v2, "SubroomFlashLightSettingsActivity"

    .line 27
    .line 28
    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mIsFlexMode:Z

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const v0, 0x1050320

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 57
    .line 58
    const v2, 0x106000c

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 72
    .line 73
    .line 74
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 77
    .line 78
    .line 79
    :goto_2
    return-void
.end method
