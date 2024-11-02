.class public final Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private volumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->volumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$setStreamType$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)V

    .line 6
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$getBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$setBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)V

    .line 7
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$getIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$setIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)V

    .line 8
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$getStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$setStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)V

    .line 9
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$getLongMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$setLongMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)V

    .line 10
    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->volumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    return-void
.end method


# virtual methods
.method public final audibleLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->volumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 2
    .line 3
    return-object p0
.end method

.method public final dualBtDeviceAddress(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final dualBtDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final earProtectionLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final iconType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isActiveShow(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isDynamic(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isIconClickable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isIconEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isMuted(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isRoutedToBluetooth(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ROUTED_TO_BLUETOOTH:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isSliderEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isTracking(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isVisible(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final level(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final levelMax(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final levelMin(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final nameRes(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final priority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final realLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final remoteLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->volumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$getBoolMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->volumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$getIntMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->volumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 6
    .line 7
    invoke-static {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$getLongMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->volumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$setStreamType$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->volumePanelRow:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->access$getStringMap$p(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final smartViewLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final userAttemptTime(J)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->USER_ATTEMPT_TIME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
