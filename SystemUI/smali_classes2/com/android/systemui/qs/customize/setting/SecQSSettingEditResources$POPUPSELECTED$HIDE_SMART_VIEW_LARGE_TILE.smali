.class final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$HIDE_SMART_VIEW_LARGE_TILE;
.super Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HIDE_SMART_VIEW_LARGE_TILE"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final getSelectedIdx()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "hide_smart_view_large_tile_on_panel"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_HIDE_TILE_FROM_BAR:Z

    .line 2
    .line 3
    return p0
.end method

.method public final updateValue(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    const-string v0, "hide_smart_view_large_tile_on_panel"

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
