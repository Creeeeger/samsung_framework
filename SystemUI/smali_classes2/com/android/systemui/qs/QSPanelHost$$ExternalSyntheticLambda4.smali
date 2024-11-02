.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSPanelHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSPanelHost;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    .line 24
    .line 25
    invoke-interface {v3, v2, p1, v0}, Lcom/android/systemui/qs/QSHost;->createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {v1, p1, v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanelHost;->addCallbackAndInit(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-interface {p0, v1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-object v1

    .line 43
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    .line 44
    .line 45
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 46
    .line 47
    new-instance v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    .line 60
    .line 61
    invoke-interface {p0, v1, p1, v2}, Lcom/android/systemui/qs/QSHost;->createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
