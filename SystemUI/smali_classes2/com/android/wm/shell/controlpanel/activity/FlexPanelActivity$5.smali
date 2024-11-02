.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBaseStateChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBaseDeviceState:I

    .line 4
    .line 5
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceState:I

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->-$$Nest$monTableModeChanged(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDeviceState:I

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBaseDeviceState:I

    .line 12
    .line 13
    if-ne p1, v3, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne p1, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v1, v2

    .line 20
    :goto_0
    if-nez v1, :cond_2

    .line 21
    .line 22
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->-$$Nest$monTableModeChanged(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method
