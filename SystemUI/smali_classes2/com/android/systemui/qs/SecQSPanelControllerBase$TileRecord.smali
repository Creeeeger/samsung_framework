.class public final Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;
.super Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public callback:Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

.field public scanState:Z

.field public final tile:Lcom/android/systemui/plugins/qs/QSTile;

.field public final tileView:Lcom/android/systemui/plugins/qs/QSTileView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 8
    .line 9
    return-void
.end method
