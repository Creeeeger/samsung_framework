.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$setClickListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$setClickListener$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$setClickListener$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

    .line 4
    .line 5
    sget-object v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$setClickListener$1$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq p1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$setClickListener$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 24
    .line 25
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 26
    .line 27
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 28
    .line 29
    invoke-direct {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$setClickListener$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 39
    .line 40
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 41
    .line 42
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 43
    .line 44
    invoke-direct {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method
