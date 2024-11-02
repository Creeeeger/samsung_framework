.class public final synthetic Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qp/ViewPagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/ViewPagerAdapter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/ViewPagerAdapter;

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
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "ViewPagerAdapter"

    .line 4
    .line 5
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/ViewPagerAdapter;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 21
    .line 22
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBrightnessBlocked()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const-string p0, "Subscreen Brightness tile not available by KnoxStateMonitor."

    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->subRoomButtonListener:Lcom/android/systemui/qp/ViewPagerAdapter$SubRoomButtonListener;

    .line 37
    .line 38
    check-cast p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    .line 39
    .line 40
    const/4 p1, 0x3

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->setSubscreenSettings(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackButton:Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    new-instance v0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "QPBE2006"

    .line 57
    .line 58
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/ViewPagerAdapter;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 72
    .line 73
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isFlashlightTileBlocked()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    const-string p0, "Subscreen Flashlight tile not available by KnoxStateMonitor."

    .line 82
    .line 83
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->subRoomButtonListener:Lcom/android/systemui/qp/ViewPagerAdapter$SubRoomButtonListener;

    .line 88
    .line 89
    check-cast p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const-string p1, "SubroomQuickSettingsBaseView"

    .line 95
    .line 96
    const-string v0, "isFlashLightButtonClicked: "

    .line 97
    .line 98
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 102
    .line 103
    if-eqz p0, :cond_2

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->startFlashActivity()V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_2
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
