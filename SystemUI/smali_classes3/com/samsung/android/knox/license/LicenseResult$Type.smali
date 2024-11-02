.class public final enum Lcom/samsung/android/knox/license/LicenseResult$Type;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/LicenseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/license/LicenseResult$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;


# instance fields
.field status:I


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 12
    .line 13
    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 2
    .line 3
    const-string v1, "ELM_ACTIVATION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x320

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 14
    .line 15
    const-string v1, "ELM_VALIDATION"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/16 v4, 0x321

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 26
    .line 27
    const-string v1, "ELM_DEACTIVATION"

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/16 v5, 0x322

    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 36
    .line 37
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 38
    .line 39
    const-string v1, "KLM_ACTIVATION"

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 46
    .line 47
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 48
    .line 49
    const-string v1, "KLM_VALIDATION"

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 56
    .line 57
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 58
    .line 59
    const-string v1, "KLM_DEACTIVATION"

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 66
    .line 67
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 68
    .line 69
    const/4 v1, 0x6

    .line 70
    const/16 v2, -0x64

    .line 71
    .line 72
    const-string v3, "UNDEFINED"

    .line 73
    .line 74
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 78
    .line 79
    invoke-static {}, Lcom/samsung/android/knox/license/LicenseResult$Type;->$values()[Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 84
    .line 85
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
    iput p3, p0, Lcom/samsung/android/knox/license/LicenseResult$Type;->status:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromElmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/license/LicenseResult$Type;->values()[Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 30
    .line 31
    return-object p0
.end method

.method public static fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/license/LicenseResult$Type;->values()[Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 30
    .line 31
    return-object p0
.end method

.method public static synthetic lambda$fromElmStatus$0(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z
    .locals 1

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/license/LicenseResult$Type;->status:I

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "ELM"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static synthetic lambda$fromKlmStatus$1(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z
    .locals 1

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/license/LicenseResult$Type;->status:I

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "KLM"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/knox/license/LicenseResult$Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 8
    .line 9
    return-object v0
.end method
