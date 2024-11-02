.class public final Lcom/google/zxing/aztec/encoder/State;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;


# instance fields
.field public final binaryShiftByteCount:I

.field public final bitCount:I

.field public final mode:I

.field public final token:Lcom/google/zxing/aztec/encoder/Token;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    .line 2
    .line 3
    sget-object v1, Lcom/google/zxing/aztec/encoder/Token;->EMPTY:Lcom/google/zxing/aztec/encoder/SimpleToken;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/aztec/encoder/Token;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 3
    .line 4
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 5
    .line 6
    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 7
    .line 8
    if-eq v2, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne v2, v0, :cond_1

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 14
    .line 15
    aget-object v0, v0, v2

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aget v0, v0, v2

    .line 19
    .line 20
    const v4, 0xffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v4, v0

    .line 24
    shr-int/lit8 v0, v0, 0x10

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v5, Lcom/google/zxing/aztec/encoder/SimpleToken;

    .line 30
    .line 31
    invoke-direct {v5, v1, v4, v0}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    .line 32
    .line 33
    .line 34
    add-int/2addr v3, v0

    .line 35
    move-object v1, v5

    .line 36
    :cond_1
    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 37
    .line 38
    if-eqz p0, :cond_4

    .line 39
    .line 40
    const/16 v0, 0x1f

    .line 41
    .line 42
    if-ne p0, v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/16 v0, 0x3e

    .line 46
    .line 47
    if-ne p0, v0, :cond_3

    .line 48
    .line 49
    const/16 v0, 0x9

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/16 v0, 0x8

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    :goto_0
    const/16 v0, 0x12

    .line 56
    .line 57
    :goto_1
    new-instance v4, Lcom/google/zxing/aztec/encoder/State;

    .line 58
    .line 59
    add-int/lit8 p0, p0, 0x1

    .line 60
    .line 61
    add-int/2addr v3, v0

    .line 62
    invoke-direct {v4, v1, v2, p0, v3}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 63
    .line 64
    .line 65
    iget p0, v4, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 66
    .line 67
    const/16 v0, 0x81e

    .line 68
    .line 69
    if-ne p0, v0, :cond_5

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    invoke-virtual {v4, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :cond_5
    return-object v4
.end method

.method public final endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sub-int/2addr p1, v0

    .line 7
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;

    .line 13
    .line 14
    invoke-direct {v2, v1, p1, v0}, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/google/zxing/aztec/encoder/State;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 21
    .line 22
    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 23
    .line 24
    invoke-direct {p1, v2, p0, v0, v1}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public final isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget v1, p1, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 8
    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    shr-int/lit8 v0, v0, 0x10

    .line 12
    .line 13
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 14
    .line 15
    add-int/2addr v1, v0

    .line 16
    iget v0, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    if-le p0, v0, :cond_1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0xa

    .line 27
    .line 28
    :cond_1
    iget p0, p1, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 29
    .line 30
    if-gt v1, p0, :cond_2

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method

.method public final latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 4
    .line 5
    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 6
    .line 7
    if-eq p1, p0, :cond_0

    .line 8
    .line 9
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 10
    .line 11
    aget-object p0, v2, p0

    .line 12
    .line 13
    aget p0, p0, p1

    .line 14
    .line 15
    const v2, 0xffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v2, p0

    .line 19
    shr-int/lit8 p0, p0, 0x10

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/google/zxing/aztec/encoder/SimpleToken;

    .line 25
    .line 26
    invoke-direct {v3, v1, v2, p0}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    .line 27
    .line 28
    .line 29
    add-int/2addr v0, p0

    .line 30
    move-object v1, v3

    .line 31
    :cond_0
    const/4 p0, 0x2

    .line 32
    if-ne p1, p0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x5

    .line 37
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/google/zxing/aztec/encoder/SimpleToken;

    .line 41
    .line 42
    invoke-direct {v2, v1, p2, p0}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Lcom/google/zxing/aztec/encoder/State;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    add-int/2addr v0, p0

    .line 49
    invoke-direct {p2, v2, p1, v1, v0}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 50
    .line 51
    .line 52
    return-object p2
.end method

.method public final shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 4
    .line 5
    if-ne v2, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 11
    .line 12
    aget-object v3, v3, v2

    .line 13
    .line 14
    aget p1, v3, p1

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/google/zxing/aztec/encoder/SimpleToken;

    .line 22
    .line 23
    invoke-direct {v4, v3, p1, v0}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/google/zxing/aztec/encoder/SimpleToken;

    .line 27
    .line 28
    invoke-direct {p1, v4, p2, v1}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Lcom/google/zxing/aztec/encoder/State;

    .line 32
    .line 33
    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 34
    .line 35
    add-int/2addr p0, v0

    .line 36
    add-int/2addr p0, v1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-direct {p2, p1, v2, v0, p0}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 39
    .line 40
    .line 41
    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "%s bits=%d bytes=%d"

    .line 24
    .line 25
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
