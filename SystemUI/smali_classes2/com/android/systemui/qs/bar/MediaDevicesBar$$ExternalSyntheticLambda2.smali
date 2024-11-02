.class public final synthetic Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "QUICK_PANEL_LAYOUT"

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "QPPE1006"

    .line 17
    .line 18
    invoke-static {p1, v1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string/jumbo v0, "startMediaActivity()"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    sget-object v4, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    iget-object v6, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/media/MediaOutputHelper;->show(Landroid/content/Context;ZLcom/android/systemui/media/MediaType;Ljava/lang/String;Landroid/widget/TextView;Landroid/media/session/MediaSession$Token;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 50
    .line 51
    const-string v1, "QPPE1005"

    .line 52
    .line 53
    invoke-static {p1, v1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mCustomDeviceControlsController:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    .line 61
    .line 62
    check-cast p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->start()V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
