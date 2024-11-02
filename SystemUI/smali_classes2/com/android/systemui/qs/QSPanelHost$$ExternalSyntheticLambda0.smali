.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 8
    .line 9
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 13
    .line 14
    check-cast p1, Lcom/android/systemui/qs/bar/TileHostable;

    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_2
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 18
    .line 19
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_3
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 23
    .line 24
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_4
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 28
    .line 29
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_5
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 33
    .line 34
    new-instance p0, Landroid/metrics/LogMaker;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_6
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 54
    .line 55
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_7
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 59
    .line 60
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 61
    .line 62
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :goto_0
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 68
    .line 69
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 70
    .line 71
    return-object p0

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
