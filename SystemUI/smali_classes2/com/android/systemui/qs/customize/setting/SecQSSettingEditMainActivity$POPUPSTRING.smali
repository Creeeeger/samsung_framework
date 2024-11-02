.class public final enum Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POPUPSTRING"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;


# instance fields
.field private final first:I

.field private final second:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 2
    .line 3
    const-string v1, "BRIGHTNESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const v3, 0x7f130d3c

    .line 7
    .line 8
    .line 9
    const v4, 0x7f130d41

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;-><init>(Ljava/lang/String;III)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 16
    .line 17
    const-string v2, "DEVICEMEDIA"

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const v5, 0x7f130d40

    .line 21
    .line 22
    .line 23
    const v6, 0x7f130d3d

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v5, v6}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;-><init>(Ljava/lang/String;III)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 30
    .line 31
    const-string v3, "MULTISIM"

    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    invoke-direct {v2, v3, v5, v4, v6}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;-><init>(Ljava/lang/String;III)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 38
    .line 39
    const-string v5, "HIDE_SMART_VIEW_LARGE_TILE"

    .line 40
    .line 41
    const/4 v7, 0x3

    .line 42
    invoke-direct {v3, v5, v7, v4, v6}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;-><init>(Ljava/lang/String;III)V

    .line 43
    .line 44
    .line 45
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->$VALUES:[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 50
    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->first:I

    .line 5
    .line 6
    iput p4, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->second:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->$VALUES:[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getFirst()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->first:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSecond()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->second:I

    .line 2
    .line 3
    return p0
.end method
