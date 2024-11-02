.class final enum Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;


# instance fields
.field private final mLogId:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    .line 2
    .line 3
    const-string v1, "SUBSCREEN_SCREENRECORDER_TILE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "com.samsung.android.app.smartcapture"

    .line 7
    .line 8
    const-string v4, "QPBE2021"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    .line 14
    .line 15
    const-string v2, "SUBSCREEN_MODES_TILE"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const-string v4, "com.samsung.android.app.routines"

    .line 19
    .line 20
    const-string v5, "QPBE2022"

    .line 21
    .line 22
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    filled-new-array {v0, v1}, [Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->$VALUES:[Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    .line 30
    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->mLogId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->$VALUES:[Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getLogId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->mLogId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasSamePackageName(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
