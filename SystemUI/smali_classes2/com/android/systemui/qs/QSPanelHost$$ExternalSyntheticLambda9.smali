.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSPanelHost;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSPanelHost;Ljava/lang/String;Lcom/android/systemui/qs/bar/TileHostable;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSPanelHost;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/List;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    .line 14
    .line 15
    check-cast p1, Lcom/android/systemui/qs/bar/TileHostable;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/android/systemui/qs/bar/TileHostable;->removeAllTiles()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;

    .line 24
    .line 25
    invoke-direct {v2, v0, p0, p1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/qs/QSPanelHost;Ljava/lang/String;Lcom/android/systemui/qs/bar/TileHostable;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lcom/android/systemui/qs/bar/TileHostable;

    .line 39
    .line 40
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ": tile[ "

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 59
    .line 60
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, " ]: record: "

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "QSPanelHost"

    .line 80
    .line 81
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanelHost;->addCallbackAndInit(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/bar/TileHostable;->addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
