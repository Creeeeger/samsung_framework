.class public final Lcom/android/systemui/qs/bar/BarFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBottomLargeTileBarProvider:Ljavax/inject/Provider;

.field public final mBrightnessBarProvider:Ljavax/inject/Provider;

.field public final mBrightnessMediaDevicesBarProvider:Ljavax/inject/Provider;

.field public final mMediaDevicesBarProvider:Ljavax/inject/Provider;

.field public final mMultiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

.field public final mPagedTileLayoutBarProvider:Ljavax/inject/Provider;

.field public final mQSMediaPlayerBarProvider:Ljavax/inject/Provider;

.field public final mSecurityFooterBarProvider:Ljavax/inject/Provider;

.field public final mTopLargeTileBarProvider:Ljavax/inject/Provider;

.field public final mVideoCallMicModeBarProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMediaDevicesBarProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMultiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessBarProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessMediaDevicesBarProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/bar/BarFactory;->mQSMediaPlayerBarProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/qs/bar/BarFactory;->mTopLargeTileBarProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/qs/bar/BarFactory;->mPagedTileLayoutBarProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBottomLargeTileBarProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/qs/bar/BarFactory;->mSecurityFooterBarProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/qs/bar/BarFactory;->mVideoCallMicModeBarProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final createBarItem(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/bar/BarFactory$1;->$SwitchMap$com$android$systemui$qs$bar$BarType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mVideoCallMicModeBarProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mSecurityFooterBarProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    move-object v0, p0

    .line 31
    check-cast v0, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBottomLargeTileBarProvider:Ljavax/inject/Provider;

    .line 35
    .line 36
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    move-object v0, p0

    .line 41
    check-cast v0, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mPagedTileLayoutBarProvider:Ljavax/inject/Provider;

    .line 45
    .line 46
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    move-object v0, p0

    .line 51
    check-cast v0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mTopLargeTileBarProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    move-object v0, p0

    .line 61
    check-cast v0, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mQSMediaPlayerBarProvider:Ljavax/inject/Provider;

    .line 65
    .line 66
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    move-object v0, p0

    .line 71
    check-cast v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMultiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

    .line 75
    .line 76
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    move-object v0, p0

    .line 81
    check-cast v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMediaDevicesBarProvider:Ljavax/inject/Provider;

    .line 85
    .line 86
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    move-object v0, p0

    .line 91
    check-cast v0, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessMediaDevicesBarProvider:Ljavax/inject/Provider;

    .line 95
    .line 96
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    move-object v0, p0

    .line 101
    check-cast v0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessBarProvider:Ljavax/inject/Provider;

    .line 105
    .line 106
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    move-object v0, p0

    .line 111
    check-cast v0, Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 112
    .line 113
    :goto_0
    :pswitch_a
    return-object v0

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public final createBarItems(Z)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/systemui/qs/bar/BarType;->values()[Lcom/android/systemui/qs/bar/BarType;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda1;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/BarFactory;Ljava/util/ArrayList;Z)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
