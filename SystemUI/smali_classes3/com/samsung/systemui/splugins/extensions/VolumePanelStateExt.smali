.class public final Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAodVolumePanel()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic isAODVolumePanel$annotations(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static final isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static final isDualViewEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x15

    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v0, 0x3

    .line 23
    invoke-static {p0, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    const/16 v0, 0x16

    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move p0, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    move p0, v2

    .line 41
    :goto_1
    if-eqz p0, :cond_3

    .line 42
    .line 43
    move v1, v2

    .line 44
    :cond_3
    return v1
.end method

.method public static synthetic isDualViewEnabled$annotations(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    move-object v0, p1

    .line 20
    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v0, p2, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    :goto_1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 36
    .line 37
    return-object p1
.end method

.method public final isRowVisible(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method
