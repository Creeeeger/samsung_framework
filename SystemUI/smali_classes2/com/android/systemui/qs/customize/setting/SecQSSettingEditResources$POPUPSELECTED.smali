.class public abstract enum Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$BRIGHTNESS;,
        Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$DEVICEMEDIA;,
        Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$HIDE_SMART_VIEW_LARGE_TILE;,
        Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$MULTISIM;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

.field public static final Companion:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$Companion;


# instance fields
.field public mContext:Landroid/content/Context;

.field public multiSIMController:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field public tunerService:Lcom/android/systemui/tuner/TunerService;

.field public updateSALog:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$BRIGHTNESS;

    .line 2
    .line 3
    const-string v1, "BRIGHTNESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$BRIGHTNESS;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$DEVICEMEDIA;

    .line 10
    .line 11
    const-string v2, "DEVICEMEDIA"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$DEVICEMEDIA;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$MULTISIM;

    .line 18
    .line 19
    const-string v3, "MULTISIM"

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$MULTISIM;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$HIDE_SMART_VIEW_LARGE_TILE;

    .line 26
    .line 27
    const-string v4, "HIDE_SMART_VIEW_LARGE_TILE"

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$HIDE_SMART_VIEW_LARGE_TILE;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->$VALUES:[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 38
    .line 39
    new-instance v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$Companion;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->Companion:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$Companion;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->$VALUES:[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract getSelectedIdx()I
.end method

.method public final getTunerService()Lcom/android/systemui/tuner/TunerService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract updateValue(Z)V
.end method
