.class public final enum Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LSOItemText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LSOTextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;


# instance fields
.field public final nativeVal:F


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x3f59999a    # 0.85f

    .line 5
    .line 6
    .line 7
    const-string v3, "TINY"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 13
    .line 14
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const v2, 0x3f6e147b    # 0.93f

    .line 18
    .line 19
    .line 20
    const-string v3, "SMALL"

    .line 21
    .line 22
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 26
    .line 27
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    .line 32
    const-string v3, "NORMAL"

    .line 33
    .line 34
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 38
    .line 39
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    const v2, 0x3fa66666    # 1.3f

    .line 43
    .line 44
    .line 45
    const-string v3, "LARGE"

    .line 46
    .line 47
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 51
    .line 52
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 53
    .line 54
    const/4 v1, 0x4

    .line 55
    const v2, 0x3fe66666    # 1.8f

    .line 56
    .line 57
    .line 58
    const-string v3, "HUGE"

    .line 59
    .line 60
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 64
    .line 65
    invoke-static {}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->$values()[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->$VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 70
    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->$VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 8
    .line 9
    return-object v0
.end method
