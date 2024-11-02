.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ljava/util/List;

    .line 10
    .line 11
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 12
    .line 13
    check-cast p1, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    xor-int/lit8 p0, p0, 0x1

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 22
    .line 23
    if-eq v0, p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->showBar(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lcom/android/systemui/qs/QSPanelHost;

    .line 32
    .line 33
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 36
    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    .line 46
    .line 47
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lcom/android/internal/logging/MetricsLogger;

    .line 54
    .line 55
    check-cast p1, Landroid/metrics/LogMaker;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Ljava/util/ArrayList;

    .line 64
    .line 65
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
