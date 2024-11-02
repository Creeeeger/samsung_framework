.class public final enum Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/ConnectivityManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectivityTypeExt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;


# instance fields
.field private final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 7

    .line 1
    sget-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 2
    .line 3
    sget-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 4
    .line 5
    sget-object v2, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 6
    .line 7
    sget-object v3, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 8
    .line 9
    sget-object v4, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 10
    .line 11
    sget-object v5, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 12
    .line 13
    sget-object v6, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smvalueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->valueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "TYPE_NONE"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 11
    .line 12
    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 13
    .line 14
    const-string v1, "TYPE_MOBILE"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 21
    .line 22
    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 23
    .line 24
    const-string v1, "TYPE_WIFI"

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 31
    .line 32
    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    const/16 v2, 0xb

    .line 36
    .line 37
    const-string v3, "TYPE_MOBILE_IMS"

    .line 38
    .line 39
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 43
    .line 44
    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    const/16 v2, 0xc

    .line 48
    .line 49
    const-string v3, "TYPE_MOBILE_CBS"

    .line 50
    .line 51
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 55
    .line 56
    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 57
    .line 58
    const/4 v1, 0x5

    .line 59
    const/16 v2, 0x1b

    .line 60
    .line 61
    const-string v3, "TYPE_MOBILE_XCAP"

    .line 62
    .line 63
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 67
    .line 68
    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 69
    .line 70
    const/4 v1, 0x6

    .line 71
    const/16 v2, 0xf

    .line 72
    .line 73
    const-string v3, "TYPE_MOBILE_EMERGENCY"

    .line 74
    .line 75
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 79
    .line 80
    invoke-static {}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->$values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->$VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 85
    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    .line 5
    .line 6
    return-void
.end method

.method private static valueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 6

    .line 2
    sget-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 3
    invoke-static {}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    iget v5, v4, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 1

    .line 1
    const-class v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    return-object p0
.end method

.method public static values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->$VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    .line 2
    .line 3
    return p0
.end method
