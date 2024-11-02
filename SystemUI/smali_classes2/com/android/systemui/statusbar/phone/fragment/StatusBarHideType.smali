.class public final enum Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

.field public static final enum BOUNCER:Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

.field public static final enum NULL:Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

.field public static final enum PANEL_OPEN:Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 2
    .line 3
    const-string v1, "NULL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;->NULL:Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 12
    .line 13
    const-string v2, "PANEL_OPEN"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;->PANEL_OPEN:Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 22
    .line 23
    const-string v3, "SECURE_CAMERA"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 30
    .line 31
    const-string v4, "DREAM"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 38
    .line 39
    const-string v5, "TRANSITION_FROM_LOCKSCREEN"

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 46
    .line 47
    const-string v6, "BOUNCER"

    .line 48
    .line 49
    const/4 v7, 0x5

    .line 50
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    sput-object v5, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;->BOUNCER:Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 54
    .line 55
    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;->$VALUES:[Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 60
    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;->$VALUES:[Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/statusbar/phone/fragment/StatusBarHideType;

    .line 8
    .line 9
    return-object v0
.end method
