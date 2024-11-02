.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

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
    iget-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    .line 4
    .line 5
    sget-object v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2$WhenMappings;->$EnumSwitchMapping$0:[I

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
    if-eq p1, v1, :cond_2

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq p1, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq p1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 27
    .line 28
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 29
    .line 30
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 31
    .line 32
    invoke-direct {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 42
    .line 43
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 44
    .line 45
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 46
    .line 47
    invoke-direct {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 57
    .line 58
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 59
    .line 60
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 61
    .line 62
    invoke-direct {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method
